// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'vmware_engine_network_type.dart';

/// The set of arguments for VmwareEngineNetwork.
class VmwareEngineNetworkArgs {
  /// User-provided description for this VMware Engine network.
  final Input<String>? description;

  /// Checksum that may be sent on update and delete requests to ensure that the user-provided value is up to date before the server processes a request. The server computes checksums based on the value of other fields in the request.
  final Input<String>? etag;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// VMware Engine network type.
  final Input<VmwareEngineNetworkType> type;

  /// Required. The user-provided identifier of the new VMware Engine network. This identifier must be unique among VMware Engine network resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * For networks of type LEGACY, adheres to the format: `{region-id}-default`. Replace `{region-id}` with the region where you want to create the VMware Engine network. For example, "us-central1-default". * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> vmwareEngineNetworkId;

  VmwareEngineNetworkArgs({
    this.description,
    this.etag,
    this.location,
    this.project,
    this.requestId,
    required this.type,
    required this.vmwareEngineNetworkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['type'] = Input.mapInputValue<VmwareEngineNetworkType, String>(
        type, (value) => value.value);
    map['vmwareEngineNetworkId'] = vmwareEngineNetworkId;
    return map;
  }

  factory VmwareEngineNetworkArgs.fromMap(Map<String, dynamic> map) {
    return VmwareEngineNetworkArgs(
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      type: Input.asInput<VmwareEngineNetworkType>(map['type']),
      vmwareEngineNetworkId:
          Input.asInput<String>(map['vmwareEngineNetworkId']),
    );
  }
}
