import 'package:pulumi/pulumi.dart' as pulumi;

/// The launch type on which to run your service. For more information, see [Amazon ECS Launch Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) in the *Amazon Elastic Container Service Developer Guide*.
enum LaunchType implements pulumi.PulumiEnum<String> {
  eC2("EC2"),
  eXTERNAL("EXTERNAL"),
  fARGATE("FARGATE");

  const LaunchType(this.wireValue);
  @override
  final String wireValue;

  static LaunchType fromValue(String value) {
    for (final item in LaunchType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LaunchType value: $value');
  }
}
