// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_response.dart';
import 'container_app_response_patching_configuration.dart';
import 'extended_location_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'template_response.dart';

/// Result data returned by getContainerApp.
class GetContainerAppResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Non versioned Container App configuration properties.
  final ConfigurationResponse? configuration;
  /// Id used to verify domain name ownership
  final String? customDomainVerificationId;
  /// Any errors that occurred during deployment
  final String? deploymentErrors;
  /// Resource ID of environment.
  final String? environmentId;
  /// The endpoint of the eventstream of the container app.
  final String? eventStreamEndpoint;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  final ManagedServiceIdentityResponse? identity;
  /// Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Name of the latest ready revision of the Container App.
  final String? latestReadyRevisionName;
  /// Fully Qualified Domain Name of the latest revision of the Container App.
  final String? latestRevisionFqdn;
  /// Name of the latest revision of the Container App.
  final String? latestRevisionName;
  /// The geo-location where the resource lives
  final String? location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// Deprecated. Resource ID of the Container App's environment.
  final String? managedEnvironmentId;
  /// The name of the resource
  final String? name;
  /// Outbound IP Addresses for container app.
  final List<String>? outboundIpAddresses;
  /// Container App auto patch configuration.
  final ContainerAppResponsePatchingConfiguration? patchingConfiguration;
  /// Provisioning state of the Container App.
  final String? provisioningState;
  /// Running status of the Container App.
  final String? runningStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Container App versioned application definition.
  final TemplateResponse? template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Workload profile name to pin for container app execution.
  final String? workloadProfileName;

  /// Creates a new [GetContainerAppResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] Non versioned Container App configuration properties.
  /// [customDomainVerificationId] Id used to verify domain name ownership
  /// [deploymentErrors] Any errors that occurred during deployment
  /// [environmentId] Resource ID of environment.
  /// [eventStreamEndpoint] The endpoint of the eventstream of the container app.
  /// [extendedLocation] The complex type of the extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  /// [kind] Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  /// [latestReadyRevisionName] Name of the latest ready revision of the Container App.
  /// [latestRevisionFqdn] Fully Qualified Domain Name of the latest revision of the Container App.
  /// [latestRevisionName] Name of the latest revision of the Container App.
  /// [location] The geo-location where the resource lives
  /// [managedBy] The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  /// [managedEnvironmentId] Deprecated. Resource ID of the Container App's environment.
  /// [name] The name of the resource
  /// [outboundIpAddresses] Outbound IP Addresses for container app.
  /// [patchingConfiguration] Container App auto patch configuration.
  /// [provisioningState] Provisioning state of the Container App.
  /// [runningStatus] Running status of the Container App.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [template] Container App versioned application definition.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workloadProfileName] Workload profile name to pin for container app execution.
  const GetContainerAppResult({
    this.azureApiVersion,
    this.configuration,
    this.customDomainVerificationId,
    this.deploymentErrors,
    this.environmentId,
    this.eventStreamEndpoint,
    this.extendedLocation,
    this.id,
    this.identity,
    this.kind,
    this.latestReadyRevisionName,
    this.latestRevisionFqdn,
    this.latestRevisionName,
    this.location,
    this.managedBy,
    this.managedEnvironmentId,
    this.name,
    this.outboundIpAddresses,
    this.patchingConfiguration,
    this.provisioningState,
    this.runningStatus,
    this.systemData,
    this.tags,
    this.template,
    this.type,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'configuration': ?configuration?.toMap(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'deploymentErrors': ?deploymentErrors,
      'environmentId': ?environmentId,
      'eventStreamEndpoint': ?eventStreamEndpoint,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'latestReadyRevisionName': ?latestReadyRevisionName,
      'latestRevisionFqdn': ?latestRevisionFqdn,
      'latestRevisionName': ?latestRevisionName,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedEnvironmentId': ?managedEnvironmentId,
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'patchingConfiguration': ?patchingConfiguration?.toMap(),
      'provisioningState': ?provisioningState,
      'runningStatus': ?runningStatus,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'template': ?template?.toMap(),
      'type': ?type,
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory GetContainerAppResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return ConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentErrors: (() { final guardedValue = map['deploymentErrors']; if (guardedValue == null) return null; return guardedValue as String; })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventStreamEndpoint: (() { final guardedValue = map['eventStreamEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestReadyRevisionName: (() { final guardedValue = map['latestReadyRevisionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevisionFqdn: (() { final guardedValue = map['latestRevisionFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestRevisionName: (() { final guardedValue = map['latestRevisionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedEnvironmentId: (() { final guardedValue = map['managedEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      patchingConfiguration: (() { final guardedValue = map['patchingConfiguration']; if (guardedValue == null) return null; return ContainerAppResponsePatchingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runningStatus: (() { final guardedValue = map['runningStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return TemplateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadProfileName: (() { final guardedValue = map['workloadProfileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
