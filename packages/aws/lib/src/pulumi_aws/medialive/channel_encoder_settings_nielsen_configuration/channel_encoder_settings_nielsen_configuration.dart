// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsNielsenConfiguration {
  /// Enter the Distributor ID assigned to your organization by Nielsen.
  final String? distributorId;

  /// Enables Nielsen PCM to ID3 tagging.
  final String? nielsenPcmToId3Tagging;

  ChannelEncoderSettingsNielsenConfiguration({
    this.distributorId,
    this.nielsenPcmToId3Tagging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributorIdValue = distributorId;
    if (distributorIdValue != null) {
      map['distributorId'] = distributorIdValue;
    }
    final nielsenPcmToId3TaggingValue = nielsenPcmToId3Tagging;
    if (nielsenPcmToId3TaggingValue != null) {
      map['nielsenPcmToId3Tagging'] = nielsenPcmToId3TaggingValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsNielsenConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsNielsenConfiguration(
      distributorId:
          map['distributorId'] == null ? null : map['distributorId'] as String,
      nielsenPcmToId3Tagging: map['nielsenPcmToId3Tagging'] == null
          ? null
          : map['nielsenPcmToId3Tagging'] as String,
    );
  }
}
