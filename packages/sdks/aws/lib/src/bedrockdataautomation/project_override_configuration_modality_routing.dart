// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectOverrideConfigurationModalityRouting {
  /// Modality to process JPEG files as.
  final pulumi.Input<String?>? jpeg;
  /// Modality to process MOV files as.
  final pulumi.Input<String?>? mov;
  /// Modality to process MP4 files as.
  final pulumi.Input<String?>? mp4;
  /// Modality to process PNG files as.
  final pulumi.Input<String?>? png;

  /// Creates a new [ProjectOverrideConfigurationModalityRouting].
  /// [jpeg] Modality to process JPEG files as.
  /// [mov] Modality to process MOV files as.
  /// [mp4] Modality to process MP4 files as.
  /// [png] Modality to process PNG files as.
  const ProjectOverrideConfigurationModalityRouting({
    this.jpeg,
    this.mov,
    this.mp4,
    this.png,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jpeg': ?jpeg,
      'mov': ?mov,
      'mp4': ?mp4,
      'png': ?png,
    };
  }

  factory ProjectOverrideConfigurationModalityRouting.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationModalityRouting(
      jpeg: (() { final guardedValue = map['jpeg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mov: (() { final guardedValue = map['mov']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mp4: (() { final guardedValue = map['mp4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      png: (() { final guardedValue = map['png']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
