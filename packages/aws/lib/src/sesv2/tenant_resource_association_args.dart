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
    String? region,
    required String resourceArn,
    required String tenantName,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       resourceArn = pulumi.Input.asInput<String>(resourceArn),
       tenantName = pulumi.Input.asInput<String>(tenantName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
      'tenantName': tenantName,
    };
  }

  factory TenantResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TenantResourceAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      tenantName: map['tenantName'] as String,
    );
  }
}
