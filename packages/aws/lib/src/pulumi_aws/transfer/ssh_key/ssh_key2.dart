import 'package:pulumi/pulumi.dart';
import 'ssh_key_args2.dart';

/// Provides a AWS Transfer User SSH Key resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer SSH Public Key using the `server_id` and `user_name` and `ssh_public_key_id` separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/sshKey:SshKey bar s-12345678/test-username/key-12345
/// ```
class SshKey2 extends CustomResource {
  /// The public key portion of an SSH key pair.
  late final Output<String> body;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Server ID of the Transfer Server (e.g., `s-12345678`)
  late final Output<String> serverId;
  late final Output<String> sshKeyId;

  /// The name of the user account that is assigned to one or more servers.
  late final Output<String> userName;

  SshKey2(
    String name, {
    SshKeyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/sshKey:SshKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.body = registerOutput<String>('body');
    this.region = registerOutput<String>('region');
    this.serverId = registerOutput<String>('serverId');
    this.sshKeyId = registerOutput<String>('sshKeyId');
    this.userName = registerOutput<String>('userName');
  }
}
