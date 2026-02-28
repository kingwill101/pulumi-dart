// ignore_for_file: unused_element, unnecessary_cast

class EventConnectionAuthParametersBasic {
  /// A password for the authorization. Created and stored in AWS Secrets Manager.
  final String password;

  /// A username for the authorization.
  final String username;

  /// Creates a new [EventConnectionAuthParametersBasic].
  /// [password] A password for the authorization. Created and stored in AWS Secrets Manager.
  /// [username] A username for the authorization.
  EventConnectionAuthParametersBasic({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory EventConnectionAuthParametersBasic.fromMap(Map<String, dynamic> map) {
    return EventConnectionAuthParametersBasic(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
