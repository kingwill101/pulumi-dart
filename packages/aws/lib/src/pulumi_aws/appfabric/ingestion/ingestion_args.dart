// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Ingestion.
class IngestionArgs {
  /// Name of the application.
  /// Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app)
  final Input<String> app;

  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  final Input<String> appBundleArn;

  /// Ingestion type. Valid values are `auditLog`.
  final Input<String> ingestionType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ID of the application tenant.
  final Input<String> tenantId;

  IngestionArgs({
    required this.app,
    required this.appBundleArn,
    required this.ingestionType,
    this.region,
    this.tags,
    required this.tenantId,
  });

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
      app: Input.asInput<String>(map['app']),
      appBundleArn: Input.asInput<String>(map['appBundleArn']),
      ingestionType: Input.asInput<String>(map['ingestionType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenantId: Input.asInput<String>(map['tenantId']),
    );
  }
}
