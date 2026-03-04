// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of community gallery if current gallery is shared to community
class CommunityGalleryInfoResponse {
  /// Contains info about whether community gallery sharing is enabled.
  final pulumi.Input<bool> communityGalleryEnabled;

  /// End-user license agreement for community gallery image.
  final pulumi.Input<String>? eula;

  /// The prefix of the gallery name that will be displayed publicly. Visible to all users.
  final pulumi.Input<String>? publicNamePrefix;

  /// Community gallery public name list.
  final pulumi.Input<List<String>> publicNames;

  /// Community gallery publisher support email. The email address of the publisher. Visible to all users.
  final pulumi.Input<String>? publisherContact;

  /// The link to the publisher website. Visible to all users.
  final pulumi.Input<String>? publisherUri;

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
      communityGalleryEnabled: pulumi.Input.fromValue(
        map['communityGalleryEnabled'] as bool,
      ),
      eula: (() {
        final guardedValue = map['eula'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNamePrefix: (() {
        final guardedValue = map['publicNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNames: pulumi.Input.fromValue(
        (map['publicNames'] as List).cast<String>(),
      ),
      publisherContact: (() {
        final guardedValue = map['publisherContact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherUri: (() {
        final guardedValue = map['publisherUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
