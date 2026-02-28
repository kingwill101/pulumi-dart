// ignore_for_file: unused_element, unnecessary_cast


class GetAutonomousDatabasePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  /// Creates a new [GetAutonomousDatabasePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  GetAutonomousDatabasePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetAutonomousDatabasePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}

