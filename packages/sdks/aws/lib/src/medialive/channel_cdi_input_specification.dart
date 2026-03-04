// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelCdiInputSpecification {
  /// Maximum CDI input resolution.
  final pulumi.Input<String> resolution;

  /// Creates a new [ChannelCdiInputSpecification].
  /// [resolution] Maximum CDI input resolution.
  ChannelCdiInputSpecification({required this.resolution});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resolution': resolution};
  }

  factory ChannelCdiInputSpecification.fromMap(Map<String, dynamic> map) {
    return ChannelCdiInputSpecification(
      resolution: pulumi.Input.fromValue(map['resolution'] as String),
    );
  }
}
