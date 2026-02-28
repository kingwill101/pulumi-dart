// ignore_for_file: unused_element, unnecessary_cast

class AuthorizeVpcEndpointAccessAuthorizedPrincipal {
  /// IAM principal that is allowed to access to the domain.
  final String principal;

  /// Type of principal.
  final String principalType;

  /// Creates a new [AuthorizeVpcEndpointAccessAuthorizedPrincipal].
  /// [principal] IAM principal that is allowed to access to the domain.
  /// [principalType] Type of principal.
  AuthorizeVpcEndpointAccessAuthorizedPrincipal({
    required this.principal,
    required this.principalType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['principal'] = principal;
    map['principalType'] = principalType;
    return map;
  }

  factory AuthorizeVpcEndpointAccessAuthorizedPrincipal.fromMap(
      Map<String, dynamic> map) {
    return AuthorizeVpcEndpointAccessAuthorizedPrincipal(
      principal: map['principal'] as String,
      principalType: map['principalType'] as String,
    );
  }
}
