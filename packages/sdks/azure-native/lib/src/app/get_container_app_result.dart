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
  final String azureApiVersion;
  /// Non versioned Container App configuration properties.
  final ConfigurationResponse? configuration;
  /// Id used to verify domain name ownership
  final String customDomainVerificationId;
  /// Any errors that occurred during deployment
  final String deploymentErrors;
  /// Resource ID of environment.
  final String? environmentId;
  /// The endpoint of the eventstream of the container app.
  final String eventStreamEndpoint;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  final ManagedServiceIdentityResponse? identity;
  /// Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  final String? kind;
  /// Name of the latest ready revision of the Container App.
  final String latestReadyRevisionName;
  /// Fully Qualified Domain Name of the latest revision of the Container App.
  final String latestRevisionFqdn;
  /// Name of the latest revision of the Container App.
  final String latestRevisionName;
  /// The geo-location where the resource lives
  final String location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  final String? managedBy;
  /// Deprecated. Resource ID of the Container App's environment.
  final String? managedEnvironmentId;
  /// The name of the resource
  final String name;
  /// Outbound IP Addresses for container app.
  final List<String> outboundIpAddresses;
  /// Container App auto patch configuration.
  final ContainerAppResponsePatchingConfiguration? patchingConfiguration;
  /// Provisioning state of the Container App.
  final String provisioningState;
  /// Running status of the Container App.
  final String runningStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Container App versioned application definition.
  final TemplateResponse? template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
  GetContainerAppResult({
    required this.azureApiVersion,
    this.configuration,
    required this.customDomainVerificationId,
    required this.deploymentErrors,
    this.environmentId,
    required this.eventStreamEndpoint,
    this.extendedLocation,
    required this.id,
    this.identity,
    this.kind,
    required this.latestReadyRevisionName,
    required this.latestRevisionFqdn,
    required this.latestRevisionName,
    required this.location,
    this.managedBy,
    this.managedEnvironmentId,
    required this.name,
    required this.outboundIpAddresses,
    this.patchingConfiguration,
    required this.provisioningState,
    required this.runningStatus,
    required this.systemData,
    this.tags,
    this.template,
    required this.type,
    this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'customDomainVerificationId': customDomainVerificationId,
      'deploymentErrors': deploymentErrors,
      'environmentId': ?environmentId,
      'eventStreamEndpoint': eventStreamEndpoint,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'latestReadyRevisionName': latestReadyRevisionName,
      'latestRevisionFqdn': latestRevisionFqdn,
      'latestRevisionName': latestRevisionName,
      'location': location,
      'managedBy': ?managedBy,
      'managedEnvironmentId': ?managedEnvironmentId,
      'name': name,
      'outboundIpAddresses': outboundIpAddresses,
      'patchingConfiguration': ?patchingConfiguration == null ? null : patchingConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'runningStatus': runningStatus,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'template': ?template == null ? null : template!.toMap(),
      'type': type,
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory GetContainerAppResult.fromMap(Map<String, dynamic> map) {
    return GetContainerAppResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuration: map['configuration'] == null ? null : ConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      deploymentErrors: map['deploymentErrors'] as String,
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      eventStreamEndpoint: map['eventStreamEndpoint'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      latestReadyRevisionName: map['latestReadyRevisionName'] as String,
      latestRevisionFqdn: map['latestRevisionFqdn'] as String,
      latestRevisionName: map['latestRevisionName'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : map['managedEnvironmentId'] as String,
      name: map['name'] as String,
      outboundIpAddresses: (map['outboundIpAddresses'] as List).cast<String>(),
      patchingConfiguration: map['patchingConfiguration'] == null ? null : ContainerAppResponsePatchingConfiguration.fromMap((map['patchingConfiguration'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      runningStatus: map['runningStatus'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      template: map['template'] == null ? null : TemplateResponse.fromMap((map['template'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      workloadProfileName: map['workloadProfileName'] == null ? null : map['workloadProfileName'] as String,
    );
  }
}

