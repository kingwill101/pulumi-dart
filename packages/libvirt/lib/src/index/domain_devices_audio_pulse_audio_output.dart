// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioPulseAudioOutput {
  /// Sets the output latency for the PipeWire audio device.
  final double? latency;
  /// Sets the name for the PipeWire audio output.
  final String? name;
  /// Sets the stream name for the PipeWire audio output.
  final String? streamName;

  /// Creates a new [DomainDevicesAudioPulseAudioOutput].
  /// [latency] Sets the output latency for the PipeWire audio device.
  /// [name] Sets the name for the PipeWire audio output.
  /// [streamName] Sets the stream name for the PipeWire audio output.
  DomainDevicesAudioPulseAudioOutput({
    this.latency,
    this.name,
    this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latency': ?latency,
      'name': ?name,
      'streamName': ?streamName,
    };
  }

  factory DomainDevicesAudioPulseAudioOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudioOutput(
      latency: map['latency'] == null ? null : map['latency'] as double,
      name: map['name'] == null ? null : map['name'] as String,
      streamName: map['streamName'] == null ? null : map['streamName'] as String,
    );
  }
}

