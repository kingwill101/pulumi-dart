// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry traces
class TracesConfiguration {
  /// Open telemetry traces destinations
  final pulumi.Input<List<String>>? destinations;
  /// Boolean indicating if including dapr traces
  final pulumi.Input<bool>? includeDapr;

  /// Creates a new [TracesConfiguration].
  /// [destinations] Open telemetry traces destinations
  /// [includeDapr] Boolean indicating if including dapr traces
  TracesConfiguration({
    this.destinations,
    this.includeDapr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
      'includeDapr': ?includeDapr,
    };
  }

  factory TracesConfiguration.fromMap(Map<String, dynamic> map) {
    return TracesConfiguration(
      destinations: map['destinations'] == null ? null : ((map['destinations'] as List).cast<String>()).input(),
      includeDapr: map['includeDapr'] == null ? null : (map['includeDapr'] as bool).input(),
    );
  }
}

