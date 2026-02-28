// ignore_for_file: unused_element, unnecessary_cast

import 'multi_cluster_routing_use_any_response.dart';
import 'single_cluster_routing_response.dart';
import 'standard_isolation_response.dart';

/// Result data returned by getAppProfile.
class GetAppProfileResult {
  /// Long form description of the use case for this AppProfile.
  final String description;
  /// Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  final String etag;
  /// Use a multi-cluster routing policy.
  final MultiClusterRoutingUseAnyResponse multiClusterRoutingUseAny;
  /// The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  final String name;
  /// This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  final String priority;
  /// Use a single-cluster routing policy.
  final SingleClusterRoutingResponse singleClusterRouting;
  /// The standard options used for isolating this app profile's traffic from other use cases.
  final StandardIsolationResponse standardIsolation;

  /// Creates a new [GetAppProfileResult].
  /// [description] Long form description of the use case for this AppProfile.
  /// [etag] Strongly validated etag for optimistic concurrency control. Preserve the value returned from `GetAppProfile` when calling `UpdateAppProfile` to fail the request if there has been a modification in the mean time. The `update_mask` of the request need not include `etag` for this protection to apply. See [Wikipedia](https://en.wikipedia.org/wiki/HTTP_ETag) and [RFC 7232](https://tools.ietf.org/html/rfc7232#section-2.3) for more details.
  /// [multiClusterRoutingUseAny] Use a multi-cluster routing policy.
  /// [name] The unique name of the app profile. Values are of the form `projects/{project}/instances/{instance}/appProfiles/_a-zA-Z0-9*`.
  /// [priority] This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, `standard_isolation.priority` will be set instead. The priority of requests sent using this app profile.
  /// [singleClusterRouting] Use a single-cluster routing policy.
  /// [standardIsolation] The standard options used for isolating this app profile's traffic from other use cases.
  GetAppProfileResult({
    required this.description,
    required this.etag,
    required this.multiClusterRoutingUseAny,
    required this.name,
    required this.priority,
    required this.singleClusterRouting,
    required this.standardIsolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'etag': etag,
      'multiClusterRoutingUseAny': multiClusterRoutingUseAny.toMap(),
      'name': name,
      'priority': priority,
      'singleClusterRouting': singleClusterRouting.toMap(),
      'standardIsolation': standardIsolation.toMap(),
    };
  }

  factory GetAppProfileResult.fromMap(Map<String, dynamic> map) {
    return GetAppProfileResult(
      description: map['description'] as String,
      etag: map['etag'] as String,
      multiClusterRoutingUseAny: MultiClusterRoutingUseAnyResponse.fromMap((map['multiClusterRoutingUseAny'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      priority: map['priority'] as String,
      singleClusterRouting: SingleClusterRoutingResponse.fromMap((map['singleClusterRouting'] as Map).cast<String, dynamic>()),
      standardIsolation: StandardIsolationResponse.fromMap((map['standardIsolation'] as Map).cast<String, dynamic>()),
    );
  }
}

