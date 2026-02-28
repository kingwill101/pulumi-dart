// ignore_for_file: unused_element, unnecessary_cast

import 'latency_criteria.dart';

/// An SLI measuring performance on a well-known service type. Performance will be computed on the basis of pre-defined metrics. The type of the service_resource determines the metrics to use and the service_resource.labels and metric_labels are used to construct a monitoring filter to filter that metric down to just the data relevant to this service.
class BasicSli {
  /// Good service is defined to be the count of requests made to this service that return successfully.
  final Map<String, dynamic>? availability;

  /// Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  final LatencyCriteria? latency;

  /// OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  final List<String>? location;

  /// OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  final List<String>? method;

  /// OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  final List<String>? version;

  /// Creates a new [BasicSli].
  /// [availability] Good service is defined to be the count of requests made to this service that return successfully.
  /// [latency] Good service is defined to be the count of requests made to this service that are fast enough with respect to latency.threshold.
  /// [location] OPTIONAL: The set of locations to which this SLI is relevant. Telemetry from other locations will not be used to calculate performance for this SLI. If omitted, this SLI applies to all locations in which the Service has activity. For service types that don't support breaking down by location, setting this field will result in an error.
  /// [method] OPTIONAL: The set of RPCs to which this SLI is relevant. Telemetry from other methods will not be used to calculate performance for this SLI. If omitted, this SLI applies to all the Service's methods. For service types that don't support breaking down by method, setting this field will result in an error.
  /// [version] OPTIONAL: The set of API versions to which this SLI is relevant. Telemetry from other API versions will not be used to calculate performance for this SLI. If omitted, this SLI applies to all API versions. For service types that don't support breaking down by version, setting this field will result in an error.
  BasicSli({
    this.availability,
    this.latency,
    this.location,
    this.method,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityValue = availability;
    if (availabilityValue != null) {
      map['availability'] = availabilityValue;
    }
    final latencyValue = latency;
    if (latencyValue != null) {
      map['latency'] = latencyValue.toMap();
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory BasicSli.fromMap(Map<String, dynamic> map) {
    return BasicSli(
      availability: map['availability'] == null
          ? null
          : (map['availability'] as Map).cast<String, dynamic>(),
      latency: map['latency'] == null
          ? null
          : LatencyCriteria.fromMap(
              (map['latency'] as Map).cast<String, dynamic>()),
      location: map['location'] == null
          ? null
          : (map['location'] as List).cast<String>(),
      method:
          map['method'] == null ? null : (map['method'] as List).cast<String>(),
      version: map['version'] == null
          ? null
          : (map['version'] as List).cast<String>(),
    );
  }
}
