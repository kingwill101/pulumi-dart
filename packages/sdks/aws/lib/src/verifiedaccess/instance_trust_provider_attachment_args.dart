// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedaccess_instance_trust_provider_attachment_instance_trust_provider_attachment_args_doc}
/// The set of arguments for InstanceTrustProviderAttachment.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_instance_trust_provider_attachment_instance_trust_provider_attachment_args_doc}
class InstanceTrustProviderAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Verified Access instance to attach the Trust Provider to.
  final pulumi.Input<String> verifiedaccessInstanceId;
  /// The ID of the Verified Access trust provider.
  final pulumi.Input<String> verifiedaccessTrustProviderId;

  /// Creates a new [InstanceTrustProviderAttachmentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verifiedaccessInstanceId] The ID of the Verified Access instance to attach the Trust Provider to.
  /// [verifiedaccessTrustProviderId] The ID of the Verified Access trust provider.
  InstanceTrustProviderAttachmentArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> verifiedaccessInstanceId,
    required pulumi.Output<String> verifiedaccessTrustProviderId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      verifiedaccessInstanceId = pulumi.Input.asInput<String>(verifiedaccessInstanceId),
      verifiedaccessTrustProviderId = pulumi.Input.asInput<String>(verifiedaccessTrustProviderId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'verifiedaccessInstanceId': verifiedaccessInstanceId,
      'verifiedaccessTrustProviderId': verifiedaccessTrustProviderId,
    };
  }

  factory InstanceTrustProviderAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceTrustProviderAttachmentArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      verifiedaccessInstanceId: pulumi.Output.create<String>(map['verifiedaccessInstanceId'] as String),
      verifiedaccessTrustProviderId: pulumi.Output.create<String>(map['verifiedaccessTrustProviderId'] as String),
    );
  }
}

