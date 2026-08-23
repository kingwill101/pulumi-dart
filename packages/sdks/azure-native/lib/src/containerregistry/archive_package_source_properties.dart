// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the archive package source.
class ArchivePackageSourceProperties {
  /// The type of package source for a archive.
  final pulumi.Input<String>? type;
  /// The external repository url.
  final pulumi.Input<String>? url;

  /// Creates a new [ArchivePackageSourceProperties].
  /// [type] The type of package source for a archive.
  /// [url] The external repository url.
  const ArchivePackageSourceProperties({
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'url': ?url,
    };
  }

  factory ArchivePackageSourceProperties.fromMap(Map<String, dynamic> map) {
    return ArchivePackageSourceProperties(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
