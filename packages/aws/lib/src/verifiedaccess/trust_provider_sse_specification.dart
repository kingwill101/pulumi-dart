// ignore_for_file: unused_element, unnecessary_cast

class TrustProviderSseSpecification {
  final bool? customerManagedKeyEnabled;
  final String? kmsKeyArn;

  /// Creates a new [TrustProviderSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
  TrustProviderSseSpecification({
    this.customerManagedKeyEnabled,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerManagedKeyEnabledValue = customerManagedKeyEnabled;
    if (customerManagedKeyEnabledValue != null) {
      map['customerManagedKeyEnabled'] = customerManagedKeyEnabledValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    return map;
  }

  factory TrustProviderSseSpecification.fromMap(Map<String, dynamic> map) {
    return TrustProviderSseSpecification(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null
          ? null
          : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
