// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of Open Telemetry logs
class LogsConfigurationResponse {
  /// Open telemetry logs destinations
  final pulumi.Input<List<String>>? destinations;

  /// Creates a new [LogsConfigurationResponse].
  /// [destinations] Open telemetry logs destinations
  LogsConfigurationResponse({
    this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
    };
  }

  factory LogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigurationResponse(
      destinations: map['destinations'] == null ? null : ((map['destinations']! as List).cast<String>()).input(),
    );
  }
}

