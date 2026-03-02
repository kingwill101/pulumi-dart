// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceTrustProviderAttachment resources.
class InstanceTrustProviderAttachmentState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Verified Access instance to attach the Trust Provider to.
  final pulumi.Input<String>? verifiedaccessInstanceId;
  /// The ID of the Verified Access trust provider.
  final pulumi.Input<String>? verifiedaccessTrustProviderId;

  /// Creates a new [InstanceTrustProviderAttachmentState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verifiedaccessInstanceId] The ID of the Verified Access instance to attach the Trust Provider to.
  /// [verifiedaccessTrustProviderId] The ID of the Verified Access trust provider.
  InstanceTrustProviderAttachmentState({
    this.region,
    this.verifiedaccessInstanceId,
    this.verifiedaccessTrustProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'verifiedaccessInstanceId': ?verifiedaccessInstanceId,
      'verifiedaccessTrustProviderId': ?verifiedaccessTrustProviderId,
    };
  }

  factory InstanceTrustProviderAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceTrustProviderAttachmentState(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      verifiedaccessInstanceId: map['verifiedaccessInstanceId'] == null ? null : ((map['verifiedaccessInstanceId'] as String).input()).input(),
      verifiedaccessTrustProviderId: map['verifiedaccessTrustProviderId'] == null ? null : ((map['verifiedaccessTrustProviderId'] as String).input()).input(),
    );
  }
}

