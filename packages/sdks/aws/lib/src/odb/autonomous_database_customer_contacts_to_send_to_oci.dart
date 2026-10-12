// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseCustomerContactsToSendToOci {
  /// Email address that receives operational notifications from OCI.
  final pulumi.Input<String> email;

  /// Creates a new [AutonomousDatabaseCustomerContactsToSendToOci].
  /// [email] Email address that receives operational notifications from OCI.
  const AutonomousDatabaseCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory AutonomousDatabaseCustomerContactsToSendToOci.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseCustomerContactsToSendToOci(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
