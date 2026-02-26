// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_browser_recording_s3_location/agentcore_browser_recording_s3_location.dart';

class AgentcoreBrowserRecording {
  /// Whether to enable recording for browser sessions. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  /// S3 location where browser session recordings are stored. See <span pulumi-lang-nodejs="`s3Location`" pulumi-lang-dotnet="`S3Location`" pulumi-lang-go="`s3Location`" pulumi-lang-python="`s3_location`" pulumi-lang-yaml="`s3Location`" pulumi-lang-java="`s3Location`">`s3_location`</span> below.
  final AgentcoreBrowserRecordingS3Location? s3Location;

  AgentcoreBrowserRecording({
    this.enabled,
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final s3LocationValue = s3Location;
    if (s3LocationValue != null) {
      map['s3Location'] = s3LocationValue.toMap();
    }
    return map;
  }

  factory AgentcoreBrowserRecording.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserRecording(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      s3Location: map['s3Location'] == null
          ? null
          : AgentcoreBrowserRecordingS3Location.fromMap(
              (map['s3Location'] as Map).cast<String, dynamic>()),
    );
  }
}
