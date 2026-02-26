// ignore_for_file: unused_element, unnecessary_cast

class ChannelCdiInputSpecification {
  /// Maximum CDI input resolution.
  final String resolution;

  ChannelCdiInputSpecification({
    required this.resolution,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resolution'] = resolution;
    return map;
  }

  factory ChannelCdiInputSpecification.fromMap(Map<String, dynamic> map) {
    return ChannelCdiInputSpecification(
      resolution: map['resolution'] as String,
    );
  }
}
