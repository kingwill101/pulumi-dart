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
  final List<ActivityDependency>? dependsOn;
  /// Activity description.
  final String? description;
  /// Key,Value pairs to be passed to the Azure ML Batch Execution Service endpoint. Keys must match the names of web service parameters defined in the published Azure ML web service. Values will be passed in the GlobalParameters property of the Azure ML batch execution request.
  final Map<String, dynamic>? globalParameters;
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
  /// Type of activity.
  /// Expected value is 'AzureMLBatchExecution'.
  final String type;
  /// Activity user properties.
  final List<UserProperty>? userProperties;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Inputs to AzureMLWebServiceFile objects specifying the input Blob locations.. This information will be passed in the WebServiceInputs property of the Azure ML batch execution request.
  final Map<String, AzureMLWebServiceFile>? webServiceInputs;
  /// Key,Value pairs, mapping the names of Azure ML endpoint's Web Service Outputs to AzureMLWebServiceFile objects specifying the output Blob locations. This information will be passed in the WebServiceOutputs property of the Azure ML batch execution request.
  final Map<String, AzureMLWebServiceFile>? webServiceOutputs;

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
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependency, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'globalParameters': ?globalParameters,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'state': ?state,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserProperty, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
      'webServiceInputs': ?webServiceInputs == null ? null : pulumi.Input.encodeMapValues<AzureMLWebServiceFile, Map<String, dynamic>>(webServiceInputs!, (value) => value.toMap()),
      'webServiceOutputs': ?webServiceOutputs == null ? null : pulumi.Input.encodeMapValues<AzureMLWebServiceFile, Map<String, dynamic>>(webServiceOutputs!, (value) => value.toMap()),
    };
  }

  factory AzureMLBatchExecutionActivity.fromMap(Map<String, dynamic> map) {
    return AzureMLBatchExecutionActivity(
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependency>(map['dependsOn'], (value) => ActivityDependency.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      globalParameters: map['globalParameters'] == null ? null : (map['globalParameters'] as Map).cast<String, dynamic>(),
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserProperty>(map['userProperties'], (value) => UserProperty.fromMap((value as Map).cast<String, dynamic>())),
      webServiceInputs: map['webServiceInputs'] == null ? null : pulumi.Input.decodeMapValues<AzureMLWebServiceFile>(map['webServiceInputs'], (value) => AzureMLWebServiceFile.fromMap((value as Map).cast<String, dynamic>())),
      webServiceOutputs: map['webServiceOutputs'] == null ? null : pulumi.Input.decodeMapValues<AzureMLWebServiceFile>(map['webServiceOutputs'], (value) => AzureMLWebServiceFile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

