// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructureCustomerContactsToSendToOci {
  final String email;

  /// Creates a new [CloudExadataInfrastructureCustomerContactsToSendToOci].
  /// [email] Required.
  CloudExadataInfrastructureCustomerContactsToSendToOci({required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudExadataInfrastructureCustomerContactsToSendToOci(
      email: map['email'] as String,
    );
  }
}
