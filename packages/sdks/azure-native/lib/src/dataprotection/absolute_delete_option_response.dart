// ignore_for_file: unused_element, unnecessary_cast


/// Delete option with duration
class AbsoluteDeleteOptionResponse {
  /// Duration of deletion after given timespan
  final String duration;
  /// Type of the specific object - used for deserializing
  /// Expected value is 'AbsoluteDeleteOption'.
  final String objectType;

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
      duration: map['duration'] as String,
      objectType: map['objectType'] as String,
    );
  }
}

