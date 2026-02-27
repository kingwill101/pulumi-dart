// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Endpoint.
class EndpointServicedirectoryV1beta1Args {
  /// Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  final pulumi.Input<String>? address;

  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String>? location;

  /// Optional. Metadata for the endpoint. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 512 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> namespaceId;

  /// Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, but no other validation is performed on this field (ex. network or project existence, reachability, or permissions).
  final pulumi.Input<String>? network;

  /// Optional. Service Directory rejects values outside of `[0, 65535]`.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  EndpointServicedirectoryV1beta1Args({
    this.address,
    required this.endpointId,
    this.location,
    this.metadata,
    this.name,
    required this.namespaceId,
    this.network,
    this.port,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    map['endpointId'] = endpointId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namespaceId'] = namespaceId;
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory EndpointServicedirectoryV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return EndpointServicedirectoryV1beta1Args(
      address: pulumi.Input.asOptionalInput<String>(map['address']),
      endpointId: pulumi.Input.asInput<String>(map['endpointId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      metadata:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['metadata']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
