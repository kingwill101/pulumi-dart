// ignore_for_file: unused_element, unnecessary_cast

class ChannelCdiInputSpecification {
  /// Maximum CDI input resolution.
  final String resolution;

  /// Creates a new [ChannelCdiInputSpecification].
  /// [resolution] Maximum CDI input resolution.
  ChannelCdiInputSpecification({required this.resolution});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resolution': resolution};
  }

  factory ChannelCdiInputSpecification.fromMap(Map<String, dynamic> map) {
    return ChannelCdiInputSpecification(
      resolution: map['resolution'] as String,
    );
  }
}
