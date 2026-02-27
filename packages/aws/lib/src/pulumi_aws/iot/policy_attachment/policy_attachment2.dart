import 'package:pulumi/pulumi.dart';
import 'policy_attachment_args2.dart';

/// Provides an IoT policy attachment.
class PolicyAttachment2 extends CustomResource {
  /// The name of the policy to attach.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The identity to which the policy is attached.
  late final Output<String> target;

  PolicyAttachment2(
    String name, {
    PolicyAttachmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/policyAttachment:PolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.target = registerOutput<String>('target');
  }
}
