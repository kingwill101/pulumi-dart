// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of community gallery if current gallery is shared to community
class CommunityGalleryInfo {
  /// End-user license agreement for community gallery image.
  final pulumi.Input<String>? eula;
  /// The prefix of the gallery name that will be displayed publicly. Visible to all users.
  final pulumi.Input<String>? publicNamePrefix;
  /// Community gallery publisher support email. The email address of the publisher. Visible to all users.
  final pulumi.Input<String>? publisherContact;
  /// The link to the publisher website. Visible to all users.
  final pulumi.Input<String>? publisherUri;

  /// Creates a new [CommunityGalleryInfo].
  /// [eula] End-user license agreement for community gallery image.
  /// [publicNamePrefix] The prefix of the gallery name that will be displayed publicly. Visible to all users.
  /// [publisherContact] Community gallery publisher support email. The email address of the publisher. Visible to all users.
  /// [publisherUri] The link to the publisher website. Visible to all users.
  CommunityGalleryInfo({
    this.eula,
    this.publicNamePrefix,
    this.publisherContact,
    this.publisherUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eula': ?eula,
      'publicNamePrefix': ?publicNamePrefix,
      'publisherContact': ?publisherContact,
      'publisherUri': ?publisherUri,
    };
  }

  factory CommunityGalleryInfo.fromMap(Map<String, dynamic> map) {
    return CommunityGalleryInfo(
      eula: map['eula'] == null ? null : (map['eula'] as String).input(),
      publicNamePrefix: map['publicNamePrefix'] == null ? null : (map['publicNamePrefix'] as String).input(),
      publisherContact: map['publisherContact'] == null ? null : (map['publisherContact'] as String).input(),
      publisherUri: map['publisherUri'] == null ? null : (map['publisherUri'] as String).input(),
    );
  }
}

