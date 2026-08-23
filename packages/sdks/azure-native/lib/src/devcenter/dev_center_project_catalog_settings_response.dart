// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Project catalog settings for project catalogs under a project associated to this dev center.
class DevCenterProjectCatalogSettingsResponse {
  /// Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
  final pulumi.Input<String>? catalogItemSyncEnableStatus;

  /// Creates a new [DevCenterProjectCatalogSettingsResponse].
  /// [catalogItemSyncEnableStatus] Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
  const DevCenterProjectCatalogSettingsResponse({
    this.catalogItemSyncEnableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncEnableStatus': ?catalogItemSyncEnableStatus,
    };
  }

  factory DevCenterProjectCatalogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DevCenterProjectCatalogSettingsResponse(
      catalogItemSyncEnableStatus: (() { final guardedValue = map['catalogItemSyncEnableStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
