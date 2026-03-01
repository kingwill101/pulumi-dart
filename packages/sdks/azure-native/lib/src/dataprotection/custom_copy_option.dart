// ignore_for_file: unused_element, unnecessary_cast


/// Duration based custom options to copy
class CustomCopyOption {
  /// Data copied after given timespan
  final String? duration;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CustomCopyOption'.
  final String objectType;

  /// Creates a new [CustomCopyOption].
  /// [duration] Data copied after given timespan
  /// [objectType] Type of the specific object - used for deserializing
  CustomCopyOption({
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
      duration: map['duration'] == null ? null : map['duration'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

