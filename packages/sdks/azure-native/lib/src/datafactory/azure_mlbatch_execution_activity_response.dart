// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'azure_mlweb_service_file_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Azure ML Batch Execution activity.
class AzureMLBatchExecutionActivityResponse {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Key,Value pairs to be passed to the Azure ML Batch Execution Service endpoint. Keys must match the names of web service parameters defined in the published Azure ML web service. Values will be passed in the GlobalParameters property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, dynamic>>? globalParameters;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'AzureMLBatchExecution'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Inputs to AzureMLWebServiceFile objects specifying the input Blob locations.. This information will be passed in the WebServiceInputs property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, AzureMLWebServiceFileResponse>>? webServiceInputs;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Outputs to AzureMLWebServiceFile objects specifying the output Blob locations. This information will be passed in the WebServiceOutputs property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, AzureMLWebServiceFileResponse>>? webServiceOutputs;

  /// Creates a new [AzureMLBatchExecutionActivityResponse].
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [globalParameters] Key,Value pairs to be passed to the Azure ML Batch Execution Service endpoint. Keys must match the names of web service parameters defined in the published Azure ML web service. Values will be passed in the GlobalParameters property of the Azure ML batch execution request.
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  /// [webServiceInputs] Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Inputs to AzureMLWebServiceFile objects specifying the input Blob locations.. This information will be passed in the WebServiceInputs property of the Azure ML batch execution request.
  /// [webServiceOutputs] Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Outputs to AzureMLWebServiceFile objects specifying the output Blob locations. This information will be passed in the WebServiceOutputs property of the Azure ML batch execution request.
  AzureMLBatchExecutionActivityResponse({
    this.dependsOn,
    this.description,
    this.globalParameters,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    this.state,
    required this.type,
    this.userProperties,
    this.webServiceInputs,
    this.webServiceOutputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'globalParameters': ?globalParameters,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServiceInputs': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureMLWebServiceFileResponse>, Map<String, Map<String, dynamic>>>(webServiceInputs, (value) => pulumi.Input.encodeMapValues<AzureMLWebServiceFileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServiceOutputs': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureMLWebServiceFileResponse>, Map<String, Map<String, dynamic>>>(webServiceOutputs, (value) => pulumi.Input.encodeMapValues<AzureMLWebServiceFileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMLBatchExecutionActivityResponse.fromMap(Map<String, dynamic> map) {
    return AzureMLBatchExecutionActivityResponse(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn']!, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      globalParameters: map['globalParameters'] == null ? null : ((map['globalParameters']! as Map).cast<String, dynamic>()).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs']! as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicyResponse.fromMap((map['policy']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties']!, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServiceInputs: map['webServiceInputs'] == null ? null : (pulumi.Input.decodeMapValues<AzureMLWebServiceFileResponse>(map['webServiceInputs']!, (value) => AzureMLWebServiceFileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServiceOutputs: map['webServiceOutputs'] == null ? null : (pulumi.Input.decodeMapValues<AzureMLWebServiceFileResponse>(map['webServiceOutputs']!, (value) => AzureMLWebServiceFileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

