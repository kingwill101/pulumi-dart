// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Single status.
class StatusItemResponse {
  /// Status name - e.g. "Active", "Failed".
  final pulumi.Input<String>? statusName;
  /// Status value. e.g. "100", or "100%".
  final pulumi.Input<String>? statusValue;

  /// Creates a new [StatusItemResponse].
  /// [statusName] Status name - e.g. "Active", "Failed".
  /// [statusValue] Status value. e.g. "100", or "100%".
  StatusItemResponse({
    this.statusName,
    this.statusValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusName': ?statusName,
      'statusValue': ?statusValue,
    };
  }

  factory StatusItemResponse.fromMap(Map<String, dynamic> map) {
    return StatusItemResponse(
      statusName: (() { final guardedValue = map['statusName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusValue: (() { final guardedValue = map['statusValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

