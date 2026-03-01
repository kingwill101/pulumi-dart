// ignore_for_file: unused_element, unnecessary_cast


/// Default source properties
class DefaultResourceProperties {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'DefaultResourceProperties'.
  final String objectType;

  /// Creates a new [DefaultResourceProperties].
  /// [objectType] Type of the specific object - used for deserializing
  DefaultResourceProperties({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory DefaultResourceProperties.fromMap(Map<String, dynamic> map) {
    return DefaultResourceProperties(
      objectType: map['objectType'] as String,
    );
  }
}

