// ignore_for_file: unused_element, unnecessary_cast


class GetCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  /// Creates a new [GetCloudExadataInfrastructurePropertyCustomerContact].
  /// [email] The email address used by Oracle to send notifications regarding databases
  GetCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetCloudExadataInfrastructurePropertyCustomerContact.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructurePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}

