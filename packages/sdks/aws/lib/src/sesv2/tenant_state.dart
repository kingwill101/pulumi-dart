// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tenant resources.
class TenantState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current sending status of the tenant.
  final pulumi.Input<String>? sendingStatus;
  /// Map of tags to assign to the tenant.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the tenant, including provider default tags.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the Tenant.
  final pulumi.Input<String>? tenantArn;
  /// ID of the Tenant.
  final pulumi.Input<String>? tenantId;
  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tenantName;

  /// Creates a new [TenantState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sendingStatus] Current sending status of the tenant.
  /// [tags] Map of tags to assign to the tenant.
  /// [tagsAll] Map of tags assigned to the tenant, including provider default tags.
  /// [tenantArn] ARN of the Tenant.
  /// [tenantId] ID of the Tenant.
  /// [tenantName] Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  TenantState({
    this.region,
    this.sendingStatus,
    this.tags,
    this.tagsAll,
    this.tenantArn,
    this.tenantId,
    this.tenantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'sendingStatus': ?sendingStatus,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenantArn': ?tenantArn,
      'tenantId': ?tenantId,
      'tenantName': ?tenantName,
    };
  }

  factory TenantState.fromMap(Map<String, dynamic> map) {
    return TenantState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sendingStatus: map['sendingStatus'] == null ? null : (map['sendingStatus'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tenantArn: map['tenantArn'] == null ? null : (map['tenantArn'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      tenantName: map['tenantName'] == null ? null : (map['tenantName'] as String).input(),
    );
  }
}

