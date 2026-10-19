// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsVideoSelector {
  /// Color space of the input.
  final pulumi.Input<String?>? colorSpace;
  /// How MediaLive applies the color space metadata from the input.
  final pulumi.Input<String?>? colorSpaceUsage;

  /// Creates a new [ChannelInputAttachmentInputSettingsVideoSelector].
  /// [colorSpace] Color space of the input.
  /// [colorSpaceUsage] How MediaLive applies the color space metadata from the input.
  const ChannelInputAttachmentInputSettingsVideoSelector({
    this.colorSpace,
    this.colorSpaceUsage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colorSpace': ?colorSpace,
      'colorSpaceUsage': ?colorSpaceUsage,
    };
  }

  factory ChannelInputAttachmentInputSettingsVideoSelector.fromMap(Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsVideoSelector(
      colorSpace: (() { final guardedValue = map['colorSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      colorSpaceUsage: (() { final guardedValue = map['colorSpaceUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
