// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_recording_s3_location.dart';

class AgentcoreBrowserRecording {
  /// Whether to enable recording for browser sessions. Defaults to `false`.
  final pulumi.Input<bool>? enabled;
  /// S3 location where browser session recordings are stored. See `s3_location` below.
  final pulumi.Input<AgentcoreBrowserRecordingS3Location>? s3Location;

  /// Creates a new [AgentcoreBrowserRecording].
  /// [enabled] Whether to enable recording for browser sessions. Defaults to `false`.
  /// [s3Location] S3 location where browser session recordings are stored. See `s3_location` below.
  AgentcoreBrowserRecording({
    this.enabled,
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      's3Location': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserRecordingS3Location, Map<String, dynamic>>(s3Location, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserRecording.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserRecording(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      s3Location: map['s3Location'] == null ? null : ((AgentcoreBrowserRecordingS3Location.fromMap((map['s3Location']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

