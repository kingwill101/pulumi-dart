// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AuthorizeVpcEndpointAccess.
class AuthorizeVpcEndpointAccessArgs {
  /// AWS account ID to grant access to.
  final pulumi.Input<String> account;

  /// Name of OpenSearch Service domain to provide access to.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AuthorizeVpcEndpointAccessArgs({
    required this.account,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['account'] = account;
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AuthorizeVpcEndpointAccessArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizeVpcEndpointAccessArgs(
      account: pulumi.Input.asInput<String>(map['account']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
