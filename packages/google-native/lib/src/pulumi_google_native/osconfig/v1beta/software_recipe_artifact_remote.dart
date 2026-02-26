// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an artifact available via some URI.
class SoftwareRecipeArtifactRemote {
  /// Must be provided if `allow_insecure` is `false`. SHA256 checksum in hex format, to compare to the checksum of the artifact. If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any of the steps.
  final String? checksum;

  /// URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  final String? uri;

  SoftwareRecipeArtifactRemote({
    this.checksum,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checksumValue = checksum;
    if (checksumValue != null) {
      map['checksum'] = checksumValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory SoftwareRecipeArtifactRemote.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactRemote(
      checksum: map['checksum'] == null ? null : map['checksum'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
