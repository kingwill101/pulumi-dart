// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudExadataInfrastructureCustomerContactsToSendToOci {
  final pulumi.Input<String> email;

  /// Creates a new [GetCloudExadataInfrastructureCustomerContactsToSendToOci].
  /// [email] Required.
  GetCloudExadataInfrastructureCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': email};
  }

  factory GetCloudExadataInfrastructureCustomerContactsToSendToOci.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudExadataInfrastructureCustomerContactsToSendToOci(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
