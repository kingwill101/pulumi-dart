// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry logs
class LogsConfiguration {
  /// Open telemetry logs destinations
  final pulumi.Input<List<String>>? destinations;

  /// Creates a new [LogsConfiguration].
  /// [destinations] Open telemetry logs destinations
  const LogsConfiguration({
    this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
    };
  }

  factory LogsConfiguration.fromMap(Map<String, dynamic> map) {
    return LogsConfiguration(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
