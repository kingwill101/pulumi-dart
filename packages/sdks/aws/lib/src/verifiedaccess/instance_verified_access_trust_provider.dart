// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceVerifiedAccessTrustProvider {
  /// A description for the AWS Verified Access Instance.
  final pulumi.Input<String>? description;
  /// The type of device-based trust provider.
  final pulumi.Input<String>? deviceTrustProviderType;
  /// The type of trust provider (user- or device-based).
  final pulumi.Input<String>? trustProviderType;
  /// The type of user-based trust provider.
  final pulumi.Input<String>? userTrustProviderType;
  /// The ID of the trust provider.
  final pulumi.Input<String>? verifiedAccessTrustProviderId;

  /// Creates a new [InstanceVerifiedAccessTrustProvider].
  /// [description] A description for the AWS Verified Access Instance.
  /// [deviceTrustProviderType] The type of device-based trust provider.
  /// [trustProviderType] The type of trust provider (user- or device-based).
  /// [userTrustProviderType] The type of user-based trust provider.
  /// [verifiedAccessTrustProviderId] The ID of the trust provider.
  InstanceVerifiedAccessTrustProvider({
    this.description,
    this.deviceTrustProviderType,
    this.trustProviderType,
    this.userTrustProviderType,
    this.verifiedAccessTrustProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceTrustProviderType': ?deviceTrustProviderType,
      'trustProviderType': ?trustProviderType,
      'userTrustProviderType': ?userTrustProviderType,
      'verifiedAccessTrustProviderId': ?verifiedAccessTrustProviderId,
    };
  }

  factory InstanceVerifiedAccessTrustProvider.fromMap(Map<String, dynamic> map) {
    return InstanceVerifiedAccessTrustProvider(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      deviceTrustProviderType: map['deviceTrustProviderType'] == null ? null : ((map['deviceTrustProviderType'] as String).input()).input(),
      trustProviderType: map['trustProviderType'] == null ? null : ((map['trustProviderType'] as String).input()).input(),
      userTrustProviderType: map['userTrustProviderType'] == null ? null : ((map['userTrustProviderType'] as String).input()).input(),
      verifiedAccessTrustProviderId: map['verifiedAccessTrustProviderId'] == null ? null : ((map['verifiedAccessTrustProviderId'] as String).input()).input(),
    );
  }
}

