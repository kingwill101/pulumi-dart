// ignore_for_file: unused_element, unnecessary_cast

import 'backend_balancing_mode.dart';
import 'backend_preference.dart';

/// Message containing information of one individual backend.
class Backend {
  /// Specifies how to determine whether the backend of a load balancer can handle additional traffic or is fully loaded. For usage guidelines, see Connection balancing mode. Backends must use compatible balancing modes. For more information, see Supported balancing modes and target capacity settings and Restrictions and guidance for instance groups. Note: Currently, if you use the API to configure incompatible balancing modes, the configuration might be accepted even though it has no impact and is ignored. Specifically, Backend.maxUtilization is ignored when Backend.balancingMode is RATE. In the future, this incompatible combination will be rejected.
  final BackendBalancingMode? balancingMode;

  /// A multiplier applied to the backend's target capacity of its balancing mode. The default value is 1, which means the group serves up to 100% of its configured capacity (depending on balancingMode). A setting of 0 means the group is completely drained, offering 0% of its available capacity. The valid ranges are 0.0 and [0.1,1.0]. You cannot configure a setting larger than 0 and smaller than 0.1. You cannot configure a setting of 0 when there is only one backend attached to the backend service. Not available with backends that don't support using a balancingMode. This includes backends such as global internet NEGs, regional serverless NEGs, and PSC NEGs.
  final double? capacityScaler;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// This field designates whether this is a failover backend. More than one failover backend can be configured for a given BackendService.
  final bool? failover;

  /// The fully-qualified URL of an instance group or network endpoint group (NEG) resource. To determine what types of backends a load balancer supports, see the [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service#backends). You must use the *fully-qualified* URL (starting with https://www.googleapis.com/) to specify the instance group or NEG. Partial URLs are not supported.
  final String? group;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int? maxConnections;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int? maxConnectionsPerEndpoint;

  /// Defines a target maximum number of simultaneous connections. For usage guidelines, see Connection balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is RATE.
  final int? maxConnectionsPerInstance;

  /// Defines a maximum number of HTTP requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final int? maxRate;

  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final double? maxRatePerEndpoint;

  /// Defines a maximum target for requests per second (RPS). For usage guidelines, see Rate balancing mode and Utilization balancing mode. Not available if the backend's balancingMode is CONNECTION.
  final double? maxRatePerInstance;

  /// Optional parameter to define a target capacity for the UTILIZATION balancing mode. The valid range is [0.0, 1.0]. For usage guidelines, see Utilization balancing mode.
  final double? maxUtilization;

  /// This field indicates whether this backend should be fully utilized before sending traffic to backends with default preference. The possible values are: - PREFERRED: Backends with this preference level will be filled up to their capacity limits first, based on RTT. - DEFAULT: If preferred backends don't have enough capacity, backends in this layer would be used and traffic would be assigned based on the load balancing algorithm you use. This is the default
  final BackendPreference? preference;

  Backend({
    this.balancingMode,
    this.capacityScaler,
    this.description,
    this.failover,
    this.group,
    this.maxConnections,
    this.maxConnectionsPerEndpoint,
    this.maxConnectionsPerInstance,
    this.maxRate,
    this.maxRatePerEndpoint,
    this.maxRatePerInstance,
    this.maxUtilization,
    this.preference,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final balancingModeValue = balancingMode;
    if (balancingModeValue != null) {
      map['balancingMode'] = balancingModeValue.value;
    }
    final capacityScalerValue = capacityScaler;
    if (capacityScalerValue != null) {
      map['capacityScaler'] = capacityScalerValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverValue = failover;
    if (failoverValue != null) {
      map['failover'] = failoverValue;
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    final maxConnectionsValue = maxConnections;
    if (maxConnectionsValue != null) {
      map['maxConnections'] = maxConnectionsValue;
    }
    final maxConnectionsPerEndpointValue = maxConnectionsPerEndpoint;
    if (maxConnectionsPerEndpointValue != null) {
      map['maxConnectionsPerEndpoint'] = maxConnectionsPerEndpointValue;
    }
    final maxConnectionsPerInstanceValue = maxConnectionsPerInstance;
    if (maxConnectionsPerInstanceValue != null) {
      map['maxConnectionsPerInstance'] = maxConnectionsPerInstanceValue;
    }
    final maxRateValue = maxRate;
    if (maxRateValue != null) {
      map['maxRate'] = maxRateValue;
    }
    final maxRatePerEndpointValue = maxRatePerEndpoint;
    if (maxRatePerEndpointValue != null) {
      map['maxRatePerEndpoint'] = maxRatePerEndpointValue;
    }
    final maxRatePerInstanceValue = maxRatePerInstance;
    if (maxRatePerInstanceValue != null) {
      map['maxRatePerInstance'] = maxRatePerInstanceValue;
    }
    final maxUtilizationValue = maxUtilization;
    if (maxUtilizationValue != null) {
      map['maxUtilization'] = maxUtilizationValue;
    }
    final preferenceValue = preference;
    if (preferenceValue != null) {
      map['preference'] = preferenceValue.value;
    }
    return map;
  }

  factory Backend.fromMap(Map<String, dynamic> map) {
    return Backend(
      balancingMode: map['balancingMode'] == null
          ? null
          : BackendBalancingMode.fromValue(map['balancingMode'] as String),
      capacityScaler: map['capacityScaler'] == null
          ? null
          : map['capacityScaler'] as double,
      description:
          map['description'] == null ? null : map['description'] as String,
      failover: map['failover'] == null ? null : map['failover'] as bool,
      group: map['group'] == null ? null : map['group'] as String,
      maxConnections:
          map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxConnectionsPerEndpoint: map['maxConnectionsPerEndpoint'] == null
          ? null
          : map['maxConnectionsPerEndpoint'] as int,
      maxConnectionsPerInstance: map['maxConnectionsPerInstance'] == null
          ? null
          : map['maxConnectionsPerInstance'] as int,
      maxRate: map['maxRate'] == null ? null : map['maxRate'] as int,
      maxRatePerEndpoint: map['maxRatePerEndpoint'] == null
          ? null
          : map['maxRatePerEndpoint'] as double,
      maxRatePerInstance: map['maxRatePerInstance'] == null
          ? null
          : map['maxRatePerInstance'] as double,
      maxUtilization: map['maxUtilization'] == null
          ? null
          : map['maxUtilization'] as double,
      preference: map['preference'] == null
          ? null
          : BackendPreference.fromValue(map['preference'] as String),
    );
  }
}
