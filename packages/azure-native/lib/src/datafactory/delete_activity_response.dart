// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'amazon_s3_compatible_read_settings_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'log_storage_settings_response.dart';
import 'user_property_response.dart';

/// Delete activity.
class DeleteActivityResponse {
  /// Delete activity dataset reference.
  final DatasetReferenceResponse dataset;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Whether to record detailed logs of delete-activity execution. Default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic enableLogging;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Log storage settings customer need to provide when enableLogging is true.
  final LogStorageSettingsResponse? logStorageSettings;
  /// The max concurrent connections to connect data source at the same time.
  final int? maxConcurrentConnections;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// If true, files or sub-folders under current folder path will be deleted recursively. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Delete activity store settings.
  final AmazonS3CompatibleReadSettingsResponse? storeSettings;
  /// Type of activity.
  /// Expected value is 'Delete'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

  /// Creates a new [DeleteActivityResponse].
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
  DeleteActivityResponse({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
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
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory DeleteActivityResponse.fromMap(Map<String, dynamic> map) {
    return DeleteActivityResponse(
      dataset: DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enableLogging: map['enableLogging'] == null ? null : map['enableLogging'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      logStorageSettings: map['logStorageSettings'] == null ? null : LogStorageSettingsResponse.fromMap((map['logStorageSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'] as int,
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      recursive: map['recursive'] == null ? null : map['recursive'],
      state: map['state'] == null ? null : map['state'] as String,
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettingsResponse.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

