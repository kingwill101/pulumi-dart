// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'amazon_s3_compatible_read_settings.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';
import 'log_storage_settings.dart';
import 'user_property.dart';

/// Delete activity.
class DeleteActivity {
  /// Delete activity dataset reference.
  final pulumi.Input<DatasetReference> dataset;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Whether to record detailed logs of delete-activity execution. Default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableLogging;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// Log storage settings customer need to provide when enableLogging is true.
  final pulumi.Input<LogStorageSettings>? logStorageSettings;
  /// The max concurrent connections to connect data source at the same time.
  final pulumi.Input<int>? maxConcurrentConnections;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// If true, files or sub-folders under current folder path will be deleted recursively. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? recursive;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Delete activity store settings.
  final pulumi.Input<AmazonS3CompatibleReadSettings>? storeSettings;
  /// Type of activity.
  /// Expected value is 'Delete'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;

  /// Creates a new [DeleteActivity].
  /// [dataset] Delete activity dataset reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [enableLogging] Whether to record detailed logs of delete-activity execution. Default value is false. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Linked service reference.
  /// [logStorageSettings] Log storage settings customer need to provide when enableLogging is true.
  /// [maxConcurrentConnections] The max concurrent connections to connect data source at the same time.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [recursive] If true, files or sub-folders under current folder path will be deleted recursively. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storeSettings] Delete activity store settings.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  DeleteActivity({
    required this.dataset,
    this.dependsOn,
    this.description,
    this.enableLogging,
    this.linkedServiceName,
    this.logStorageSettings,
    this.maxConcurrentConnections,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.recursive,
    this.state,
    this.storeSettings,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': pulumi.Input.mapInputValue<DatasetReference, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enableLogging': ?enableLogging,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'logStorageSettings': ?pulumi.Input.mapOptionalInputValue<LogStorageSettings, Map<String, dynamic>>(logStorageSettings, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'recursive': ?recursive,
      'state': ?state,
      'storeSettings': ?pulumi.Input.mapOptionalInputValue<AmazonS3CompatibleReadSettings, Map<String, dynamic>>(storeSettings, (value) => value.toMap()),
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeleteActivity.fromMap(Map<String, dynamic> map) {
    return DeleteActivity(
      dataset: (DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>())).input(),
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      logStorageSettings: map['logStorageSettings'] == null ? null : (LogStorageSettings.fromMap((map['logStorageSettings'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections'] as int).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      recursive: map['recursive'] == null ? null : (map['recursive']).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      storeSettings: map['storeSettings'] == null ? null : (AmazonS3CompatibleReadSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

