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
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory TrustProviderSseSpecification.fromMap(Map<String, dynamic> map) {
    return TrustProviderSseSpecification(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null ? null : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}

