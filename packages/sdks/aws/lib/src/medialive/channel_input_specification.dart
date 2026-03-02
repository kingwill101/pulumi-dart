// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputSpecification {
  final pulumi.Input<String> codec;
  final pulumi.Input<String> inputResolution;
  final pulumi.Input<String> maximumBitrate;

  /// Creates a new [ChannelInputSpecification].
  /// [codec] Required.
  /// [inputResolution] Required.
  /// [maximumBitrate] Required.
  ChannelInputSpecification({
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
      codec: (map['codec'] as String).input(),
      inputResolution: (map['inputResolution'] as String).input(),
      maximumBitrate: (map['maximumBitrate'] as String).input(),
    );
  }
}

