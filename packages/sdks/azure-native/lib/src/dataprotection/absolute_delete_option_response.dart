// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delete option with duration
class AbsoluteDeleteOptionResponse {
  /// Duration of deletion after given timespan
  final pulumi.Input<String> duration;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AbsoluteDeleteOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [AbsoluteDeleteOptionResponse].
  /// [duration] Duration of deletion after given timespan
  /// [objectType] Type of the specific object - used for deserializing
  AbsoluteDeleteOptionResponse({
    required this.duration,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'objectType': objectType,
    };
  }

  factory AbsoluteDeleteOptionResponse.fromMap(Map<String, dynamic> map) {
    return AbsoluteDeleteOptionResponse(
      duration: (map['duration'] as String).input(),
      objectType: (map['objectType'] as String).input(),
    );
  }
}

