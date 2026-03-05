// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudExadataInfrastructureCustomerContactsToSendToOci {
  final pulumi.Input<String> email;

  /// Creates a new [CloudExadataInfrastructureCustomerContactsToSendToOci].
  /// [email] Required.
  CloudExadataInfrastructureCustomerContactsToSendToOci({
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

