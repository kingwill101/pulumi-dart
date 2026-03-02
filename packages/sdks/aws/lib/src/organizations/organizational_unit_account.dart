// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationalUnitAccount {
  /// ARN of the organizational unit
  final pulumi.Input<String>? arn;
  /// Email of the account
  final pulumi.Input<String>? email;
  /// Identifier of the organization unit
  final pulumi.Input<String>? id;
  /// The name for the organizational unit
  final pulumi.Input<String>? name;

  /// Creates a new [OrganizationalUnitAccount].
  /// [arn] ARN of the organizational unit
  /// [email] Email of the account
  /// [id] Identifier of the organization unit
  /// [name] The name for the organizational unit
  OrganizationalUnitAccount({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      email: map['email'] == null ? null : ((map['email'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
    );
  }
}

