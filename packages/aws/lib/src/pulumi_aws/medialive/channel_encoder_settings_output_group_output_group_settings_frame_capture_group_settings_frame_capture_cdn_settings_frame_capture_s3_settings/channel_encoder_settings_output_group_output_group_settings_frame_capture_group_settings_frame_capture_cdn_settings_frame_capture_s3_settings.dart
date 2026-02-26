// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings {
  /// Specify the canned ACL to apply to each S3 request.
  final String? cannedAcl;

  ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings({
    this.cannedAcl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cannedAclValue = cannedAcl;
    if (cannedAclValue != null) {
      map['cannedAcl'] = cannedAclValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsOutputGroupOutputGroupSettingsFrameCaptureGroupSettingsFrameCaptureCdnSettingsFrameCaptureS3Settings(
      cannedAcl: map['cannedAcl'] == null ? null : map['cannedAcl'] as String,
    );
  }
}
