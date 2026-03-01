// ignore_for_file: unused_element, unnecessary_cast


/// The request header options.
class ResourceProviderManifestPropertiesRequestHeaderOptionsResponse {
  /// The opt in headers.
  final String? optInHeaders;
  /// The opt out headers.
  final String? optOutHeaders;

  /// Creates a new [ResourceProviderManifestPropertiesRequestHeaderOptionsResponse].
  /// [optInHeaders] The opt in headers.
  /// [optOutHeaders] The opt out headers.
  ResourceProviderManifestPropertiesRequestHeaderOptionsResponse({
    this.optInHeaders,
    this.optOutHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInHeaders': ?optInHeaders,
      'optOutHeaders': ?optOutHeaders,
    };
  }

  factory ResourceProviderManifestPropertiesRequestHeaderOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderManifestPropertiesRequestHeaderOptionsResponse(
      optInHeaders: map['optInHeaders'] == null ? null : map['optInHeaders'] as String,
      optOutHeaders: map['optOutHeaders'] == null ? null : map['optOutHeaders'] as String,
    );
  }
}

