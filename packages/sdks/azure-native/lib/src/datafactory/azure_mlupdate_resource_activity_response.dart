// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Azure ML Update Resource management activity.
class AzureMLUpdateResourceActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>?>? dependsOn;
  /// Activity description.
  final pulumi.Input<String?>? description;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse?>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String?>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse?>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String?>? state;
  /// The relative file path in trainedModelLinkedService to represent the .ilearner file that will be uploaded by the update operation.  Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> trainedModelFilePath;
  /// Name of Azure Storage linked service holding the .ilearner file that will be uploaded by the update operation.
  final pulumi.Input<LinkedServiceReferenceResponse> trainedModelLinkedServiceName;
  /// Name of the Trained Model module in the Web Service experiment to be updated. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> trainedModelName;
  /// Type of activity.
  /// Expected value is 'AzureMLUpdateResource'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>?>? userProperties;

  /// Creates a new [AzureMLUpdateResourceActivityResponse].
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
  const AzureMLUpdateResourceActivityResponse({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'trainedModelFilePath': trainedModelFilePath,
      'trainedModelLinkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(trainedModelLinkedServiceName, (value) => value.toMap()),
      'trainedModelName': trainedModelName,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMLUpdateResourceActivityResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLUpdateResourceActivityResponse(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainedModelFilePath: pulumi.Input.fromValue(map['trainedModelFilePath']),
      trainedModelLinkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['trainedModelLinkedServiceName']! as Map).cast<String, dynamic>())),
      trainedModelName: pulumi.Input.fromValue(map['trainedModelName']),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
