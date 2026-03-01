// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_tenant_tenant_args_doc}
/// The set of arguments for Tenant.
/// {@endtemplate}
/// {@macro pulumi_sesv2_tenant_tenant_args_doc}
class TenantArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the tenant.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tenantName;

  /// Creates a new [TenantArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the tenant.
  /// [tenantName] Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  TenantArgs({
    String? region,
    Map<String, String>? tags,
    required String tenantName,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       tenantName = pulumi.Input.asInput<String>(tenantName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'tenantName': tenantName,
    };
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tenantName: map['tenantName'] as String,
    );
  }
}
