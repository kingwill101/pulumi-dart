// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_datastore_config.dart';

/// The set of arguments for Datastore.
class DatastoreArgs {
  /// Datastore Configurations.
  final pulumi.Input<GoogleCloudApigeeV1DatastoreConfig>? datastoreConfig;

  /// Display name in UI
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> organizationId;

  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final pulumi.Input<String>? targetType;

  DatastoreArgs({
    this.datastoreConfig,
    required this.displayName,
    required this.organizationId,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datastoreConfigValue = datastoreConfig;
    if (datastoreConfigValue != null) {
      map['datastoreConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudApigeeV1DatastoreConfig,
          Map<String, dynamic>>(datastoreConfigValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    map['organizationId'] = organizationId;
    final targetTypeValue = targetType;
    if (targetTypeValue != null) {
      map['targetType'] = targetTypeValue;
    }
    return map;
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      datastoreConfig:
          pulumi.Input.asOptionalInput<GoogleCloudApigeeV1DatastoreConfig>(
              map['datastoreConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      targetType: pulumi.Input.asOptionalInput<String>(map['targetType']),
    );
  }
}
