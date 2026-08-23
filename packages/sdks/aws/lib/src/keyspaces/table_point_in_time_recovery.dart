// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TablePointInTimeRecovery {
  /// Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  final pulumi.Input<String>? status;

  /// Creates a new [TablePointInTimeRecovery].
  /// [status] Valid values: `ENABLED`, `DISABLED`. The default value is `DISABLED`.
  const TablePointInTimeRecovery({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory TablePointInTimeRecovery.fromMap(Map<String, dynamic> map) {
    return TablePointInTimeRecovery(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
