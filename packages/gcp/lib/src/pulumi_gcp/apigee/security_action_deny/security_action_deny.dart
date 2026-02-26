// ignore_for_file: unused_element, unnecessary_cast

class SecurityActionDeny {
  /// The HTTP response code if the Action = DENY.
  final int? responseCode;

  SecurityActionDeny({
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

  factory SecurityActionDeny.fromMap(Map<String, dynamic> map) {
    return SecurityActionDeny(
      responseCode:
          map['responseCode'] == null ? null : map['responseCode'] as int,
    );
  }
}
