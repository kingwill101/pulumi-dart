// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_aws_service_access_aws_service_access_args_doc}
/// The set of arguments for AwsServiceAccess.
/// {@endtemplate}
/// {@macro pulumi_organizations_aws_service_access_aws_service_access_args_doc}
class AwsServiceAccessArgs {
  /// Service principal of the AWS service to enable. For example, `tagpolicies.tag.amazonaws.com`. Changing this value will force a new resource.
  final pulumi.Input<String> servicePrincipal;

  /// Creates a new [AwsServiceAccessArgs].
  /// [servicePrincipal] Service principal of the AWS service to enable. For example, `tagpolicies.tag.amazonaws.com`. Changing this value will force a new resource.
  const AwsServiceAccessArgs({
    required this.servicePrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'servicePrincipal': servicePrincipal,
    };
  }

  factory AwsServiceAccessArgs.fromMap(Map<String, dynamic> map) {
    return AwsServiceAccessArgs(
      servicePrincipal: pulumi.Input.fromValue(map['servicePrincipal'] as String),
    );
  }
}
