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
  final DatasetReference dataset;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Whether to record detailed logs of delete-activity execution. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableLogging;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Log storage settings customer need to provide when enableLogging is true.
  final LogStorageSettings? logStorageSettings;
  /// The max concurrent connections to connect data source at the same time.
  final int? maxConcurrentConnections;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// If true, files or sub-folders under current folder path will be deleted recursively. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Delete activity store settings.
  final AmazonS3CompatibleReadSettings? storeSettings;
  /// Type of activity.
  /// Expected value is 'Delete'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

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
      'dataset': dataset.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'enableLogging': ?enableLogging,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'logStorageSettings': ?logStorageSettings == null ? null : logStorageSettings!.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'recursive': ?recursive,
      'state': ?state,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DeleteActivity.fromMap(Map<String, dynamic> map) {
    return DeleteActivity(
      dataset: DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enableLogging: map['enableLogging'] == null ? null : map['enableLogging'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logStorageSettings: map['logStorageSettings'] == null ? null : LogStorageSettings.fromMap((map['logStorageSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'] as int,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      recursive: map['recursive'] == null ? null : map['recursive'],
      state: map['state'] == null ? null : map['state'] as String,
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

