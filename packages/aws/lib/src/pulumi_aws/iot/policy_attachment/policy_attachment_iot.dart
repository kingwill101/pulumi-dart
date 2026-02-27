import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_iot_args.dart';

/// Provides an IoT policy attachment.
class PolicyAttachmentIot extends pulumi.CustomResource {
  /// The name of the policy to attach.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The identity to which the policy is attached.
  late final pulumi.Output<String> target;

  PolicyAttachmentIot(
    String name, {
    PolicyAttachmentIotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.target = registerOutput<String>('target');
  }
}
