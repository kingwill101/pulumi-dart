// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeArtifactRemote {
  /// Must be provided if allowInsecure is false. SHA256 checksum in hex format, to compare to the checksum of the artifact.
  /// If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any
  /// of the steps.
  final String? checkSum;

  /// URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  final String? uri;

  GuestPoliciesRecipeArtifactRemote({
    this.checkSum,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkSumValue = checkSum;
    if (checkSumValue != null) {
      map['checkSum'] = checkSumValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory GuestPoliciesRecipeArtifactRemote.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifactRemote(
      checkSum: map['checkSum'] == null ? null : map['checkSum'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
