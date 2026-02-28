// ignore_for_file: unused_element, unnecessary_cast

class EndpointSseSpecification {
  final bool? customerManagedKeyEnabled;
  final String? kmsKeyArn;

  /// Creates a new [EndpointSseSpecification].
  /// [customerManagedKeyEnabled] Optional.
  /// [kmsKeyArn] Optional.
  EndpointSseSpecification({
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

  factory EndpointSseSpecification.fromMap(Map<String, dynamic> map) {
    return EndpointSseSpecification(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null
          ? null
          : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
