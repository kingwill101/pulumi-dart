// ignore_for_file: unused_element, unnecessary_cast


class InstanceVerifiedAccessTrustProvider {
  /// A description for the AWS Verified Access Instance.
  final String? description;
  /// The type of device-based trust provider.
  final String? deviceTrustProviderType;
  /// The type of trust provider (user- or device-based).
  final String? trustProviderType;
  /// The type of user-based trust provider.
  final String? userTrustProviderType;
  /// The ID of the trust provider.
  final String? verifiedAccessTrustProviderId;

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
      description: map['description'] == null ? null : map['description'] as String,
      deviceTrustProviderType: map['deviceTrustProviderType'] == null ? null : map['deviceTrustProviderType'] as String,
      trustProviderType: map['trustProviderType'] == null ? null : map['trustProviderType'] as String,
      userTrustProviderType: map['userTrustProviderType'] == null ? null : map['userTrustProviderType'] as String,
      verifiedAccessTrustProviderId: map['verifiedAccessTrustProviderId'] == null ? null : map['verifiedAccessTrustProviderId'] as String,
    );
  }
}

