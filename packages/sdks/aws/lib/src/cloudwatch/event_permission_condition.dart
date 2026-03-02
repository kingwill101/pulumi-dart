// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventPermissionCondition {
  /// Key for the condition. Valid values: `aws:PrincipalOrgID`.
  final pulumi.Input<String> key;
  /// Type of condition. Value values: `StringEquals`.
  final pulumi.Input<String> type;
  /// Value for the key.
  final pulumi.Input<String> value;

  /// Creates a new [EventPermissionCondition].
  /// [key] Key for the condition. Valid values: `aws:PrincipalOrgID`.
  /// [type] Type of condition. Value values: `StringEquals`.
  /// [value] Value for the key.
  EventPermissionCondition({
    required this.key,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
      'value': value,
    };
  }

  factory EventPermissionCondition.fromMap(Map<String, dynamic> map) {
    return EventPermissionCondition(
      key: (map['key'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

