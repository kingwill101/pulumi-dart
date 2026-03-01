// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TenantResourceAssociation resources.
class TenantResourceAssociationState {
  /// AWS region for SESv2 operations. If not specified, the default provider region is used.
  final pulumi.Input<String>? region;
  /// ARN of the SES resource to associate with the tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceArn;
  /// Name of SES Tenant.
  final pulumi.Input<String>? tenantName;

  /// Creates a new [TenantResourceAssociationState].
  /// [region] AWS region for SESv2 operations. If not specified, the default provider region is used.
  /// [resourceArn] ARN of the SES resource to associate with the tenant.
  /// [tenantName] Name of SES Tenant.
  TenantResourceAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? tenantName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      tenantName = pulumi.Input.asOptionalInput<String>(tenantName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'tenantName': ?tenantName,
    };
  }

  factory TenantResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return TenantResourceAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      tenantName: map['tenantName'] == null ? null : pulumi.Output.create<String>(map['tenantName'] as String),
    );
  }
}

