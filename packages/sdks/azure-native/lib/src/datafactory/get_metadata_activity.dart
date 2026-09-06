// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'dataset_reference.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Activity to get metadata of dataset
class GetMetadataActivity {
  /// GetMetadata activity dataset reference.
  final pulumi.Input<DatasetReference> dataset;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Fields of metadata to get from dataset.
  final pulumi.Input<List<dynamic>?>? fieldList;
  /// GetMetadata activity format settings.
  final pulumi.Input<dynamic>? formatSettings;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference?>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<dynamic>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy?>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<dynamic>? state;
  /// GetMetadata activity store settings.
  final pulumi.Input<dynamic>? storeSettings;
  /// Type of activity.
  /// Expected value is 'GetMetadata'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>?>? userProperties;

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
  const GetMetadataActivity({
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
      'dataset': pulumi.Input.mapInputValue<DatasetReference, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'fieldList': ?fieldList,
      'formatSettings': ?formatSettings,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'storeSettings': ?storeSettings,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMetadataActivity.fromMap(Map<String, dynamic> map) {
    return GetMetadataActivity(
      dataset: pulumi.Input.fromValue(DatasetReference.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldList: (() { final guardedValue = map['fieldList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      formatSettings: (() { final guardedValue = map['formatSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      storeSettings: (() { final guardedValue = map['storeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
