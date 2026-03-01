// ignore_for_file: unused_element, unnecessary_cast


/// Information of community gallery if current gallery is shared to community
class CommunityGalleryInfoResponse {
  /// Contains info about whether community gallery sharing is enabled.
  final bool communityGalleryEnabled;
  /// End-user license agreement for community gallery image.
  final String? eula;
  /// The prefix of the gallery name that will be displayed publicly. Visible to all users.
  final String? publicNamePrefix;
  /// Community gallery public name list.
  final List<String> publicNames;
  /// Community gallery publisher support email. The email address of the publisher. Visible to all users.
  final String? publisherContact;
  /// The link to the publisher website. Visible to all users.
  final String? publisherUri;

  /// Creates a new [CommunityGalleryInfoResponse].
  /// [communityGalleryEnabled] Contains info about whether community gallery sharing is enabled.
  /// [eula] End-user license agreement for community gallery image.
  /// [publicNamePrefix] The prefix of the gallery name that will be displayed publicly. Visible to all users.
  /// [publicNames] Community gallery public name list.
  /// [publisherContact] Community gallery publisher support email. The email address of the publisher. Visible to all users.
  /// [publisherUri] The link to the publisher website. Visible to all users.
  CommunityGalleryInfoResponse({
    required this.communityGalleryEnabled,
    this.eula,
    this.publicNamePrefix,
    required this.publicNames,
    this.publisherContact,
    this.publisherUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryEnabled': communityGalleryEnabled,
      'eula': ?eula,
      'publicNamePrefix': ?publicNamePrefix,
      'publicNames': publicNames,
      'publisherContact': ?publisherContact,
      'publisherUri': ?publisherUri,
    };
  }

  factory CommunityGalleryInfoResponse.fromMap(Map<String, dynamic> map) {
    return CommunityGalleryInfoResponse(
      communityGalleryEnabled: map['communityGalleryEnabled'] as bool,
      eula: map['eula'] == null ? null : map['eula'] as String,
      publicNamePrefix: map['publicNamePrefix'] == null ? null : map['publicNamePrefix'] as String,
      publicNames: (map['publicNames'] as List).cast<String>(),
      publisherContact: map['publisherContact'] == null ? null : map['publisherContact'] as String,
      publisherUri: map['publisherUri'] == null ? null : map['publisherUri'] as String,
    );
  }
}

