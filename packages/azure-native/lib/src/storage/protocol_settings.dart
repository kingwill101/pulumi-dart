// ignore_for_file: unused_element, unnecessary_cast

import 'smb_setting.dart';

/// Protocol settings for file service
class ProtocolSettings {
  /// Setting for SMB protocol
  final SmbSetting? smb;

  /// Creates a new [ProtocolSettings].
  /// [smb] Setting for SMB protocol
  ProtocolSettings({
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return ProtocolSettings(
      smb: map['smb'] == null ? null : SmbSetting.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

