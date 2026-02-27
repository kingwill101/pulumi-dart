// ignore_for_file: unused_element, unnecessary_cast

/// An individual endpoint that provides a service. The service must already exist to create an endpoint.
class EndpointResponseServicedirectoryV1 {
  /// Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.
  final String address;

  /// Optional. Annotations for the endpoint. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 512 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/) Annotations that fails to meet these requirements are rejected. Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.
  final Map<String, String> annotations;

  /// Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  final String name;

  /// Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, we also check to make sure that you have the servicedirectory.networks.attach permission on the project specified.
  final String network;

  /// Optional. Service Directory rejects values outside of `[0, 65535]`.
  final int port;

  /// The globally unique identifier of the endpoint in the UUID4 format.
  final String uid;

  EndpointResponseServicedirectoryV1({
    required this.address,
    required this.annotations,
    required this.name,
    required this.network,
    required this.port,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['annotations'] = annotations;
    map['name'] = name;
    map['network'] = network;
    map['port'] = port;
    map['uid'] = uid;
    return map;
  }

  factory EndpointResponseServicedirectoryV1.fromMap(Map<String, dynamic> map) {
    return EndpointResponseServicedirectoryV1(
      address: map['address'] as String,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      port: map['port'] as int,
      uid: map['uid'] as String,
    );
  }
}
