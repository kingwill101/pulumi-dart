// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_access_control_configuration_response.dart';
import 'flow_endpoints_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'resource_reference_response.dart';
import 'sku_response.dart';
import 'workflow_parameter_response.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  /// The access control configuration.
  final FlowAccessControlConfigurationResponse? accessControl;
  /// Gets the access endpoint.
  final String? accessEndpoint;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the changed time.
  final String? changedTime;
  /// Gets the created time.
  final String? createdTime;
  /// The definition.
  final dynamic definition;
  /// The endpoints configuration.
  final FlowEndpointsConfigurationResponse? endpointsConfiguration;
  /// The resource id.
  final String? id;
  /// Managed service identity properties.
  final ManagedServiceIdentityResponse? identity;
  /// The integration account.
  final ResourceReferenceResponse? integrationAccount;
  /// The integration service environment.
  final ResourceReferenceResponse? integrationServiceEnvironment;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String? name;
  /// The parameters.
  final Map<String, WorkflowParameterResponse>? parameters;
  /// Gets the provisioning state.
  final String? provisioningState;
  /// The sku.
  final SkuResponse? sku;
  /// The state.
  final String? state;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String? type;
  /// Gets the version.
  final String? version;

  /// Creates a new [GetWorkflowResult].
  /// [accessControl] The access control configuration.
  /// [accessEndpoint] Gets the access endpoint.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] Gets the changed time.
  /// [createdTime] Gets the created time.
  /// [definition] The definition.
  /// [endpointsConfiguration] The endpoints configuration.
  /// [id] The resource id.
  /// [identity] Managed service identity properties.
  /// [integrationAccount] The integration account.
  /// [integrationServiceEnvironment] The integration service environment.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [parameters] The parameters.
  /// [provisioningState] Gets the provisioning state.
  /// [sku] The sku.
  /// [state] The state.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  /// [version] Gets the version.
  const GetWorkflowResult({
    this.accessControl,
    this.accessEndpoint,
    this.azureApiVersion,
    this.changedTime,
    this.createdTime,
    this.definition,
    this.endpointsConfiguration,
    this.id,
    this.identity,
    this.integrationAccount,
    this.integrationServiceEnvironment,
    this.location,
    this.name,
    this.parameters,
    this.provisioningState,
    this.sku,
    this.state,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?accessControl?.toMap(),
      'accessEndpoint': ?accessEndpoint,
      'azureApiVersion': ?azureApiVersion,
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'definition': ?definition,
      'endpointsConfiguration': ?endpointsConfiguration?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'integrationAccount': ?integrationAccount?.toMap(),
      'integrationServiceEnvironment': ?integrationServiceEnvironment?.toMap(),
      'location': ?location,
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<WorkflowParameterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'state': ?state,
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      accessControl: (() { final guardedValue = map['accessControl']; if (guardedValue == null) return null; return FlowAccessControlConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      accessEndpoint: (() { final guardedValue = map['accessEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return guardedValue; })(),
      endpointsConfiguration: (() { final guardedValue = map['endpointsConfiguration']; if (guardedValue == null) return null; return FlowEndpointsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      integrationAccount: (() { final guardedValue = map['integrationAccount']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      integrationServiceEnvironment: (() { final guardedValue = map['integrationServiceEnvironment']; if (guardedValue == null) return null; return ResourceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<WorkflowParameterResponse>(guardedValue, (value) => WorkflowParameterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
