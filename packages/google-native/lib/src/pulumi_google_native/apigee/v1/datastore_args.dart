// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_datastore_config.dart';

/// The set of arguments for Datastore.
class DatastoreArgs {
  /// Datastore Configurations.
  final Input<GoogleCloudApigeeV1DatastoreConfig>? datastoreConfig;

  /// Display name in UI
  final Input<String> displayName;
  final Input<String> organizationId;

  /// Destination storage type. Supported types `gcs` or `bigquery`.
  final Input<String>? targetType;

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
      map['datastoreConfig'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<GoogleCloudApigeeV1DatastoreConfig>(
              map['datastoreConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      organizationId: Input.asInput<String>(map['organizationId']),
      targetType: Input.asOptionalInput<String>(map['targetType']),
    );
  }
}
