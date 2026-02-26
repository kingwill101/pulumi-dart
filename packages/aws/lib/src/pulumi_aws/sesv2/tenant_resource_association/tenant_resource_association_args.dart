// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TenantResourceAssociation.
class TenantResourceAssociationArgs {
  /// AWS region for SESv2 operations. If not specified, the default provider region is used.
  final Input<String>? region;

  /// ARN of the SES resource to associate with the tenant.
  ///
  /// The following arguments are optional:
  final Input<String> resourceArn;

  /// Name of SES Tenant.
  final Input<String> tenantName;

  TenantResourceAssociationArgs({
    this.region,
    required this.resourceArn,
    required this.tenantName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    map['tenantName'] = tenantName;
    return map;
  }

  factory TenantResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TenantResourceAssociationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      tenantName: Input.asInput<String>(map['tenantName']),
    );
  }
}
