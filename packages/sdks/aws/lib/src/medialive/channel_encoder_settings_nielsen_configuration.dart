// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsNielsenConfiguration {
  /// Enter the Distributor ID assigned to your organization by Nielsen.
  final pulumi.Input<String>? distributorId;
  /// Enables Nielsen PCM to ID3 tagging.
  final pulumi.Input<String>? nielsenPcmToId3Tagging;

  /// Creates a new [ChannelEncoderSettingsNielsenConfiguration].
  /// [distributorId] Enter the Distributor ID assigned to your organization by Nielsen.
  /// [nielsenPcmToId3Tagging] Enables Nielsen PCM to ID3 tagging.
  const ChannelEncoderSettingsNielsenConfiguration({
    this.distributorId,
    this.nielsenPcmToId3Tagging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distributorId': ?distributorId,
      'nielsenPcmToId3Tagging': ?nielsenPcmToId3Tagging,
    };
  }

  factory ChannelEncoderSettingsNielsenConfiguration.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsNielsenConfiguration(
      distributorId: (() { final guardedValue = map['distributorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nielsenPcmToId3Tagging: (() { final guardedValue = map['nielsenPcmToId3Tagging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

