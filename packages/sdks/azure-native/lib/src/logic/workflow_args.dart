// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_access_control_configuration.dart';
import 'flow_endpoints_configuration.dart';
import 'managed_service_identity.dart';
import 'resource_reference.dart';
import 'workflow_parameter.dart';

/// {@template pulumi_logic_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_logic_workflow_args_doc}
class WorkflowArgs {
  /// The access control configuration.
  final pulumi.Input<FlowAccessControlConfiguration>? accessControl;
  /// The definition.
  final pulumi.Input<dynamic>? definition;
  /// The endpoints configuration.
  final pulumi.Input<FlowEndpointsConfiguration>? endpointsConfiguration;
  /// Managed service identity properties.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The integration account.
  final pulumi.Input<ResourceReference>? integrationAccount;
  /// The integration service environment.
  final pulumi.Input<ResourceReference>? integrationServiceEnvironment;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The parameters.
  final pulumi.Input<Map<String, WorkflowParameter>>? parameters;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The state.
  final pulumi.Input<String>? state;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The workflow name.
  final pulumi.Input<String>? workflowName;

  /// Creates a new [WorkflowArgs].
  /// [accessControl] The access control configuration.
  /// [definition] The definition.
  /// [endpointsConfiguration] The endpoints configuration.
  /// [identity] Managed service identity properties.
  /// [integrationAccount] The integration account.
  /// [integrationServiceEnvironment] The integration service environment.
  /// [location] The resource location.
  /// [parameters] The parameters.
  /// [resourceGroupName] The resource group name.
  /// [state] The state.
  /// [tags] The resource tags.
  /// [workflowName] The workflow name.
  WorkflowArgs({
    this.accessControl,
    this.definition,
    this.endpointsConfiguration,
    this.identity,
    this.integrationAccount,
    this.integrationServiceEnvironment,
    this.location,
    this.parameters,
    required this.resourceGroupName,
    this.state,
    this.tags,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?pulumi.Input.mapOptionalInputValue<FlowAccessControlConfiguration, Map<String, dynamic>>(accessControl, (value) => value.toMap()),
      'definition': ?definition,
      'endpointsConfiguration': ?pulumi.Input.mapOptionalInputValue<FlowEndpointsConfiguration, Map<String, dynamic>>(endpointsConfiguration, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'integrationAccount': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(integrationAccount, (value) => value.toMap()),
      'integrationServiceEnvironment': ?pulumi.Input.mapOptionalInputValue<ResourceReference, Map<String, dynamic>>(integrationServiceEnvironment, (value) => value.toMap()),
      'location': ?location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, WorkflowParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<WorkflowParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'state': ?state,
      'tags': ?tags,
      'workflowName': ?workflowName,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      accessControl: map['accessControl'] == null ? null : (FlowAccessControlConfiguration.fromMap((map['accessControl']! as Map).cast<String, dynamic>())).input(),
      definition: map['definition'] == null ? null : (map['definition']!).input(),
      endpointsConfiguration: map['endpointsConfiguration'] == null ? null : (FlowEndpointsConfiguration.fromMap((map['endpointsConfiguration']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      integrationAccount: map['integrationAccount'] == null ? null : (ResourceReference.fromMap((map['integrationAccount']! as Map).cast<String, dynamic>())).input(),
      integrationServiceEnvironment: map['integrationServiceEnvironment'] == null ? null : (ResourceReference.fromMap((map['integrationServiceEnvironment']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<WorkflowParameter>(map['parameters']!, (value) => WorkflowParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workflowName: map['workflowName'] == null ? null : (map['workflowName']! as String).input(),
    );
  }
}

