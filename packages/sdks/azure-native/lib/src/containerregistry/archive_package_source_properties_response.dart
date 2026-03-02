// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the archive package source.
class ArchivePackageSourcePropertiesResponse {
  /// The type of package source for a archive.
  final pulumi.Input<String>? type;
  /// The external repository url.
  final pulumi.Input<String>? url;

  /// Creates a new [ArchivePackageSourcePropertiesResponse].
  /// [type] The type of package source for a archive.
  /// [url] The external repository url.
  ArchivePackageSourcePropertiesResponse({
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'url': ?url,
    };
  }

  factory ArchivePackageSourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArchivePackageSourcePropertiesResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

