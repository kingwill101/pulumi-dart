// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../reservation_replication_status_error/reservation_replication_status_error.dart';

class ReservationReplicationStatus {
  /// (Output)
  /// The last error encountered while trying to replicate changes from the primary to the
  /// secondary. This field is only available if the replication has not succeeded since.
  /// Structure is documented below.
  final List<ReservationReplicationStatusError>? errors;

  /// (Output)
  /// The time at which the last error was encountered while trying to replicate changes from
  /// the primary to the secondary. This field is only available if the replication has not
  /// succeeded since.
  final String? lastErrorTime;

  /// (Output)
  /// A timestamp corresponding to the last change on the primary that was successfully
  /// replicated to the secondary.
  final String? lastReplicationTime;

  ReservationReplicationStatus({
    this.errors,
    this.lastErrorTime,
    this.lastReplicationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final errorsValue = errors;
    if (errorsValue != null) {
      map['errors'] = pulumi.Input.encodeList<ReservationReplicationStatusError,
          Map<String, dynamic>>(errorsValue, (value) => value.toMap());
    }
    final lastErrorTimeValue = lastErrorTime;
    if (lastErrorTimeValue != null) {
      map['lastErrorTime'] = lastErrorTimeValue;
    }
    final lastReplicationTimeValue = lastReplicationTime;
    if (lastReplicationTimeValue != null) {
      map['lastReplicationTime'] = lastReplicationTimeValue;
    }
    return map;
  }

  factory ReservationReplicationStatus.fromMap(Map<String, dynamic> map) {
    return ReservationReplicationStatus(
      errors: map['errors'] == null
          ? null
          : pulumi.Input.decodeList<ReservationReplicationStatusError>(
              map['errors'],
              (value) => ReservationReplicationStatusError.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastErrorTime:
          map['lastErrorTime'] == null ? null : map['lastErrorTime'] as String,
      lastReplicationTime: map['lastReplicationTime'] == null
          ? null
          : map['lastReplicationTime'] as String,
    );
  }
}
