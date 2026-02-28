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
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory GroupSseConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupSseConfiguration(
      customerManagedKeyEnabled: map['customerManagedKeyEnabled'] == null ? null : map['customerManagedKeyEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}

