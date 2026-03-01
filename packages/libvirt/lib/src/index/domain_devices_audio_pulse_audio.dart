// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_audio_pulse_audio_input.dart';
import 'domain_devices_audio_pulse_audio_output.dart';

class DomainDevicesAudioPulseAudio {
  /// Configures the output settings for the PipeWire audio device.
  final DomainDevicesAudioPulseAudioInput? input;
  /// Configures the output settings for the PipeWire audio device.
  final DomainDevicesAudioPulseAudioOutput? output;
  /// Specifies the server name for the PulseAudio audio backend configuration.
  final String? serverName;

  /// Creates a new [DomainDevicesAudioPulseAudio].
  /// [input] Configures the output settings for the PipeWire audio device.
  /// [output] Configures the output settings for the PipeWire audio device.
  /// [serverName] Specifies the server name for the PulseAudio audio backend configuration.
  DomainDevicesAudioPulseAudio({
    this.input,
    this.output,
    this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input == null ? null : input!.toMap(),
      'output': ?output == null ? null : output!.toMap(),
      'serverName': ?serverName,
    };
  }

  factory DomainDevicesAudioPulseAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioPulseAudio(
      input: map['input'] == null ? null : DomainDevicesAudioPulseAudioInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: map['output'] == null ? null : DomainDevicesAudioPulseAudioOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
    );
  }
}

