// ignore_for_file: unused_element, unnecessary_cast

class ChannelInputAttachmentInputSettingsVideoSelector {
  final String? colorSpace;
  final String? colorSpaceUsage;

  /// Creates a new [ChannelInputAttachmentInputSettingsVideoSelector].
  /// [colorSpace] Optional.
  /// [colorSpaceUsage] Optional.
  ChannelInputAttachmentInputSettingsVideoSelector({
    this.colorSpace,
    this.colorSpaceUsage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final colorSpaceValue = colorSpace;
    if (colorSpaceValue != null) {
      map['colorSpace'] = colorSpaceValue;
    }
    final colorSpaceUsageValue = colorSpaceUsage;
    if (colorSpaceUsageValue != null) {
      map['colorSpaceUsage'] = colorSpaceUsageValue;
    }
    return map;
  }

  factory ChannelInputAttachmentInputSettingsVideoSelector.fromMap(
      Map<String, dynamic> map) {
    return ChannelInputAttachmentInputSettingsVideoSelector(
      colorSpace:
          map['colorSpace'] == null ? null : map['colorSpace'] as String,
      colorSpaceUsage: map['colorSpaceUsage'] == null
          ? null
          : map['colorSpaceUsage'] as String,
    );
  }
}
