// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry traces
class TracesConfigurationResponse {
  /// Open telemetry traces destinations
  final pulumi.Input<List<String>>? destinations;
  /// Boolean indicating if including dapr traces
  final pulumi.Input<bool>? includeDapr;

  /// Creates a new [TracesConfigurationResponse].
  /// [destinations] Open telemetry traces destinations
  /// [includeDapr] Boolean indicating if including dapr traces
  const TracesConfigurationResponse({
    this.destinations,
    this.includeDapr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'includeDapr': ?includeDapr,
    };
  }

  factory TracesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TracesConfigurationResponse(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeDapr: (() { final guardedValue = map['includeDapr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
