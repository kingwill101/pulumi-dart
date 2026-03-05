// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorizeVpcEndpointAccessAuthorizedPrincipal {
  /// IAM principal that is allowed to access to the domain.
  final pulumi.Input<String> principal;
  /// Type of principal.
  final pulumi.Input<String> principalType;

  /// Creates a new [AuthorizeVpcEndpointAccessAuthorizedPrincipal].
  /// [principal] IAM principal that is allowed to access to the domain.
  /// [principalType] Type of principal.
  AuthorizeVpcEndpointAccessAuthorizedPrincipal({
    required this.principal,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': principal,
      'principalType': principalType,
    };
  }

  factory AuthorizeVpcEndpointAccessAuthorizedPrincipal.fromMap(Map<String, dynamic> map) {
    return AuthorizeVpcEndpointAccessAuthorizedPrincipal(
      principal: pulumi.Input.fromValue(map['principal'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
    );
  }
}

