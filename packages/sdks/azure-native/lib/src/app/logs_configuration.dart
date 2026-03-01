// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Open Telemetry logs
class LogsConfiguration {
  /// Open telemetry logs destinations
  final List<String>? destinations;

  /// Creates a new [LogsConfiguration].
  /// [destinations] Open telemetry logs destinations
  LogsConfiguration({
    this.destinations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations,
    };
  }

  factory LogsConfiguration.fromMap(Map<String, dynamic> map) {
    return LogsConfiguration(
      destinations: map['destinations'] == null ? null : (map['destinations'] as List).cast<String>(),
    );
  }
}

