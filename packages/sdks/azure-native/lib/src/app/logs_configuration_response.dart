// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry logs
class LogsConfigurationResponse {
  /// Open telemetry logs destinations
  final pulumi.Input<List<String>>? destinations;

  /// Creates a new [LogsConfigurationResponse].
  /// [destinations] Open telemetry logs destinations
  LogsConfigurationResponse({this.destinations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destinations': ?destinations};
  }

  factory LogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigurationResponse(
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
