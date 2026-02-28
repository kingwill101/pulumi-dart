// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appfabric_ingestion_ingestion_args_doc}
/// The set of arguments for Ingestion.
/// {@endtemplate}
/// {@macro pulumi_appfabric_ingestion_ingestion_args_doc}
class IngestionArgs {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  final pulumi.Input<String> app;

  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;

  /// Ingestion type. Valid values are `auditLog`.
  final pulumi.Input<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the application tenant.
  final pulumi.Input<String> tenantId;

  /// Creates a new [IngestionArgs].
  /// [app] Name of the application.
  /// [appBundleArn] Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [ingestionType] Ingestion type. Valid values are `auditLog`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenantId] ID of the application tenant.
  IngestionArgs({
    required String app,
    required String appBundleArn,
    required String ingestionType,
    String? region,
    Map<String, String>? tags,
    required String tenantId,
  })  : app = pulumi.Input.asInput<String>(app),
        appBundleArn = pulumi.Input.asInput<String>(appBundleArn),
        ingestionType = pulumi.Input.asInput<String>(ingestionType),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['app'] = app;
    map['appBundleArn'] = appBundleArn;
    map['ingestionType'] = ingestionType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory IngestionArgs.fromMap(Map<String, dynamic> map) {
    return IngestionArgs(
      app: map['app'] as String,
      appBundleArn: map['appBundleArn'] as String,
      ingestionType: map['ingestionType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}
