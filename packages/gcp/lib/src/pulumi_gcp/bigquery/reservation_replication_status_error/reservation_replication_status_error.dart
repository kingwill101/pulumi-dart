// ignore_for_file: unused_element, unnecessary_cast

class ReservationReplicationStatusError {
  /// (Output)
  /// The status code, which should be an enum value of [google.rpc.Code](https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.rpc#google.rpc.Code).
  final int? code;

  /// (Output)
  /// A developer-facing error message, which should be in English.
  final String? message;

  ReservationReplicationStatusError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory ReservationReplicationStatusError.fromMap(Map<String, dynamic> map) {
    return ReservationReplicationStatusError(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
