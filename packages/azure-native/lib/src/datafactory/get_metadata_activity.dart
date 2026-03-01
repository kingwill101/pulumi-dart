// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'amazon_s3_compatible_read_settings.dart';
import 'binary_read_settings.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Activity to get metadata of dataset
class GetMetadataActivity {
  /// GetMetadata activity dataset reference.
  final DatasetReference dataset;
  /// Activity depends on condition.
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Fields of metadata to get from dataset.
  final List<dynamic>? fieldList;
  /// GetMetadata activity format settings.
  final BinaryReadSettings? formatSettings;
  /// Linked service reference.
  final LinkedServiceReference? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicy? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// GetMetadata activity store settings.
  final AmazonS3CompatibleReadSettings? storeSettings;
  /// Type of activity.
  /// Expected value is 'GetMetadata'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;

  /// Creates a new [GetMetadataActivity].
  /// [dataset] GetMetadata activity dataset reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [fieldList] Fields of metadata to get from dataset.
  /// [formatSettings] GetMetadata activity format settings.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [storeSettings] GetMetadata activity store settings.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  GetMetadataActivity({
    required this.dataset,
    this.dependsOn,
    this.description,
    this.fieldList,
    this.formatSettings,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
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
      'fieldList': ?fieldList,
      'formatSettings': ?formatSettings == null ? null : formatSettings!.toMap(),
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'storeSettings': ?storeSettings == null ? null : storeSettings!.toMap(),
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory GetMetadataActivity.fromMap(Map<String, dynamic> map) {
    return GetMetadataActivity(
      dataset: DatasetReference.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      fieldList: map['fieldList'] == null ? null : (map['fieldList'] as List).cast<dynamic>(),
      formatSettings: map['formatSettings'] == null ? null : BinaryReadSettings.fromMap((map['formatSettings'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      storeSettings: map['storeSettings'] == null ? null : AmazonS3CompatibleReadSettings.fromMap((map['storeSettings'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

