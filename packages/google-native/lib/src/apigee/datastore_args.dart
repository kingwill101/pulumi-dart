// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_datastore_config.dart';

/// {@template pulumi_apigee_v1_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_datastore_args_doc}
class DatastoreArgs {
  /// Datastore Configurations.
  final pulumi.Input<GoogleCloudApigeeV1DatastoreConfig>? datastoreConfig;
  /// Display name in UI
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> organizationId;
  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [DatastoreArgs].
  /// [datastoreConfig] Datastore Configurations.
  /// [displayName] Display name in UI
  /// [organizationId] Required.
  /// [targetType] Destination storage type. Supported types `gcs` or `bigquery`.
  DatastoreArgs({
    GoogleCloudApigeeV1DatastoreConfig? datastoreConfig,
    required String displayName,
    required String organizationId,
    String? targetType,
  }) :
      datastoreConfig = pulumi.Input.asOptionalInput<GoogleCloudApigeeV1DatastoreConfig>(datastoreConfig),
      displayName = pulumi.Input.asInput<String>(displayName),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudApigeeV1DatastoreConfig, Map<String, dynamic>>(datastoreConfig, (value) => value.toMap()),
      'displayName': displayName,
      'organizationId': organizationId,
      'targetType': ?targetType,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      datastoreConfig: map['datastoreConfig'] == null ? null : GoogleCloudApigeeV1DatastoreConfig.fromMap((map['datastoreConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      organizationId: map['organizationId'] as String,
      targetType: map['targetType'] == null ? null : map['targetType'] as String,
    );
  }
}

