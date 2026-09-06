// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Duration based custom options to copy
class CustomCopyOption {
  /// Data copied after given timespan
  final pulumi.Input<String?>? duration;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CustomCopyOption'.
  final pulumi.Input<String> objectType;

  /// Creates a new [CustomCopyOption].
  /// [duration] Data copied after given timespan
  /// [objectType] Type of the specific object - used for deserializing
  const CustomCopyOption({
    this.duration,
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'objectType': objectType,
    };
  }

  factory CustomCopyOption.fromMap(Map<String, dynamic> map) {
    return CustomCopyOption(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
    );
  }
}
