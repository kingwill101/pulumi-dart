// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'job_configuration_response.dart';
import 'job_template_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJob.
class GetJobResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Container Apps Job configuration properties.
  final JobConfigurationResponse? configuration;
  /// Resource ID of environment.
  final String? environmentId;
  /// The endpoint of the eventstream of the container apps job.
  final String eventStreamEndpoint;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed identities needed by a container app job to interact with other Azure services to not maintain any secrets or credentials in code.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Outbound IP Addresses of a container apps job.
  final List<String> outboundIpAddresses;
  /// Provisioning state of the Container Apps Job.
  final String provisioningState;
  /// Current running state of the job
  final String runningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Container Apps job definition.
  final JobTemplateResponse? template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Workload profile name to pin for container apps job execution.
  final String? workloadProfileName;

  /// Creates a new [GetJobResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configuration] Container Apps Job configuration properties.
  /// [environmentId] Resource ID of environment.
  /// [eventStreamEndpoint] The endpoint of the eventstream of the container apps job.
  /// [extendedLocation] The complex type of the extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed identities needed by a container app job to interact with other Azure services to not maintain any secrets or credentials in code.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [outboundIpAddresses] Outbound IP Addresses of a container apps job.
  /// [provisioningState] Provisioning state of the Container Apps Job.
  /// [runningState] Current running state of the job
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [template] Container Apps job definition.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workloadProfileName] Workload profile name to pin for container apps job execution.
  GetJobResult({
    required this.azureApiVersion,
    this.configuration,
    this.environmentId,
    required this.eventStreamEndpoint,
    this.extendedLocation,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.outboundIpAddresses,
    required this.provisioningState,
    required this.runningState,
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
      'environmentId': ?environmentId,
      'eventStreamEndpoint': eventStreamEndpoint,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'outboundIpAddresses': outboundIpAddresses,
      'provisioningState': provisioningState,
      'runningState': runningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'template': ?template == null ? null : template!.toMap(),
      'type': type,
      'workloadProfileName': ?workloadProfileName,
    };
  }

  factory GetJobResult.fromMap(Map<String, dynamic> map) {
    return GetJobResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configuration: map['configuration'] == null ? null : JobConfigurationResponse.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      eventStreamEndpoint: map['eventStreamEndpoint'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      outboundIpAddresses: (map['outboundIpAddresses'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      runningState: map['runningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      template: map['template'] == null ? null : JobTemplateResponse.fromMap((map['template'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      workloadProfileName: map['workloadProfileName'] == null ? null : map['workloadProfileName'] as String,
    );
  }
}

