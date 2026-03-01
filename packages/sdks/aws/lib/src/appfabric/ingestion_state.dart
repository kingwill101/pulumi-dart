// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ingestion resources.
class IngestionState {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  final pulumi.Input<String>? app;
  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String>? appBundleArn;
  /// ARN of the Ingestion.
  final pulumi.Input<String>? arn;
  /// Ingestion type. Valid values are `auditLog`.
  final pulumi.Input<String>? ingestionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the application tenant.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [IngestionState].
  /// [app] Name of the application.
  /// [appBundleArn] Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [arn] ARN of the Ingestion.
  /// [ingestionType] Ingestion type. Valid values are `auditLog`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tenantId] ID of the application tenant.
  IngestionState({
    pulumi.Output<String>? app,
    pulumi.Output<String>? appBundleArn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? ingestionType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenantId,
  }) :
      app = pulumi.Input.asOptionalInput<String>(app),
      appBundleArn = pulumi.Input.asOptionalInput<String>(appBundleArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ingestionType = pulumi.Input.asOptionalInput<String>(ingestionType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appBundleArn': ?appBundleArn,
      'arn': ?arn,
      'ingestionType': ?ingestionType,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenantId': ?tenantId,
    };
  }

  factory IngestionState.fromMap(Map<String, dynamic> map) {
    return IngestionState(
      app: map['app'] == null ? null : pulumi.Output.create<String>(map['app'] as String),
      appBundleArn: map['appBundleArn'] == null ? null : pulumi.Output.create<String>(map['appBundleArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ingestionType: map['ingestionType'] == null ? null : pulumi.Output.create<String>(map['ingestionType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

