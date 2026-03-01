// ignore_for_file: unused_element, unnecessary_cast


/// Information about the formal API definition for the app.
class ApiDefinitionInfo {
  /// The URL of the API definition.
  final String? url;

  /// Creates a new [ApiDefinitionInfo].
  /// [url] The URL of the API definition.
  ApiDefinitionInfo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory ApiDefinitionInfo.fromMap(Map<String, dynamic> map) {
    return ApiDefinitionInfo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

