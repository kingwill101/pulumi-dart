// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Azure ML Update Resource management activity.
class AzureMLUpdateResourceActivityResponse {
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// The relative file path in trainedModelLinkedService to represent the .ilearner file that will be uploaded by the update operation.  Type: string (or Expression with resultType string).
  final dynamic trainedModelFilePath;
  /// Name of Azure Storage linked service holding the .ilearner file that will be uploaded by the update operation.
  final LinkedServiceReferenceResponse trainedModelLinkedServiceName;
  /// Name of the Trained Model module in the Web Service experiment to be updated. Type: string (or Expression with resultType string).
  final dynamic trainedModelName;
  /// Type of activity.
  /// Expected value is 'AzureMLUpdateResource'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
  AzureMLUpdateResourceActivityResponse({
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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'trainedModelFilePath': trainedModelFilePath,
      'trainedModelLinkedServiceName': trainedModelLinkedServiceName.toMap(),
      'trainedModelName': trainedModelName,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory AzureMLUpdateResourceActivityResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLUpdateResourceActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      trainedModelFilePath: map['trainedModelFilePath'],
      trainedModelLinkedServiceName: LinkedServiceReferenceResponse.fromMap((map['trainedModelLinkedServiceName'] as Map).cast<String, dynamic>()),
      trainedModelName: map['trainedModelName'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

