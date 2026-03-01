// ignore_for_file: unused_element, unnecessary_cast

import 'release_properties_response.dart';

/// The properties of an operating system.
class OsPropertiesResponse {
  /// The name of the custom image resource.
  final String customImageDisplayName;
  /// Specify the referenced Test Base Custom Image Id if available.
  final String? customImageId;
  /// The name of the OS.
  final String? osName;
  /// The properties of the OS release.
  final ReleasePropertiesResponse? releaseProperties;

  /// Creates a new [OsPropertiesResponse].
  /// [customImageDisplayName] The name of the custom image resource.
  /// [customImageId] Specify the referenced Test Base Custom Image Id if available.
  /// [osName] The name of the OS.
  /// [releaseProperties] The properties of the OS release.
  OsPropertiesResponse({
    required this.customImageDisplayName,
    this.customImageId,
    this.osName,
    this.releaseProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customImageDisplayName': customImageDisplayName,
      'customImageId': ?customImageId,
      'osName': ?osName,
      'releaseProperties': ?releaseProperties == null ? null : releaseProperties!.toMap(),
    };
  }

  factory OsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OsPropertiesResponse(
      customImageDisplayName: map['customImageDisplayName'] as String,
      customImageId: map['customImageId'] == null ? null : map['customImageId'] as String,
      osName: map['osName'] == null ? null : map['osName'] as String,
      releaseProperties: map['releaseProperties'] == null ? null : ReleasePropertiesResponse.fromMap((map['releaseProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

