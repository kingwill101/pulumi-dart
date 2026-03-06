// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents Site Related Details.
class SiteDetailsResponse {
  /// Unique Id, Identifying A Site.
  final pulumi.Input<String> siteId;

  /// Creates a new [SiteDetailsResponse].
  /// [siteId] Unique Id, Identifying A Site.
  const SiteDetailsResponse({
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteId': siteId,
    };
  }

  factory SiteDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SiteDetailsResponse(
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

