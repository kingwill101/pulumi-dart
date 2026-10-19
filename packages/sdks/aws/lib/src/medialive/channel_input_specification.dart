// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputSpecification {
  /// Codec to use for the input.
  final pulumi.Input<String> codec;
  /// Maximum input resolution.
  final pulumi.Input<String> inputResolution;
  /// Maximum input bitrate for an input.
  final pulumi.Input<String> maximumBitrate;

  /// Creates a new [ChannelInputSpecification].
  /// [codec] Codec to use for the input.
  /// [inputResolution] Maximum input resolution.
  /// [maximumBitrate] Maximum input bitrate for an input.
  const ChannelInputSpecification({
    required this.codec,
    required this.inputResolution,
    required this.maximumBitrate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codec': codec,
      'inputResolution': inputResolution,
      'maximumBitrate': maximumBitrate,
    };
  }

  factory ChannelInputSpecification.fromMap(Map<String, dynamic> map) {
    return ChannelInputSpecification(
      codec: pulumi.Input.fromValue(map['codec'] as String),
      inputResolution: pulumi.Input.fromValue(map['inputResolution'] as String),
      maximumBitrate: pulumi.Input.fromValue(map['maximumBitrate'] as String),
    );
  }
}
