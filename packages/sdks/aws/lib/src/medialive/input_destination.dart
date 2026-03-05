// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InputDestination {
  /// A unique name for the location the RTMP stream is being pushed to.
  final pulumi.Input<String> streamName;

  /// Creates a new [InputDestination].
  /// [streamName] A unique name for the location the RTMP stream is being pushed to.
  InputDestination({
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'streamName': streamName,
    };
  }

  factory InputDestination.fromMap(Map<String, dynamic> map) {
    return InputDestination(
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
    );
  }
}

