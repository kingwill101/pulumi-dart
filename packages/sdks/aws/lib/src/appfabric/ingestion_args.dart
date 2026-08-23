// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appfabric_ingestion_ingestion_args_doc}
/// The set of arguments for Ingestion.
/// {@endtemplate}
/// {@macro pulumi_appfabric_ingestion_ingestion_args_doc}
class IngestionArgs {
  /// Name of the application. Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app).
  final pulumi.Input<String> app;
  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;
  /// Ingestion type. Valid values are `auditLog`.
  final pulumi.Input<String> ingestionType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the application tenant.
  final pulumi.Input<String> tenantId;

  /// Creates a new [IngestionArgs].
  /// [app] Name of the application. Refer to the AWS Documentation for the [list of valid values](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateIngestion.html#appfabric-CreateIngestion-request-app).
  /// [appBundleArn] Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [ingestionType] Ingestion type. Valid values are `auditLog`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenantId] ID of the application tenant.
  const IngestionArgs({
    required this.app,
    required this.appBundleArn,
    required this.ingestionType,
    this.region,
    this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'appBundleArn': appBundleArn,
      'ingestionType': ingestionType,
      'region': ?region,
      'tags': ?tags,
      'tenantId': tenantId,
    };
  }

  factory IngestionArgs.fromMap(Map<String, dynamic> map) {
    return IngestionArgs(
      app: pulumi.Input.fromValue(map['app'] as String),
      appBundleArn: pulumi.Input.fromValue(map['appBundleArn'] as String),
      ingestionType: pulumi.Input.fromValue(map['ingestionType'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
