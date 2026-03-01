// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with basic flow - user name + password.
class BasicAuthModelResponse {
  /// The password
  final String password;
  /// Type of paging
  /// Expected value is 'Basic'.
  final String type;
  /// The user name.
  final String userName;

  /// Creates a new [BasicAuthModelResponse].
  /// [password] The password
  /// [type] Type of paging
  /// [userName] The user name.
  BasicAuthModelResponse({
    required this.password,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'type': type,
      'userName': userName,
    };
  }

  factory BasicAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return BasicAuthModelResponse(
      password: map['password'] as String,
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}

