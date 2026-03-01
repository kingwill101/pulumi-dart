// ignore_for_file: unused_element, unnecessary_cast


/// Copy on Expiry Option
class CopyOnExpiryOption {
  /// Type of the specific object - used for deserializing
  /// Expected value is 'CopyOnExpiryOption'.
  final String objectType;

  /// Creates a new [CopyOnExpiryOption].
  /// [objectType] Type of the specific object - used for deserializing
  CopyOnExpiryOption({
    required this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectType': objectType,
    };
  }

  factory CopyOnExpiryOption.fromMap(Map<String, dynamic> map) {
    return CopyOnExpiryOption(
      objectType: map['objectType'] as String,
    );
  }
}

