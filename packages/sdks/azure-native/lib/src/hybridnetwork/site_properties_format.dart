// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site properties.
class SitePropertiesFormat {
  /// List of NFVIs
  final pulumi.Input<List<dynamic>?>? nfvis;

  /// Creates a new [SitePropertiesFormat].
  /// [nfvis] List of NFVIs
  const SitePropertiesFormat({
    this.nfvis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfvis': ?nfvis,
    };
  }

  factory SitePropertiesFormat.fromMap(Map<String, dynamic> map) {
    return SitePropertiesFormat(
      nfvis: (() { final guardedValue = map['nfvis']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
