// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Duration based custom options to copy
class CustomCopyOptionResponse {
  /// Data copied after given timespan
  final pulumi.Input<String>? duration;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CustomCopyOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [CustomCopyOptionResponse].
  /// [duration] Data copied after given timespan
  /// [objectType] Type of the specific object - used for deserializing
  CustomCopyOptionResponse({
    this.duration,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'objectType': objectType,
    };
  }

  factory CustomCopyOptionResponse.fromMap(Map<String, dynamic> map) {
    return CustomCopyOptionResponse(
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      objectType: (map['objectType'] as String).input(),
    );
  }
}

