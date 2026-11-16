// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_audio.dart';
import 'project_override_configuration_document.dart';
import 'project_override_configuration_image.dart';
import 'project_override_configuration_modality_routing.dart';
import 'project_override_configuration_video.dart';

class ProjectOverrideConfiguration {
  /// Overrides for audio files. See `override_configuration.audio` Block below.
  final pulumi.Input<ProjectOverrideConfigurationAudio?>? audio;
  /// Overrides for documents. See `override_configuration.document` Block below.
  final pulumi.Input<ProjectOverrideConfigurationDocument?>? document;
  /// Overrides for images. See `override_configuration.image` Block below.
  final pulumi.Input<ProjectOverrideConfigurationImage?>? image;
  /// Modality to process each file type as. See `modalityRouting` Block below.
  final pulumi.Input<ProjectOverrideConfigurationModalityRouting?>? modalityRouting;
  /// Overrides for videos. See `override_configuration.video` Block below.
  final pulumi.Input<ProjectOverrideConfigurationVideo?>? video;

  /// Creates a new [ProjectOverrideConfiguration].
  /// [audio] Overrides for audio files. See `override_configuration.audio` Block below.
  /// [document] Overrides for documents. See `override_configuration.document` Block below.
  /// [image] Overrides for images. See `override_configuration.image` Block below.
  /// [modalityRouting] Modality to process each file type as. See `modalityRouting` Block below.
  /// [video] Overrides for videos. See `override_configuration.video` Block below.
  const ProjectOverrideConfiguration({
    this.audio,
    this.document,
    this.image,
    this.modalityRouting,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'document': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationDocument, Map<String, dynamic>>(document, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'modalityRouting': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationModalityRouting, Map<String, dynamic>>(modalityRouting, (value) => value.toMap()),
      'video': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationVideo, Map<String, dynamic>>(video, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfiguration(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modalityRouting: (() { final guardedValue = map['modalityRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationModalityRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      video: (() { final guardedValue = map['video']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationVideo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
