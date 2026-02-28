// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_management_dns_zone_binding_args_doc}
/// The set of arguments for ManagementDnsZoneBinding.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_management_dns_zone_binding_args_doc}
class ManagementDnsZoneBindingArgs {
  /// User-provided description for this resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// Required. The user-provided identifier of the `ManagementDnsZoneBinding` resource to be created. This identifier must be unique among `ManagementDnsZoneBinding` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> managementDnsZoneBindingId;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  final pulumi.Input<String>? vmwareEngineNetwork;

  /// Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  final pulumi.Input<String>? vpcNetwork;

  /// Creates a new [ManagementDnsZoneBindingArgs].
  /// [description] User-provided description for this resource.
  /// [location] Optional.
  /// [managementDnsZoneBindingId] Required. The user-provided identifier of the `ManagementDnsZoneBinding` resource to be created. This identifier must be unique among `ManagementDnsZoneBinding` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [privateCloudId] Required.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [vmwareEngineNetwork] Network to bind is a VMware Engine network. Specify the name in the following form for VMware engine network: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. `{project}` can either be a project number or a project ID.
  /// [vpcNetwork] Network to bind is a standard consumer VPC. Specify the name in the following form for consumer VPC network: `projects/{project}/global/networks/{network_id}`. `{project}` can either be a project number or a project ID.
  ManagementDnsZoneBindingArgs({
    String? description,
    String? location,
    required String managementDnsZoneBindingId,
    required String privateCloudId,
    String? project,
    String? requestId,
    String? vmwareEngineNetwork,
    String? vpcNetwork,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        location = pulumi.Input.asOptionalInput<String>(location),
        managementDnsZoneBindingId =
            pulumi.Input.asInput<String>(managementDnsZoneBindingId),
        privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        vmwareEngineNetwork =
            pulumi.Input.asOptionalInput<String>(vmwareEngineNetwork),
        vpcNetwork = pulumi.Input.asOptionalInput<String>(vpcNetwork);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['managementDnsZoneBindingId'] = managementDnsZoneBindingId;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final vmwareEngineNetworkValue = vmwareEngineNetwork;
    if (vmwareEngineNetworkValue != null) {
      map['vmwareEngineNetwork'] = vmwareEngineNetworkValue;
    }
    final vpcNetworkValue = vpcNetwork;
    if (vpcNetworkValue != null) {
      map['vpcNetwork'] = vpcNetworkValue;
    }
    return map;
  }

  factory ManagementDnsZoneBindingArgs.fromMap(Map<String, dynamic> map) {
    return ManagementDnsZoneBindingArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managementDnsZoneBindingId: map['managementDnsZoneBindingId'] as String,
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null
          ? null
          : map['vmwareEngineNetwork'] as String,
      vpcNetwork:
          map['vpcNetwork'] == null ? null : map['vpcNetwork'] as String,
    );
  }
}
