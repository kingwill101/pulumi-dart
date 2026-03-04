// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site Reference Properties
class SiteReferenceProperties {
  /// Azure Resource ID for Site
  final pulumi.Input<String> siteId;

  /// Creates a new [SiteReferenceProperties].
  /// [siteId] Azure Resource ID for Site
  SiteReferenceProperties({required this.siteId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'siteId': siteId};
  }

  factory SiteReferenceProperties.fromMap(Map<String, dynamic> map) {
    return SiteReferenceProperties(
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
