// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of community gallery if current gallery is shared to community
class CommunityGalleryInfo {
  /// End-user license agreement for community gallery image.
  final pulumi.Input<String?>? eula;
  /// The prefix of the gallery name that will be displayed publicly. Visible to all users.
  final pulumi.Input<String?>? publicNamePrefix;
  /// Community gallery publisher support email. The email address of the publisher. Visible to all users.
  final pulumi.Input<String?>? publisherContact;
  /// The link to the publisher website. Visible to all users.
  final pulumi.Input<String?>? publisherUri;

  /// Creates a new [CommunityGalleryInfo].
  /// [eula] End-user license agreement for community gallery image.
  /// [publicNamePrefix] The prefix of the gallery name that will be displayed publicly. Visible to all users.
  /// [publisherContact] Community gallery publisher support email. The email address of the publisher. Visible to all users.
  /// [publisherUri] The link to the publisher website. Visible to all users.
  const CommunityGalleryInfo({
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
      eula: (() { final guardedValue = map['eula']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNamePrefix: (() { final guardedValue = map['publicNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherContact: (() { final guardedValue = map['publisherContact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherUri: (() { final guardedValue = map['publisherUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
