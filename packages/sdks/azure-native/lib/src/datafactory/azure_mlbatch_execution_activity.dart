// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency.dart';
import 'activity_policy.dart';
import 'azure_mlweb_service_file.dart';
import 'linked_service_reference.dart';
import 'user_property.dart';

/// Azure ML Batch Execution activity.
class AzureMLBatchExecutionActivity {
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependency>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Key,Value pairs to be passed to the Azure ML Batch Execution Service endpoint. Keys must match the names of web service parameters defined in the published Azure ML web service. Values will be passed in the GlobalParameters property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, dynamic>>? globalParameters;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicy>? policy;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Type of activity.
  /// Expected value is 'AzureMLBatchExecution'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserProperty>>? userProperties;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Inputs to AzureMLWebServiceFile objects specifying the input Blob locations.. This information will be passed in the WebServiceInputs property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, AzureMLWebServiceFile>>? webServiceInputs;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Outputs to AzureMLWebServiceFile objects specifying the output Blob locations. This information will be passed in the WebServiceOutputs property of the Azure ML batch execution request.
  final pulumi.Input<Map<String, AzureMLWebServiceFile>>? webServiceOutputs;

  /// Creates a new [AzureMLBatchExecutionActivity].
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
  AzureMLBatchExecutionActivity({
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
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependency>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'globalParameters': ?globalParameters,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'state': ?state,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserProperty>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServiceInputs': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureMLWebServiceFile>, Map<String, Map<String, dynamic>>>(webServiceInputs, (value) => pulumi.Input.encodeMapValues<AzureMLWebServiceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webServiceOutputs': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureMLWebServiceFile>, Map<String, Map<String, dynamic>>>(webServiceOutputs, (value) => pulumi.Input.encodeMapValues<AzureMLWebServiceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureMLBatchExecutionActivity.fromMap(Map<String, dynamic> map) {
    return AzureMLBatchExecutionActivity(
      dependsOn: map['dependsOn'] == null ? null : (pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      globalParameters: map['globalParameters'] == null ? null : ((map['globalParameters'] as Map).cast<String, dynamic>()).input(),
      linkedServiceName: map['linkedServiceName'] == null ? null : (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : (map['onInactiveMarkAs'] as String).input(),
      policy: map['policy'] == null ? null : (ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      type: (map['type'] as String).input(),
      userProperties: map['userProperties'] == null ? null : (pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServiceInputs: map['webServiceInputs'] == null ? null : (pulumi.Input.decodeMapValues<AzureMLWebServiceFile>(map['webServiceInputs'], (value) => AzureMLWebServiceFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webServiceOutputs: map['webServiceOutputs'] == null ? null : (pulumi.Input.decodeMapValues<AzureMLWebServiceFile>(map['webServiceOutputs'], (value) => AzureMLWebServiceFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

