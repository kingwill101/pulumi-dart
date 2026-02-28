// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an artifact available via some URI.
class SoftwareRecipeArtifactRemoteResponse {
  /// Must be provided if `allow_insecure` is `false`. SHA256 checksum in hex format, to compare to the checksum of the artifact. If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any of the steps.
  final String checksum;

  /// URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  final String uri;

  /// Creates a new [SoftwareRecipeArtifactRemoteResponse].
  /// [checksum] Must be provided if `allow_insecure` is `false`. SHA256 checksum in hex format, to compare to the checksum of the artifact. If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any of the steps.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  SoftwareRecipeArtifactRemoteResponse({
    required this.checksum,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checksum'] = checksum;
    map['uri'] = uri;
    return map;
  }

  factory SoftwareRecipeArtifactRemoteResponse.fromMap(
      Map<String, dynamic> map) {
    return SoftwareRecipeArtifactRemoteResponse(
      checksum: map['checksum'] as String,
      uri: map['uri'] as String,
    );
  }
}
