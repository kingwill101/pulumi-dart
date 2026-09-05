// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationalUnitAccount {
  /// ARN of the organizational unit
  final pulumi.Input<String?>? arn;
  /// Email of the account
  final pulumi.Input<String?>? email;
  /// Identifier of the organization unit
  final pulumi.Input<String?>? id;
  /// The name for the organizational unit
  final pulumi.Input<String?>? name;

  /// Creates a new [OrganizationalUnitAccount].
  /// [arn] ARN of the organizational unit
  /// [email] Email of the account
  /// [id] Identifier of the organization unit
  /// [name] The name for the organizational unit
  const OrganizationalUnitAccount({
    this.arn,
    this.email,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'email': ?email,
      'id': ?id,
      'name': ?name,
    };
  }

  factory OrganizationalUnitAccount.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitAccount(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
