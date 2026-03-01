// ignore_for_file: unused_element, unnecessary_cast


/// The local administrator login properties.
class AdministratorProperties {
  /// The administrator password.
  final String? password;
  /// The administrator user name.
  final String? userName;

  /// Creates a new [AdministratorProperties].
  /// [password] The administrator password.
  /// [userName] The administrator user name.
  AdministratorProperties({
    this.password,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'userName': ?userName,
    };
  }

  factory AdministratorProperties.fromMap(Map<String, dynamic> map) {
    return AdministratorProperties(
      password: map['password'] == null ? null : map['password'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

