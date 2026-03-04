// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_rds_service_linked_role_rds_service_linked_role_args_doc}
/// The set of arguments for RdsServiceLinkedRole.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_service_linked_role_rds_service_linked_role_args_doc}
class RdsServiceLinkedRoleArgs {
  /// The product name for SLR. RDS can automatically create the following service-linked roles: `AliyunServiceRoleForRdsPgsqlOnEcs`, `AliyunServiceRoleForRDSProxyOnEcs`.
  final pulumi.Input<String> serviceName;

  /// Creates a new [RdsServiceLinkedRoleArgs].
  /// [serviceName] The product name for SLR. RDS can automatically create the following service-linked roles: `AliyunServiceRoleForRdsPgsqlOnEcs`, `AliyunServiceRoleForRDSProxyOnEcs`.
  RdsServiceLinkedRoleArgs({required this.serviceName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceName': serviceName};
  }

  factory RdsServiceLinkedRoleArgs.fromMap(Map<String, dynamic> map) {
    return RdsServiceLinkedRoleArgs(
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
