// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructurePropertiesCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  /// Creates a new [CloudExadataInfrastructurePropertiesCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  CloudExadataInfrastructurePropertiesCustomerContact({required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory CloudExadataInfrastructurePropertiesCustomerContact.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudExadataInfrastructurePropertiesCustomerContact(
      email: map['email'] as String,
    );
  }
}
