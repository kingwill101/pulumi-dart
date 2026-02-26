// ignore_for_file: unused_element, unnecessary_cast

class GetCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  GetCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GetCloudExadataInfrastructurePropertyCustomerContact.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructurePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}
