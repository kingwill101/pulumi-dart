// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseCustomerContactsToSendToOci {
  /// Customer contact email address.
  final pulumi.Input<String> email;

  /// Creates a new [GetAutonomousDatabaseCustomerContactsToSendToOci].
  /// [email] Customer contact email address.
  const GetAutonomousDatabaseCustomerContactsToSendToOci({
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
    };
  }

  factory GetAutonomousDatabaseCustomerContactsToSendToOci.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCustomerContactsToSendToOci(
      email: pulumi.Input.fromValue(map['email'] as String),
    );
  }
}
