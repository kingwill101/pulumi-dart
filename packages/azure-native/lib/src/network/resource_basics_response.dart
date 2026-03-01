// ignore_for_file: unused_element, unnecessary_cast


/// Representation of basic resource information.
class ResourceBasicsResponse {
  /// List of IP address prefixes of the resource.
  final List<String>? addressPrefixes;
  /// ResourceId of the Azure resource.
  final String? resourceId;

  /// Creates a new [ResourceBasicsResponse].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [resourceId] ResourceId of the Azure resource.
  ResourceBasicsResponse({
    this.addressPrefixes,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'resourceId': ?resourceId,
    };
  }

  factory ResourceBasicsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceBasicsResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

