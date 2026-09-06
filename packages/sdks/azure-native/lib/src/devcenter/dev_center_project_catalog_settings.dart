// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Project catalog settings for project catalogs under a project associated to this dev center.
class DevCenterProjectCatalogSettings {
  /// Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
  final pulumi.Input<dynamic>? catalogItemSyncEnableStatus;

  /// Creates a new [DevCenterProjectCatalogSettings].
  /// [catalogItemSyncEnableStatus] Whether project catalogs associated with projects in this dev center can be configured to sync catalog items.
  const DevCenterProjectCatalogSettings({
    this.catalogItemSyncEnableStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncEnableStatus': ?catalogItemSyncEnableStatus,
    };
  }

  factory DevCenterProjectCatalogSettings.fromMap(Map<String, dynamic> map) {
    return DevCenterProjectCatalogSettings(
      catalogItemSyncEnableStatus: (() { final guardedValue = map['catalogItemSyncEnableStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
