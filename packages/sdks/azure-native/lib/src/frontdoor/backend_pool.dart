// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend.dart';
import 'sub_resource.dart';

/// A backend pool is a collection of backends that can be routed to.
class BackendPool {
  /// The set of backends for this pool
  final pulumi.Input<List<Backend>>? backends;
  /// L7 health probe settings for a backend pool
  final pulumi.Input<SubResource>? healthProbeSettings;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load balancing settings for a backend pool
  final pulumi.Input<SubResource>? loadBalancingSettings;
  /// Resource name.
  final pulumi.Input<String>? name;

  /// Creates a new [BackendPool].
  /// [backends] The set of backends for this pool
  /// [healthProbeSettings] L7 health probe settings for a backend pool
  /// [id] Resource ID.
  /// [loadBalancingSettings] Load balancing settings for a backend pool
  /// [name] Resource name.
  const BackendPool({
    this.backends,
    this.healthProbeSettings,
    this.id,
    this.loadBalancingSettings,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backends': ?pulumi.Input.mapOptionalInputValue<List<Backend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<Backend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(healthProbeSettings, (value) => value.toMap()),
      'id': ?id,
      'loadBalancingSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(loadBalancingSettings, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory BackendPool.fromMap(Map<String, dynamic> map) {
    return BackendPool(
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Backend>(guardedValue, (value) => Backend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancingSettings: (() { final guardedValue = map['loadBalancingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

