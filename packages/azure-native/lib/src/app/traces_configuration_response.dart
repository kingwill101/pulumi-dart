// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Open Telemetry traces
class TracesConfigurationResponse {
  /// Open telemetry traces destinations
  final List<String>? destinations;
  /// Boolean indicating if including dapr traces
  final bool? includeDapr;

  /// Creates a new [TracesConfigurationResponse].
  /// [destinations] Open telemetry traces destinations
  /// [includeDapr] Boolean indicating if including dapr traces
  TracesConfigurationResponse({
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
      destinations: map['destinations'] == null ? null : (map['destinations'] as List).cast<String>(),
      includeDapr: map['includeDapr'] == null ? null : map['includeDapr'] as bool,
    );
  }
}

