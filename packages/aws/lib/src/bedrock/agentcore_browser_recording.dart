// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_browser_recording_s3_location.dart';

class AgentcoreBrowserRecording {
  /// Whether to enable recording for browser sessions. Defaults to `false`.
  final bool? enabled;

  /// S3 location where browser session recordings are stored. See `s3_location` below.
  final AgentcoreBrowserRecordingS3Location? s3Location;

  /// Creates a new [AgentcoreBrowserRecording].
  /// [enabled] Whether to enable recording for browser sessions. Defaults to `false`.
  /// [s3Location] S3 location where browser session recordings are stored. See `s3_location` below.
  AgentcoreBrowserRecording({this.enabled, this.s3Location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      's3Location': ?s3Location == null ? null : s3Location!.toMap(),
    };
  }

  factory AgentcoreBrowserRecording.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserRecording(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      s3Location: map['s3Location'] == null
          ? null
          : AgentcoreBrowserRecordingS3Location.fromMap(
              (map['s3Location'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
