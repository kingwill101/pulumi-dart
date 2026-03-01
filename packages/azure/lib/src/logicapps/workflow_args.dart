// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control.dart';
import 'workflow_identity.dart';

/// {@template pulumi_logicapps_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_logicapps_workflow_workflow_args_doc}
class WorkflowArgs {
  /// A `access_control` block as defined below.
  final pulumi.Input<WorkflowAccessControl>? accessControl;
  /// Is the Logic App Workflow enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// An `identity` block as defined below.
  final pulumi.Input<WorkflowIdentity>? identity;
  /// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
  final pulumi.Input<String>? integrationServiceEnvironmentId;
  /// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the integration account linked by this Logic App Workflow.
  final pulumi.Input<String>? logicAppIntegrationAccountId;
  /// Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A map of Key-Value pairs.
  ///
  /// > **Note:** Any parameters specified must exist in the Schema defined in `workflow_parameters`.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>).
  final pulumi.Input<Map<String, String>>? workflowParameters;
  /// Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowSchema;
  /// Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowVersion;

  /// Creates a new [WorkflowArgs].
  /// [accessControl] A `access_control` block as defined below.
  /// [enabled] Is the Logic App Workflow enabled? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [integrationServiceEnvironmentId] The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
  /// [location] Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
  /// [logicAppIntegrationAccountId] The ID of the integration account linked by this Logic App Workflow.
  /// [name] Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [parameters] A map of Key-Value pairs.
  /// [resourceGroupName] The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workflowParameters] Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>).
  /// [workflowSchema] Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  /// [workflowVersion] Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  WorkflowArgs({
    WorkflowAccessControl? accessControl,
    bool? enabled,
    WorkflowIdentity? identity,
    String? integrationServiceEnvironmentId,
    String? location,
    String? logicAppIntegrationAccountId,
    String? name,
    Map<String, String>? parameters,
    required String resourceGroupName,
    Map<String, String>? tags,
    Map<String, String>? workflowParameters,
    String? workflowSchema,
    String? workflowVersion,
  }) :
      accessControl = pulumi.Input.asOptionalInput<WorkflowAccessControl>(accessControl),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      identity = pulumi.Input.asOptionalInput<WorkflowIdentity>(identity),
      integrationServiceEnvironmentId = pulumi.Input.asOptionalInput<String>(integrationServiceEnvironmentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logicAppIntegrationAccountId = pulumi.Input.asOptionalInput<String>(logicAppIntegrationAccountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflowParameters = pulumi.Input.asOptionalInput<Map<String, String>>(workflowParameters),
      workflowSchema = pulumi.Input.asOptionalInput<String>(workflowSchema),
      workflowVersion = pulumi.Input.asOptionalInput<String>(workflowVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControl, Map<String, dynamic>>(accessControl, (value) => value.toMap()),
      'enabled': ?enabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkflowIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'location': ?location,
      'logicAppIntegrationAccountId': ?logicAppIntegrationAccountId,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workflowParameters': ?workflowParameters,
      'workflowSchema': ?workflowSchema,
      'workflowVersion': ?workflowVersion,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      accessControl: map['accessControl'] == null ? null : WorkflowAccessControl.fromMap((map['accessControl'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      identity: map['identity'] == null ? null : WorkflowIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      integrationServiceEnvironmentId: map['integrationServiceEnvironmentId'] == null ? null : map['integrationServiceEnvironmentId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      logicAppIntegrationAccountId: map['logicAppIntegrationAccountId'] == null ? null : map['logicAppIntegrationAccountId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workflowParameters: map['workflowParameters'] == null ? null : (map['workflowParameters'] as Map).cast<String, String>(),
      workflowSchema: map['workflowSchema'] == null ? null : map['workflowSchema'] as String,
      workflowVersion: map['workflowVersion'] == null ? null : map['workflowVersion'] as String,
    );
  }
}

