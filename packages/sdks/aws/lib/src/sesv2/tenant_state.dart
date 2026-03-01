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
    pulumi.Output<String>? region,
    pulumi.Output<String>? sendingStatus,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenantArn,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? tenantName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      sendingStatus = pulumi.Input.asOptionalInput<String>(sendingStatus),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenantArn = pulumi.Input.asOptionalInput<String>(tenantArn),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      tenantName = pulumi.Input.asOptionalInput<String>(tenantName);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sendingStatus: map['sendingStatus'] == null ? null : pulumi.Output.create<String>(map['sendingStatus'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenantArn: map['tenantArn'] == null ? null : pulumi.Output.create<String>(map['tenantArn'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      tenantName: map['tenantName'] == null ? null : pulumi.Output.create<String>(map['tenantName'] as String),
    );
  }
}

