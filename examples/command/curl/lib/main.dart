import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_command/local.dart' as commandlocal;
import 'package:pulumi_random/index.dart' as random;

class CommandCurlStack extends pulumi.Stack {
  CommandCurlStack() : super() {
    final config = pulumi.Config();
    final githubToken = pulumi.Output.createSecret(
      config.require('githubToken').output(),
    );

    final rand = random.RandomString(
      's',
      args: random.RandomStringArgs(
        length: 10.output(),
        special: false.output(),
      ),
    );

    final label = commandlocal.Command(
      'label',
      args: commandlocal.CommandArgs(
        create: 'bash ./create_label.sh'.output(),
        delete: 'bash ./delete_label.sh'.output(),
        environment: pulumi.Output.tuple(rand.result, githubToken).apply((
          values,
        ) {
          return {
            'OWNER': 'pulumi',
            'REPO': 'pulumi-command',
            'NAME': values.$1,
            'GITHUB_TOKEN': values.$2,
          };
        }),
      ),
    );

    final labelUrl = label.stdout.apply((stdout) {
      final response = jsonDecode(stdout) as Map<String, dynamic>;
      return (response['url'] ?? '').toString();
    });

    registerOutputs({'labelUrl': labelUrl});
  }
}
