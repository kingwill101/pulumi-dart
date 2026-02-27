// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tenant.
class TenantArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the tenant.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tenantName;

  TenantArgs({
    this.region,
    this.tags,
    required this.tenantName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tenantName'] = tenantName;
    return map;
  }

  factory TenantArgs.fromMap(Map<String, dynamic> map) {
    return TenantArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenantName: pulumi.Input.asInput<String>(map['tenantName']),
    );
  }
}
