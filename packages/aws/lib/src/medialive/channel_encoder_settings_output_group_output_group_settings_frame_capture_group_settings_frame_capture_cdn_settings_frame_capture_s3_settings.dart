// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings {
  /// Specify the canned ACL to apply to each S3 request.
  final String? cannedAcl;

  /// Creates a new [ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings].
  /// [cannedAcl] Specify the canned ACL to apply to each S3 request.
  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings({
    this.cannedAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cannedAcl': ?cannedAcl};
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings(
      cannedAcl: map['cannedAcl'] == null ? null : map['cannedAcl'] as String,
    );
  }
}
