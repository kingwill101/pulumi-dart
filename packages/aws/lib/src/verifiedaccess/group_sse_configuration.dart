// ignore_for_file: unused_element, unnecessary_cast

class GroupSseConfiguration {
  /// Boolean flag to indicate that the CMK should be used.
  final bool? customerManagedKeyEnabled;

  /// ARN of the KMS key to use.
  final String? kmsKeyArn;

  /// Creates a new [GroupSseConfiguration].
  /// [customerManagedKeyEnabled] Boolean flag to indicate that the CMK should be used.
  /// [kmsKeyArn] ARN of the KMS key to use.
  GroupSseConfiguration({
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

  factory GroupSseConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupSseConfiguration(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null
          ? null
          : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}
