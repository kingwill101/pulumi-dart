// ignore_for_file: unused_element, unnecessary_cast


class GetPrivateLinkResourceSharedPrivateLinkResourceType {
  /// The description of the resource type that has been onboarded to private link service.
  final String description;
  /// The  name for the resource that has been onboarded to private link service.
  final String subresourceName;

  /// Creates a new [GetPrivateLinkResourceSharedPrivateLinkResourceType].
  /// [description] The description of the resource type that has been onboarded to private link service.
  /// [subresourceName] The  name for the resource that has been onboarded to private link service.
  GetPrivateLinkResourceSharedPrivateLinkResourceType({
    required this.description,
    required this.subresourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'subresourceName': subresourceName,
    };
  }

  factory GetPrivateLinkResourceSharedPrivateLinkResourceType.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkResourceSharedPrivateLinkResourceType(
      description: map['description'] as String,
      subresourceName: map['subresourceName'] as String,
    );
  }
}

