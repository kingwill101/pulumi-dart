// ignore_for_file: unused_element, unnecessary_cast

class GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  final String email;

  GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructurePropertyCustomerContact(
      email: map['email'] as String,
    );
  }
}
