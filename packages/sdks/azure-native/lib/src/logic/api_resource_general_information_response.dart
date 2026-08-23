// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API general information.
class ApiResourceGeneralInformationResponse {
  /// The description.
  final pulumi.Input<String>? description;
  /// The display name.
  final pulumi.Input<String>? displayName;
  /// The icon url.
  final pulumi.Input<String>? iconUrl;
  /// The release tag.
  final pulumi.Input<String>? releaseTag;
  /// The terms of use url.
  final pulumi.Input<String>? termsOfUseUrl;
  /// The tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [ApiResourceGeneralInformationResponse].
  /// [description] The description.
  /// [displayName] The display name.
  /// [iconUrl] The icon url.
  /// [releaseTag] The release tag.
  /// [termsOfUseUrl] The terms of use url.
  /// [tier] The tier.
  const ApiResourceGeneralInformationResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseTag: (() { final guardedValue = map['releaseTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termsOfUseUrl: (() { final guardedValue = map['termsOfUseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
