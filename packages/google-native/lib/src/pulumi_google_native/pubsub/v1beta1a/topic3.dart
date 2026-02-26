import 'package:pulumi/pulumi.dart';
import 'topic_args2.dart';

/// Creates the given topic with the given name.
class Topic3 extends CustomResource {
  /// Name of the topic.
  late final Output<String> name;

  Topic3(
    String name, {
    TopicArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:pubsub/v1beta1a:Topic',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
  }
}
