// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_authorize_vpc_endpoint_access_authorize_vpc_endpoint_access_args_doc}
/// The set of arguments for AuthorizeVpcEndpointAccess.
/// {@endtemplate}
/// {@macro pulumi_opensearch_authorize_vpc_endpoint_access_authorize_vpc_endpoint_access_args_doc}
class AuthorizeVpcEndpointAccessArgs {
  /// AWS account ID to grant access to.
  final pulumi.Input<String> account;
  /// Name of OpenSearch Service domain to provide access to.
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AuthorizeVpcEndpointAccessArgs].
  /// [account] AWS account ID to grant access to.
  /// [domainName] Name of OpenSearch Service domain to provide access to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AuthorizeVpcEndpointAccessArgs({
    required this.account,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'domainName': domainName,
      'region': ?region,
    };
  }

  factory AuthorizeVpcEndpointAccessArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizeVpcEndpointAccessArgs(
      account: (map['account'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

