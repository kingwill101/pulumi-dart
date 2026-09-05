// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceTrustProviderAttachment resources.
class InstanceTrustProviderAttachmentState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the Verified Access instance to attach the Trust Provider to.
  final pulumi.Input<String?>? verifiedaccessInstanceId;
  /// The ID of the Verified Access trust provider.
  final pulumi.Input<String?>? verifiedaccessTrustProviderId;

  /// Creates a new [InstanceTrustProviderAttachmentState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verifiedaccessInstanceId] The ID of the Verified Access instance to attach the Trust Provider to.
  /// [verifiedaccessTrustProviderId] The ID of the Verified Access trust provider.
  const InstanceTrustProviderAttachmentState({
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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedaccessInstanceId: (() { final guardedValue = map['verifiedaccessInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedaccessTrustProviderId: (() { final guardedValue = map['verifiedaccessTrustProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
