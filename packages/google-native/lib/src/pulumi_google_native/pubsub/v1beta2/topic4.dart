import 'package:pulumi/pulumi.dart' hide Config;
import 'topic_args3.dart';

/// Creates the given topic with the given name.
class Topic4 extends CustomResource {
  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> topicId;

  Topic4(
    String name, {
    TopicArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta2:Topic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.topicId = registerOutput<String>('topicId');
  }
}
