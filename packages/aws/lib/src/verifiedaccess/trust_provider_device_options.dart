// ignore_for_file: unused_element, unnecessary_cast

class TrustProviderDeviceOptions {
  final String? tenantId;

  /// Creates a new [TrustProviderDeviceOptions].
  /// [tenantId] Optional.
  TrustProviderDeviceOptions({this.tenantId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tenantId': ?tenantId};
  }

  factory TrustProviderDeviceOptions.fromMap(Map<String, dynamic> map) {
    return TrustProviderDeviceOptions(
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}
