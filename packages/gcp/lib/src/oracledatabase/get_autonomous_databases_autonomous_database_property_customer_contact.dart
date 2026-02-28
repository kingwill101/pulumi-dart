// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}
