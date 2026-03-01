// ignore_for_file: unused_element, unnecessary_cast


/// The API general information.
class ApiResourceGeneralInformationResponse {
  /// The description.
  final String? description;
  /// The display name.
  final String? displayName;
  /// The icon url.
  final String? iconUrl;
  /// The release tag.
  final String? releaseTag;
  /// The terms of use url.
  final String? termsOfUseUrl;
  /// The tier.
  final String? tier;

  /// Creates a new [ApiResourceGeneralInformationResponse].
  /// [description] The description.
  /// [displayName] The display name.
  /// [iconUrl] The icon url.
  /// [releaseTag] The release tag.
  /// [termsOfUseUrl] The terms of use url.
  /// [tier] The tier.
  ApiResourceGeneralInformationResponse({
    this.description,
    this.displayName,
    this.iconUrl,
    this.releaseTag,
    this.termsOfUseUrl,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'iconUrl': ?iconUrl,
      'releaseTag': ?releaseTag,
      'termsOfUseUrl': ?termsOfUseUrl,
      'tier': ?tier,
    };
  }

  factory ApiResourceGeneralInformationResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourceGeneralInformationResponse(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      iconUrl: map['iconUrl'] == null ? null : map['iconUrl'] as String,
      releaseTag: map['releaseTag'] == null ? null : map['releaseTag'] as String,
      termsOfUseUrl: map['termsOfUseUrl'] == null ? null : map['termsOfUseUrl'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

