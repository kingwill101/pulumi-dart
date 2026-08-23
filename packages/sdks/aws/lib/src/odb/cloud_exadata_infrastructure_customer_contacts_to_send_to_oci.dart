// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructureCustomerContactsToSendToOci {
  /// Email address of the contact.
  final pulumi.Input<String> email;

  /// Creates a new [CloudExadataInfrastructureCustomerContactsToSendToOci].
  /// [email] Email address of the contact.
  const CloudExadataInfrastructureCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory CloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureCustomerContactsToSendToOci(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
