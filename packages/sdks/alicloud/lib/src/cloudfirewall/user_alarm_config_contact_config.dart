// ignore_for_file: unused_element, unnecessary_cast


class UserAlarmConfigContactConfig {
  /// The email address of the contact.
  final String? email;
  /// The mobile phone number of the contact.
  final String? mobilePhone;
  /// The name of the contact.
  final String? name;
  /// The status of the contact configuration. Possible values are: `0` disable, `1` enable.
  final String? status;

  /// Creates a new [UserAlarmConfigContactConfig].
  /// [email] The email address of the contact.
  /// [mobilePhone] The mobile phone number of the contact.
  /// [name] The name of the contact.
  /// [status] The status of the contact configuration. Possible values are: `0` disable, `1` enable.
  UserAlarmConfigContactConfig({
    this.email,
    this.mobilePhone,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'mobilePhone': ?mobilePhone,
      'name': ?name,
      'status': ?status,
    };
  }

  factory UserAlarmConfigContactConfig.fromMap(Map<String, dynamic> map) {
    return UserAlarmConfigContactConfig(
      email: map['email'] == null ? null : map['email'] as String,
      mobilePhone: map['mobilePhone'] == null ? null : map['mobilePhone'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

