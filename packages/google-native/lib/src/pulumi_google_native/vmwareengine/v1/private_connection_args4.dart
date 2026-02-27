// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'private_connection_routing_mode.dart';
import 'private_connection_type.dart';

/// The set of arguments for PrivateConnection.
class PrivateConnectionArgs4 {
  /// Optional. User-provided description for this private connection.
  final Input<String>? description;
  final Input<String>? location;

  /// Required. The user-provided identifier of the new private connection. This identifier must be unique among private connection resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> privateConnectionId;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is supported.
  final Input<PrivateConnectionRoutingMode>? routingMode;

  /// Service network to create private connection. Specify the name in the following form: `projects/{project}/global/networks/{network_id}` For type = PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g. projects/project-tp/global/networks/servicenetworking. For type = NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g. projects/project-tp/global/networks/netapp-tenant-vpc. For type = DELL_POWERSCALE, this field represent Dell service VPC, e.g. projects/project-tp/global/networks/dell-tenant-vpc. For type= THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any other producer VPC to which the VMware Engine Network needs to be connected, e.g. projects/project/global/networks/vpc.
  final Input<String> serviceNetwork;

  /// Private connection type.
  final Input<PrivateConnectionType> type;

  /// The relative resource name of Legacy VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}`, `{location}` will be same as specified in private connection resource name and `{vmware_engine_network_id}` will be in the form of `{location}`-default e.g. projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  final Input<String> vmwareEngineNetwork;

  PrivateConnectionArgs4({
    this.description,
    this.location,
    required this.privateConnectionId,
    this.project,
    this.requestId,
    this.routingMode,
    required this.serviceNetwork,
    required this.type,
    required this.vmwareEngineNetwork,
  });

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
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final routingModeValue = routingMode;
    if (routingModeValue != null) {
      map['routingMode'] =
          Input.mapOptionalInputValue<PrivateConnectionRoutingMode, String>(
              routingModeValue, (value) => value.value);
    }
    map['serviceNetwork'] = serviceNetwork;
    map['type'] = Input.mapInputValue<PrivateConnectionType, String>(
        type, (value) => value.value);
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    return map;
  }

  factory PrivateConnectionArgs4.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      routingMode: Input.asOptionalInput<PrivateConnectionRoutingMode>(
          map['routingMode']),
      serviceNetwork: Input.asInput<String>(map['serviceNetwork']),
      type: Input.asInput<PrivateConnectionType>(map['type']),
      vmwareEngineNetwork: Input.asInput<String>(map['vmwareEngineNetwork']),
    );
  }
}
