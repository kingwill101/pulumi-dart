// ignore_for_file: unused_element, unnecessary_cast


class ResourceTypeExtensionResponse {
  /// The endpoint uri.
  final String? endpointUri;
  /// The extension categories.
  final List<String>? extensionCategories;
  /// The timeout.
  final String? timeout;

  /// Creates a new [ResourceTypeExtensionResponse].
  /// [endpointUri] The endpoint uri.
  /// [extensionCategories] The extension categories.
  /// [timeout] The timeout.
  ResourceTypeExtensionResponse({
    this.endpointUri,
    this.extensionCategories,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointUri': ?endpointUri,
      'extensionCategories': ?extensionCategories,
      'timeout': ?timeout,
    };
  }

  factory ResourceTypeExtensionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtensionResponse(
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      extensionCategories: map['extensionCategories'] == null ? null : (map['extensionCategories'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

