// ignore_for_file: unused_element, unnecessary_cast


class ResourceTypeExtension {
  /// The endpoint uri.
  final String? endpointUri;
  /// The extension categories.
  final List<String>? extensionCategories;
  /// The timeout.
  final String? timeout;

  /// Creates a new [ResourceTypeExtension].
  /// [endpointUri] The endpoint uri.
  /// [extensionCategories] The extension categories.
  /// [timeout] The timeout.
  ResourceTypeExtension({
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

  factory ResourceTypeExtension.fromMap(Map<String, dynamic> map) {
    return ResourceTypeExtension(
      endpointUri: map['endpointUri'] == null ? null : map['endpointUri'] as String,
      extensionCategories: map['extensionCategories'] == null ? null : (map['extensionCategories'] as List).cast<String>(),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

