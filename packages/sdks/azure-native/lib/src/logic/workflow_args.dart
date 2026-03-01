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
    pulumi.Output<FlowAccessControlConfiguration>? accessControl,
    pulumi.Output<dynamic>? definition,
    pulumi.Output<FlowEndpointsConfiguration>? endpointsConfiguration,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<ResourceReference>? integrationAccount,
    pulumi.Output<ResourceReference>? integrationServiceEnvironment,
    pulumi.Output<String>? location,
    pulumi.Output<Map<String, WorkflowParameter>>? parameters,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workflowName,
  }) :
      accessControl = pulumi.Input.asOptionalInput<FlowAccessControlConfiguration>(accessControl),
      definition = pulumi.Input.asOptionalInput<dynamic>(definition),
      endpointsConfiguration = pulumi.Input.asOptionalInput<FlowEndpointsConfiguration>(endpointsConfiguration),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      integrationAccount = pulumi.Input.asOptionalInput<ResourceReference>(integrationAccount),
      integrationServiceEnvironment = pulumi.Input.asOptionalInput<ResourceReference>(integrationServiceEnvironment),
      location = pulumi.Input.asOptionalInput<String>(location),
      parameters = pulumi.Input.asOptionalInput<Map<String, WorkflowParameter>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflowName = pulumi.Input.asOptionalInput<String>(workflowName);

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
      accessControl: map['accessControl'] == null ? null : pulumi.Output.create<FlowAccessControlConfiguration>(FlowAccessControlConfiguration.fromMap((map['accessControl'] as Map).cast<String, dynamic>())),
      definition: map['definition'] == null ? null : pulumi.Output.create<dynamic>(map['definition']),
      endpointsConfiguration: map['endpointsConfiguration'] == null ? null : pulumi.Output.create<FlowEndpointsConfiguration>(FlowEndpointsConfiguration.fromMap((map['endpointsConfiguration'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      integrationAccount: map['integrationAccount'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['integrationAccount'] as Map).cast<String, dynamic>())),
      integrationServiceEnvironment: map['integrationServiceEnvironment'] == null ? null : pulumi.Output.create<ResourceReference>(ResourceReference.fromMap((map['integrationServiceEnvironment'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, WorkflowParameter>>(pulumi.Input.decodeMapValues<WorkflowParameter>(map['parameters'], (value) => WorkflowParameter.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workflowName: map['workflowName'] == null ? null : pulumi.Output.create<String>(map['workflowName'] as String),
    );
  }
}

