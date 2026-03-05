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
      accessControl: (() { final guardedValue = map['accessControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowAccessControlConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      endpointsConfiguration: (() { final guardedValue = map['endpointsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowEndpointsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationAccount: (() { final guardedValue = map['integrationAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationServiceEnvironment: (() { final guardedValue = map['integrationServiceEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<WorkflowParameter>(guardedValue, (value) => WorkflowParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

