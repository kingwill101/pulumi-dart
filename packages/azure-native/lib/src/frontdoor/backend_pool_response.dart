// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_response.dart';
import 'sub_resource_response.dart';

/// A backend pool is a collection of backends that can be routed to.
class BackendPoolResponse {
  /// The set of backends for this pool
  final List<BackendResponse>? backends;
  /// L7 health probe settings for a backend pool
  final SubResourceResponse? healthProbeSettings;
  /// Resource ID.
  final String? id;
  /// Load balancing settings for a backend pool
  final SubResourceResponse? loadBalancingSettings;
  /// Resource name.
  final String? name;
  /// Resource status.
  final String resourceState;
  /// Resource type.
  final String type;

  /// Creates a new [BackendPoolResponse].
  /// [backends] The set of backends for this pool
  /// [healthProbeSettings] L7 health probe settings for a backend pool
  /// [id] Resource ID.
  /// [loadBalancingSettings] Load balancing settings for a backend pool
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [type] Resource type.
  BackendPoolResponse({
    this.backends,
    this.healthProbeSettings,
    this.id,
    this.loadBalancingSettings,
    this.name,
    required this.resourceState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?backends == null ? null : pulumi.Input.encodeList<BackendResponse, Map<String, dynamic>>(backends!, (value) => value.toMap()),
      'healthProbeSettings': ?healthProbeSettings == null ? null : healthProbeSettings!.toMap(),
      'id': ?id,
      'loadBalancingSettings': ?loadBalancingSettings == null ? null : loadBalancingSettings!.toMap(),
      'name': ?name,
      'resourceState': resourceState,
      'type': type,
    };
  }

  factory BackendPoolResponse.fromMap(Map<String, dynamic> map) {
    return BackendPoolResponse(
      backends: map['backends'] == null ? null : pulumi.Input.decodeList<BackendResponse>(map['backends'], (value) => BackendResponse.fromMap((value as Map).cast<String, dynamic>())),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : SubResourceResponse.fromMap((map['healthProbeSettings'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadBalancingSettings: map['loadBalancingSettings'] == null ? null : SubResourceResponse.fromMap((map['loadBalancingSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceState: map['resourceState'] as String,
      type: map['type'] as String,
    );
  }
}

