// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend.dart';
import 'sub_resource.dart';

/// A backend pool is a collection of backends that can be routed to.
class BackendPool {
  /// The set of backends for this pool
  final List<Backend>? backends;
  /// L7 health probe settings for a backend pool
  final SubResource? healthProbeSettings;
  /// Resource ID.
  final String? id;
  /// Load balancing settings for a backend pool
  final SubResource? loadBalancingSettings;
  /// Resource name.
  final String? name;

  /// Creates a new [BackendPool].
  /// [backends] The set of backends for this pool
  /// [healthProbeSettings] L7 health probe settings for a backend pool
  /// [id] Resource ID.
  /// [loadBalancingSettings] Load balancing settings for a backend pool
  /// [name] Resource name.
  BackendPool({
    this.backends,
    this.healthProbeSettings,
    this.id,
    this.loadBalancingSettings,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?backends == null ? null : pulumi.Input.encodeList<Backend, Map<String, dynamic>>(backends!, (value) => value.toMap()),
      'healthProbeSettings': ?healthProbeSettings == null ? null : healthProbeSettings!.toMap(),
      'id': ?id,
      'loadBalancingSettings': ?loadBalancingSettings == null ? null : loadBalancingSettings!.toMap(),
      'name': ?name,
    };
  }

  factory BackendPool.fromMap(Map<String, dynamic> map) {
    return BackendPool(
      backends: map['backends'] == null ? null : pulumi.Input.decodeList<Backend>(map['backends'], (value) => Backend.fromMap((value as Map).cast<String, dynamic>())),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : SubResource.fromMap((map['healthProbeSettings'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadBalancingSettings: map['loadBalancingSettings'] == null ? null : SubResource.fromMap((map['loadBalancingSettings'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

