// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ExternalAddress.
class ExternalAddressArgs {
  /// User-provided description for this resource.
  final Input<String>? description;

  /// Required. The user-provided identifier of the `ExternalAddress` to be created. This identifier must be unique among `ExternalAddress` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final Input<String> externalAddressId;

  /// The internal IP address of a workload VM.
  final Input<String>? internalIp;
  final Input<String>? location;
  final Input<String> privateCloudId;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  ExternalAddressArgs({
    this.description,
    required this.externalAddressId,
    this.internalIp,
    this.location,
    required this.privateCloudId,
    this.project,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['externalAddressId'] = externalAddressId;
    final internalIpValue = internalIp;
    if (internalIpValue != null) {
      map['internalIp'] = internalIpValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory ExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAddressArgs(
      description: Input.asOptionalInput<String>(map['description']),
      externalAddressId: Input.asInput<String>(map['externalAddressId']),
      internalIp: Input.asOptionalInput<String>(map['internalIp']),
      location: Input.asOptionalInput<String>(map['location']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
