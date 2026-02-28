// ignore_for_file: unused_element, unnecessary_cast

import 'slo_basic_sli_availability.dart';
import 'slo_basic_sli_latency.dart';

class SloBasicSli {
  /// Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// Structure is documented below.
  final SloBasicSliAvailability? availability;

  /// Parameters for a latency threshold SLI.
  /// Structure is documented below.
  final SloBasicSliLatency? latency;

  /// An optional set of locations to which this SLI is relevant.
  /// Telemetry from other locations will not be used to calculate
  /// performance for this SLI. If omitted, this SLI applies to all
  /// locations in which the Service has activity. For service types
  /// that don't support breaking down by location, setting this
  /// field will result in an error.
  final List<String>? locations;

  /// An optional set of RPCs to which this SLI is relevant.
  /// Telemetry from other methods will not be used to calculate
  /// performance for this SLI. If omitted, this SLI applies to all
  /// the Service's methods. For service types that don't support
  /// breaking down by method, setting this field will result in an
  /// error.
  final List<String>? methods;

  /// The set of API versions to which this SLI is relevant.
  /// Telemetry from other API versions will not be used to
  /// calculate performance for this SLI. If omitted,
  /// this SLI applies to all API versions. For service types
  /// that don't support breaking down by version, setting this
  /// field will result in an error.
  final List<String>? versions;

  /// Creates a new [SloBasicSli].
  /// [availability] Availability based SLI, dervied from count of requests made to this service that return successfully.
  /// [latency] Parameters for a latency threshold SLI.
  /// [locations] An optional set of locations to which this SLI is relevant.
  /// [methods] An optional set of RPCs to which this SLI is relevant.
  /// [versions] The set of API versions to which this SLI is relevant.
  SloBasicSli({
    this.availability,
    this.latency,
    this.locations,
    this.methods,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityValue = availability;
    if (availabilityValue != null) {
      map['availability'] = availabilityValue.toMap();
    }
    final latencyValue = latency;
    if (latencyValue != null) {
      map['latency'] = latencyValue.toMap();
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = versionsValue;
    }
    return map;
  }

  factory SloBasicSli.fromMap(Map<String, dynamic> map) {
    return SloBasicSli(
      availability: map['availability'] == null
          ? null
          : SloBasicSliAvailability.fromMap(
              (map['availability'] as Map).cast<String, dynamic>()),
      latency: map['latency'] == null
          ? null
          : SloBasicSliLatency.fromMap(
              (map['latency'] as Map).cast<String, dynamic>()),
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      versions: map['versions'] == null
          ? null
          : (map['versions'] as List).cast<String>(),
    );
  }
}
