// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_audio_sdl_input.dart';
import 'domain_devices_audio_sdl_output.dart';

class DomainDevicesAudioSdl {
  /// Sets the driver for the SDL audio backend configuration.
  final String? driver;
  /// Specifies the output settings for the SDL audio backend.
  final DomainDevicesAudioSdlInput? input;
  /// Specifies the output settings for the SDL audio backend.
  final DomainDevicesAudioSdlOutput? output;

  /// Creates a new [DomainDevicesAudioSdl].
  /// [driver] Sets the driver for the SDL audio backend configuration.
  /// [input] Specifies the output settings for the SDL audio backend.
  /// [output] Specifies the output settings for the SDL audio backend.
  DomainDevicesAudioSdl({
    this.driver,
    this.input,
    this.output,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'input': ?input == null ? null : input!.toMap(),
      'output': ?output == null ? null : output!.toMap(),
    };
  }

  factory DomainDevicesAudioSdl.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioSdl(
      driver: map['driver'] == null ? null : map['driver'] as String,
      input: map['input'] == null ? null : DomainDevicesAudioSdlInput.fromMap((map['input'] as Map).cast<String, dynamic>()),
      output: map['output'] == null ? null : DomainDevicesAudioSdlOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
    );
  }
}

