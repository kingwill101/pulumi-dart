// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_tenant_resource_association_tenant_resource_association_args_doc}
/// The set of arguments for TenantResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_sesv2_tenant_resource_association_tenant_resource_association_args_doc}
class TenantResourceAssociationArgs {
  /// AWS region for SESv2 operations. If not specified, the default provider region is used.
  final pulumi.Input<String>? region;

  /// ARN of the SES resource to associate with the tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Name of SES Tenant.
  final pulumi.Input<String> tenantName;

  /// Creates a new [TenantResourceAssociationArgs].
  /// [region] AWS region for SESv2 operations. If not specified, the default provider region is used.
  /// [resourceArn] ARN of the SES resource to associate with the tenant.
  /// [tenantName] Name of SES Tenant.
  TenantResourceAssociationArgs({
    this.region,
    required this.resourceArn,
    required this.tenantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
      'tenantName': tenantName,
    };
  }

  factory TenantResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TenantResourceAssociationArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      tenantName: pulumi.Input.fromValue(map['tenantName'] as String),
    );
  }
}
