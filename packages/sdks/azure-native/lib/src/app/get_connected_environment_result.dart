// ignore_for_file: unused_element, unnecessary_cast

import 'custom_domain_configuration_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectedEnvironment.
class GetConnectedEnvironmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Custom domain configuration for the environment
  final CustomDomainConfigurationResponse? customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  final String? daprAIConnectionString;
  /// Default Domain Name for the cluster
  final String defaultDomain;
  /// Any errors that occurred during deployment or deployment validation
  final String deploymentErrors;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Provisioning state of the Kubernetes Environment.
  final String provisioningState;
  /// Static IP of the connectedEnvironment
  final String? staticIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectedEnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customDomainConfiguration] Custom domain configuration for the environment
  /// [daprAIConnectionString] Application Insights connection string used by Dapr to export Service to Service communication telemetry
  /// [defaultDomain] Default Domain Name for the cluster
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [extendedLocation] The complex type of the extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the Kubernetes Environment.
  /// [staticIp] Static IP of the connectedEnvironment
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConnectedEnvironmentResult({
    required this.azureApiVersion,
    this.customDomainConfiguration,
    this.daprAIConnectionString,
    required this.defaultDomain,
    required this.deploymentErrors,
    this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.staticIp,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'customDomainConfiguration': ?customDomainConfiguration == null ? null : customDomainConfiguration!.toMap(),
      'daprAIConnectionString': ?daprAIConnectionString,
      'defaultDomain': defaultDomain,
      'deploymentErrors': deploymentErrors,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'staticIp': ?staticIp,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetConnectedEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetConnectedEnvironmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      customDomainConfiguration: map['customDomainConfiguration'] == null ? null : CustomDomainConfigurationResponse.fromMap((map['customDomainConfiguration'] as Map).cast<String, dynamic>()),
      daprAIConnectionString: map['daprAIConnectionString'] == null ? null : map['daprAIConnectionString'] as String,
      defaultDomain: map['defaultDomain'] as String,
      deploymentErrors: map['deploymentErrors'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      staticIp: map['staticIp'] == null ? null : map['staticIp'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

