// ignore_for_file: unused_element, unnecessary_cast


/// Management RP details.
class ResourceProviderDetailsResponse {
  /// Resource provider namespace.
  final String resourceProviderNamespace;

  /// Creates a new [ResourceProviderDetailsResponse].
  /// [resourceProviderNamespace] Resource provider namespace.
  ResourceProviderDetailsResponse({
    required this.resourceProviderNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceProviderNamespace': resourceProviderNamespace,
    };
  }

  factory ResourceProviderDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderDetailsResponse(
      resourceProviderNamespace: map['resourceProviderNamespace'] as String,
    );
  }
}

