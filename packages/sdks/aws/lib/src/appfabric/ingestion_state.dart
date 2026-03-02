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
    this.app,
    this.appBundleArn,
    this.arn,
    this.ingestionType,
    this.region,
    this.tags,
    this.tagsAll,
    this.tenantId,
  });

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
      app: map['app'] == null ? null : ((map['app'] as String).input()).input(),
      appBundleArn: map['appBundleArn'] == null ? null : ((map['appBundleArn'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      ingestionType: map['ingestionType'] == null ? null : ((map['ingestionType'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      tenantId: map['tenantId'] == null ? null : ((map['tenantId'] as String).input()).input(),
    );
  }
}

