// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsNielsenConfiguration {
  /// Enter the Distributor ID assigned to your organization by Nielsen.
  final String? distributorId;

  /// Enables Nielsen PCM to ID3 tagging.
  final String? nielsenPcmToId3Tagging;

  /// Creates a new [ChannelEncoderSettingsNielsenConfiguration].
  /// [distributorId] Enter the Distributor ID assigned to your organization by Nielsen.
  /// [nielsenPcmToId3Tagging] Enables Nielsen PCM to ID3 tagging.
  ChannelEncoderSettingsNielsenConfiguration({
    this.distributorId,
    this.nielsenPcmToId3Tagging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributorId': ?distributorId,
      'nielsenPcmToId3Tagging': ?nielsenPcmToId3Tagging,
    };
  }

  factory ChannelEncoderSettingsNielsenConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ChannelEncoderSettingsNielsenConfiguration(
      distributorId: map['distributorId'] == null
          ? null
          : map['distributorId'] as String,
      nielsenPcmToId3Tagging: map['nielsenPcmToId3Tagging'] == null
          ? null
          : map['nielsenPcmToId3Tagging'] as String,
    );
  }
}
