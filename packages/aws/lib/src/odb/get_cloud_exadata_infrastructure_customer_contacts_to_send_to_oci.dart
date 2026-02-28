// ignore_for_file: unused_element, unnecessary_cast

class GetCloudExadataInfrastructureCustomerContactsToSendToOci {
  final String email;

  /// Creates a new [GetCloudExadataInfrastructureCustomerContactsToSendToOci].
  /// [email] Required.
  GetCloudExadataInfrastructureCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory GetCloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureCustomerContactsToSendToOci(
      email: map['email'] as String,
    );
  }
}
