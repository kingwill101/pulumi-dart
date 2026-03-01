// ignore_for_file: unused_element, unnecessary_cast


class MonitorUser {
  /// Specifies the user Email. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String email;
  /// Specifies the first name. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String firstName;
  /// Specifies the last name. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String lastName;
  /// Specifies the contact phone number. Changing this forces a new Azure Native New Relic Monitor to be created.
  final String phoneNumber;

  /// Creates a new [MonitorUser].
  /// [email] Specifies the user Email. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [firstName] Specifies the first name. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [lastName] Specifies the last name. Changing this forces a new Azure Native New Relic Monitor to be created.
  /// [phoneNumber] Specifies the contact phone number. Changing this forces a new Azure Native New Relic Monitor to be created.
  MonitorUser({
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
    };
  }

  factory MonitorUser.fromMap(Map<String, dynamic> map) {
    return MonitorUser(
      email: map['email'] as String,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

