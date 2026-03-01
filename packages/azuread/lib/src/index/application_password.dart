// ignore_for_file: unused_element, unnecessary_cast


class ApplicationPassword {
  /// A display name for the password. Changing this field forces a new resource to be created.
  final String displayName;
  /// The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final String? endDate;
  /// (Required) The unique key ID for the generated password.
  final String? keyId;
  /// The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  final String? startDate;
  /// (Required) The generated password for the application.
  final String? value;

  /// Creates a new [ApplicationPassword].
  /// [displayName] A display name for the password. Changing this field forces a new resource to be created.
  /// [endDate] The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [keyId] (Required) The unique key ID for the generated password.
  /// [startDate] The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used.  Changing this field forces a new resource to be created.
  /// [value] (Required) The generated password for the application.
  ApplicationPassword({
    required this.displayName,
    this.endDate,
    this.keyId,
    this.startDate,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'endDate': ?endDate,
      'keyId': ?keyId,
      'startDate': ?startDate,
      'value': ?value,
    };
  }

  factory ApplicationPassword.fromMap(Map<String, dynamic> map) {
    return ApplicationPassword(
      displayName: map['displayName'] as String,
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

