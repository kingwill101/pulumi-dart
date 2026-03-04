// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupSseConfiguration {
  /// Boolean flag to indicate that the CMK should be used.
  final pulumi.Input<bool>? customerManagedKeyEnabled;

  /// ARN of the KMS key to use.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [GroupSseConfiguration].
  /// [customerManagedKeyEnabled] Boolean flag to indicate that the CMK should be used.
  /// [kmsKeyArn] ARN of the KMS key to use.
  GroupSseConfiguration({this.customerManagedKeyEnabled, this.kmsKeyArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKeyEnabled': ?customerManagedKeyEnabled,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory GroupSseConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupSseConfiguration(
      customerManagedKeyEnabled: (() {
        final guardedValue = map['customerManagedKeyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
