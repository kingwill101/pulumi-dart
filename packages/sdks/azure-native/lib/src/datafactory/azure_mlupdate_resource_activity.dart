// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Azure ML Update Resource management activity.
class AzureMLUpdateResourceActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
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
  /// The relative file path in trainedModelLinkedService to represent the .ilearner file that will be uploaded by the update operation.  Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> trainedModelFilePath;
  /// Name of Azure Storage linked service holding the .ilearner file that will be uploaded by the update operation.
  final pulumi.Input<LinkedServiceReference> trainedModelLinkedServiceName;
  /// Name of the Trained Model module in the Web Service experiment to be updated. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> trainedModelName;
  /// Type of activity.
  /// Expected value is 'AzureMLUpdateResource'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>?>? userProperties;

  /// Creates a new [AzureMLUpdateResourceActivity].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [trainedModelFilePath] The relative file path in trainedModelLinkedService to represent the .ilearner file that will be uploaded by the update operation.  Type: string (or Expression with resultType string).
  /// [trainedModelLinkedServiceName] Name of Azure Storage linked service holding the .ilearner file that will be uploaded by the update operation.
  /// [trainedModelName] Name of the Trained Model module in the Web Service experiment to be updated. Type: string (or Expression with resultType string).
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const AzureMLUpdateResourceActivity({
    this.dependsOn,
    this.description,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.trainedModelFilePath,
    required this.trainedModelLinkedServiceName,
    required this.trainedModelName,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'trainedModelFilePath': trainedModelFilePath,
      'trainedModelLinkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(trainedModelLinkedServiceName, (value) => value.toMap()),
      'trainedModelName': trainedModelName,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMLUpdateResourceActivity.fromMap(Map<String, dynamic> map) {
    return AzureMLUpdateResourceActivity(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependency>(guardedValue, (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      trainedModelFilePath: pulumi.Input.fromValue(map['trainedModelFilePath']),
      trainedModelLinkedServiceName: pulumi.Input.fromValue(LinkedServiceReference.fromMap((map['trainedModelLinkedServiceName']! as Map).cast<String, dynamic>())),
      trainedModelName: pulumi.Input.fromValue(map['trainedModelName']),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserProperty>(guardedValue, (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
