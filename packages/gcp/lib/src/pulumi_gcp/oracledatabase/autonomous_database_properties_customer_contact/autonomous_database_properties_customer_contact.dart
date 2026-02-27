// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  ///
  /// <a name="nested_properties_apex_details"></a>The `apex_details` block contains:
  final String email;

  AutonomousDatabasePropertiesCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory AutonomousDatabasePropertiesCustomerContact.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesCustomerContact(
      email: map['email'] as String,
    );
  }
}
