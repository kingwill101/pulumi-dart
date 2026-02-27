// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InstanceTrustProviderAttachment.
class InstanceTrustProviderAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the Verified Access instance to attach the Trust Provider to.
  final pulumi.Input<String> verifiedaccessInstanceId;

  /// The ID of the Verified Access trust provider.
  final pulumi.Input<String> verifiedaccessTrustProviderId;

  InstanceTrustProviderAttachmentArgs({
    this.region,
    required this.verifiedaccessInstanceId,
    required this.verifiedaccessTrustProviderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['verifiedaccessInstanceId'] = verifiedaccessInstanceId;
    map['verifiedaccessTrustProviderId'] = verifiedaccessTrustProviderId;
    return map;
  }

  factory InstanceTrustProviderAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceTrustProviderAttachmentArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      verifiedaccessInstanceId:
          pulumi.Input.asInput<String>(map['verifiedaccessInstanceId']),
      verifiedaccessTrustProviderId:
          pulumi.Input.asInput<String>(map['verifiedaccessTrustProviderId']),
    );
  }
}
