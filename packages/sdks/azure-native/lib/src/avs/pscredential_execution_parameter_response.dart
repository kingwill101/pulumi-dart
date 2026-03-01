// ignore_for_file: unused_element, unnecessary_cast


/// a powershell credential object
class PSCredentialExecutionParameterResponse {
  /// The parameter name
  final String name;
  /// password for login
  final String? password;
  /// script execution parameter type
  /// Expected value is 'Credential'.
  final String type;
  /// username for login
  final String? username;

  /// Creates a new [PSCredentialExecutionParameterResponse].
  /// [name] The parameter name
  /// [password] password for login
  /// [type] script execution parameter type
  /// [username] username for login
  PSCredentialExecutionParameterResponse({
    required this.name,
    this.password,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': ?password,
      'type': type,
      'username': ?username,
    };
  }

  factory PSCredentialExecutionParameterResponse.fromMap(Map<String, dynamic> map) {
    return PSCredentialExecutionParameterResponse(
      name: map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

