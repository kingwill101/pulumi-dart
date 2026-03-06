// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents Site Related Details.
class SiteDetails {
  /// Unique Id, Identifying A Site.
  final pulumi.Input<String> siteId;

  /// Creates a new [SiteDetails].
  /// [siteId] Unique Id, Identifying A Site.
  const SiteDetails({
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteId': siteId,
    };
  }

  factory SiteDetails.fromMap(Map<String, dynamic> map) {
    return SiteDetails(
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

