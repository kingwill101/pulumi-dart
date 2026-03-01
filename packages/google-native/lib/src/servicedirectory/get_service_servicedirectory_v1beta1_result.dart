// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_response_servicedirectory_v1beta1.dart';

/// Result data returned by getService.
class GetServiceServicedirectoryV1beta1Result {
  /// The timestamp when the service was created.
  final String createTime;

  /// Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  final List<EndpointResponseServicedirectoryV1beta1> endpoints;

  /// Optional. Metadata for the service. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  final Map<String, String> metadata;

  /// Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  final String name;

  /// A globally unique identifier (in UUID4 format) for this service.
  final String uid;

  /// The timestamp when the service was last updated. Note: endpoints being created/deleted/updated within the service are not considered service updates for the purpose of this timestamp.
  final String updateTime;

  /// Creates a new [GetServiceServicedirectoryV1beta1Result].
  /// [createTime] The timestamp when the service was created.
  /// [endpoints] Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.
  /// [metadata] Optional. Metadata for the service. This data can be consumed by service clients. Restrictions: * The entire metadata dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Metadata that goes beyond this limit are rejected * Valid metadata keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Metadata that fails to meet these requirements are rejected Note: This field is equivalent to the `annotations` field in the v1 API. They have the same syntax and read/write to the same location in Service Directory.
  /// [name] Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.
  /// [uid] A globally unique identifier (in UUID4 format) for this service.
  /// [updateTime] The timestamp when the service was last updated. Note: endpoints being created/deleted/updated within the service are not considered service updates for the purpose of this timestamp.
  GetServiceServicedirectoryV1beta1Result({
    required this.createTime,
    required this.endpoints,
    required this.metadata,
    required this.name,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endpoints':
          pulumi.Input.encodeList<
            EndpointResponseServicedirectoryV1beta1,
            Map<String, dynamic>
          >(endpoints, (value) => value.toMap()),
      'metadata': metadata,
      'name': name,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetServiceServicedirectoryV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceServicedirectoryV1beta1Result(
      createTime: map['createTime'] as String,
      endpoints:
          pulumi.Input.decodeList<EndpointResponseServicedirectoryV1beta1>(
            map['endpoints'],
            (value) => EndpointResponseServicedirectoryV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
