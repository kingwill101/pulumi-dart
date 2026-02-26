// ignore_for_file: unused_element, unnecessary_cast

class CloudExadataInfrastructureCustomerContactsToSendToOci {
  final String email;

  CloudExadataInfrastructureCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    return map;
  }

  factory CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
      Map<String, dynamic> map) {
    return CloudExadataInfrastructureCustomerContactsToSendToOci(
      email: map['email'] as String,
    );
  }
}
