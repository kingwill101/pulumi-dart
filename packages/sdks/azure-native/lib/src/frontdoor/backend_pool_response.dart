// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_response.dart';
import 'sub_resource_response.dart';

/// A backend pool is a collection of backends that can be routed to.
class BackendPoolResponse {
  /// The set of backends for this pool
  final pulumi.Input<List<BackendResponse>>? backends;

  /// L7 health probe settings for a backend pool
  final pulumi.Input<SubResourceResponse>? healthProbeSettings;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Load balancing settings for a backend pool
  final pulumi.Input<SubResourceResponse>? loadBalancingSettings;

  /// Resource name.
  final pulumi.Input<String>? name;

  /// Resource status.
  final pulumi.Input<String> resourceState;

  /// Resource type.
  final pulumi.Input<String> type;

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
      'backends':
          ?pulumi.Input.mapOptionalInputValue<
            List<BackendResponse>,
            List<Map<String, dynamic>>
          >(
            backends,
            (value) =>
                pulumi.Input.encodeList<BackendResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'healthProbeSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(healthProbeSettings, (value) => value.toMap()),
      'id': ?id,
      'loadBalancingSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(loadBalancingSettings, (value) => value.toMap()),
      'name': ?name,
      'resourceState': resourceState,
      'type': type,
    };
  }

  factory BackendPoolResponse.fromMap(Map<String, dynamic> map) {
    return BackendPoolResponse(
      backends: (() {
        final guardedValue = map['backends'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BackendResponse>(
            guardedValue,
            (value) =>
                BackendResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      healthProbeSettings: (() {
        final guardedValue = map['healthProbeSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancingSettings: (() {
        final guardedValue = map['loadBalancingSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceState: pulumi.Input.fromValue(map['resourceState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
