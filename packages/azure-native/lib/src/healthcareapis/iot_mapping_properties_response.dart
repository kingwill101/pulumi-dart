// ignore_for_file: unused_element, unnecessary_cast


/// The mapping content.
class IotMappingPropertiesResponse {
  /// The mapping.
  final dynamic content;

  /// Creates a new [IotMappingPropertiesResponse].
  /// [content] The mapping.
  IotMappingPropertiesResponse({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory IotMappingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IotMappingPropertiesResponse(
      content: map['content'] == null ? null : map['content'],
    );
  }
}

