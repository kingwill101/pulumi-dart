// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamStreamModeDetails {
  /// Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`.
  final pulumi.Input<String> streamMode;

  /// Creates a new [StreamStreamModeDetails].
  /// [streamMode] Specifies the capacity mode of the stream. Must be either `PROVISIONED` or `ON_DEMAND`.
  StreamStreamModeDetails({required this.streamMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'streamMode': streamMode};
  }

  factory StreamStreamModeDetails.fromMap(Map<String, dynamic> map) {
    return StreamStreamModeDetails(
      streamMode: pulumi.Input.fromValue(map['streamMode'] as String),
    );
  }
}
