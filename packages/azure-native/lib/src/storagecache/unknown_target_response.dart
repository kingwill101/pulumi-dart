// ignore_for_file: unused_element, unnecessary_cast


/// Properties pertaining to the UnknownTarget
class UnknownTargetResponse {
  /// Dictionary of string->string pairs containing information about the Storage Target.
  final Map<String, String>? attributes;

  /// Creates a new [UnknownTargetResponse].
  /// [attributes] Dictionary of string->string pairs containing information about the Storage Target.
  UnknownTargetResponse({
    this.attributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
    };
  }

  factory UnknownTargetResponse.fromMap(Map<String, dynamic> map) {
    return UnknownTargetResponse(
      attributes: map['attributes'] == null ? null : (map['attributes'] as Map).cast<String, String>(),
    );
  }
}

