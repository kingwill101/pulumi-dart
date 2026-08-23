// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelInputAttachmentInputSettingsVideoSelector {
  final pulumi.Input<String>? colorSpace;
  final pulumi.Input<String>? colorSpaceUsage;

  /// Creates a new [ChannelInputAttachmentInputSettingsVideoSelector].
  /// [colorSpace] Optional.
  /// [colorSpaceUsage] Optional.
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
