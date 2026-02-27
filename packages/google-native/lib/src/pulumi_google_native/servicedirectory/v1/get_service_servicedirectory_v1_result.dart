// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_response_servicedirectory_v1.dart';

/// Result data returned by getService.
class GetServiceServicedirectoryV1Result {
  /// Optional. Annotations for the service. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Annotations that fails to meet these requirements are rejected Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.
  final Map<String, String> annotations;

  /// Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  final List<EndpointResponseServicedirectoryV1> endpoints;

  /// Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  final String name;

  /// The globally unique identifier of the service in the UUID4 format.
  final String uid;

  GetServiceServicedirectoryV1Result({
    required this.annotations,
    required this.endpoints,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['endpoints'] = pulumi.Input.encodeList<
        EndpointResponseServicedirectoryV1,
        Map<String, dynamic>>(endpoints, (value) => value.toMap());
    map['name'] = name;
    map['uid'] = uid;
    return map;
  }

  factory GetServiceServicedirectoryV1Result.fromMap(Map<String, dynamic> map) {
    return GetServiceServicedirectoryV1Result(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      endpoints: pulumi.Input.decodeList<EndpointResponseServicedirectoryV1>(
          map['endpoints'],
          (value) => EndpointResponseServicedirectoryV1.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      uid: map['uid'] as String,
    );
  }
}
