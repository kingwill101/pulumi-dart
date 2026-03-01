// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'process_server_details_response.dart';

/// VMwareV2 fabric specific details.
class VMwareV2FabricSpecificDetailsResponse {
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'VMwareV2'.
  final String instanceType;
  /// The Migration solution ARM Id.
  final String migrationSolutionId;
  /// The ARM Id of the physical site.
  final String physicalSiteId;
  /// The list of process servers.
  final List<ProcessServerDetailsResponse> processServers;
  /// The service container Id.
  final String serviceContainerId;
  /// The service endpoint.
  final String serviceEndpoint;
  /// The service resource Id.
  final String serviceResourceId;
  /// The ARM Id of the VMware site.
  final String vmwareSiteId;

  /// Creates a new [VMwareV2FabricSpecificDetailsResponse].
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [migrationSolutionId] The Migration solution ARM Id.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [processServers] The list of process servers.
  /// [serviceContainerId] The service container Id.
  /// [serviceEndpoint] The service endpoint.
  /// [serviceResourceId] The service resource Id.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  VMwareV2FabricSpecificDetailsResponse({
    required this.instanceType,
    required this.migrationSolutionId,
    required this.physicalSiteId,
    required this.processServers,
    required this.serviceContainerId,
    required this.serviceEndpoint,
    required this.serviceResourceId,
    required this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
      'physicalSiteId': physicalSiteId,
      'processServers': pulumi.Input.encodeList<ProcessServerDetailsResponse, Map<String, dynamic>>(processServers, (value) => value.toMap()),
      'serviceContainerId': serviceContainerId,
      'serviceEndpoint': serviceEndpoint,
      'serviceResourceId': serviceResourceId,
      'vmwareSiteId': vmwareSiteId,
    };
  }

  factory VMwareV2FabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareV2FabricSpecificDetailsResponse(
      instanceType: map['instanceType'] as String,
      migrationSolutionId: map['migrationSolutionId'] as String,
      physicalSiteId: map['physicalSiteId'] as String,
      processServers: pulumi.Input.decodeList<ProcessServerDetailsResponse>(map['processServers'], (value) => ProcessServerDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceContainerId: map['serviceContainerId'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      serviceResourceId: map['serviceResourceId'] as String,
      vmwareSiteId: map['vmwareSiteId'] as String,
    );
  }
}

