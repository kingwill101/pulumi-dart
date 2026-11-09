// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_standard_output_configuration_audio.dart';
import 'project_standard_output_configuration_document.dart';
import 'project_standard_output_configuration_image.dart';
import 'project_standard_output_configuration_video.dart';

class ProjectStandardOutputConfiguration {
  /// Standard output for audio files. See `standard_output_configuration.audio` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationAudio?>? audio;
  /// Standard output for documents. See `standard_output_configuration.document` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationDocument?>? document;
  /// Standard output for images. See `standard_output_configuration.image` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationImage?>? image;
  /// Standard output for videos. See `standard_output_configuration.video` Block below.
  final pulumi.Input<ProjectStandardOutputConfigurationVideo?>? video;

  /// Creates a new [ProjectStandardOutputConfiguration].
  /// [audio] Standard output for audio files. See `standard_output_configuration.audio` Block below.
  /// [document] Standard output for documents. See `standard_output_configuration.document` Block below.
  /// [image] Standard output for images. See `standard_output_configuration.image` Block below.
  /// [video] Standard output for videos. See `standard_output_configuration.video` Block below.
  const ProjectStandardOutputConfiguration({
    this.audio,
    this.document,
    this.image,
    this.video,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audio': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'document': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationDocument, Map<String, dynamic>>(document, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'video': ?pulumi.Input.mapOptionalInputValue<ProjectStandardOutputConfigurationVideo, Map<String, dynamic>>(video, (value) => value.toMap()),
    };
  }

  factory ProjectStandardOutputConfiguration.fromMap(Map<String, dynamic> map) {
    return ProjectStandardOutputConfiguration(
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationDocument.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      video: (() { final guardedValue = map['video']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectStandardOutputConfigurationVideo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
