// ignore_for_file: unused_element, unnecessary_cast

/// Message that should be set in case of a Deny Action.
class GoogleCloudApigeeV1SecurityActionDeny {
  /// Optional. The HTTP response code if the Action = DENY.
  final int? responseCode;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionDeny].
  /// [responseCode] Optional. The HTTP response code if the Action = DENY.
  GoogleCloudApigeeV1SecurityActionDeny({
    this.responseCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final responseCodeValue = responseCode;
    if (responseCodeValue != null) {
      map['responseCode'] = responseCodeValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1SecurityActionDeny.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionDeny(
      responseCode:
          map['responseCode'] == null ? null : map['responseCode'] as int,
    );
  }
}
