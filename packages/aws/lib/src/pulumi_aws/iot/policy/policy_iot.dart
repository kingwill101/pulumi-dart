import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_iot_args.dart';

/// Provides an IoT policy.
///
/// > **NOTE on policy versions:** Updating this resource creates a new, default policy version. If updating the resource would exceed the maximum number of versions (5), the oldest non-default version of the policy is deleted before the new policy version is created.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IoT policies using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iot/policy:Policy pubsub PubSubToAnyTopic
/// ```
class PolicyIot extends pulumi.CustomResource {
  /// The ARN assigned by AWS to this policy.
  late final pulumi.Output<String> arn;

  /// The default version of this policy.
  late final pulumi.Output<String> defaultVersionId;

  /// The name of the policy.
  late final pulumi.Output<String> name;

  /// The policy document. This is a JSON formatted string. Use the [IoT Developer Guide](http://docs.aws.amazon.com/iot/latest/developerguide/iot-policies.html) for more information on IoT Policies.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  PolicyIot(
    String name, {
    PolicyIotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultVersionId = registerOutput<String>('defaultVersionId');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
