// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_app_data_store_setting_engine/app_version_snapshot_app_data_store_setting_engine.dart';

class AppVersionSnapshotAppDataStoreSetting {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  final List<AppVersionSnapshotAppDataStoreSettingEngine>? engines;

  AppVersionSnapshotAppDataStoreSetting({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enginesValue = engines;
    if (enginesValue != null) {
      map['engines'] = Input.encodeList<
          AppVersionSnapshotAppDataStoreSettingEngine,
          Map<String, dynamic>>(enginesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotAppDataStoreSetting.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppDataStoreSetting(
      engines: map['engines'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotAppDataStoreSettingEngine>(
              map['engines'],
              (value) => AppVersionSnapshotAppDataStoreSettingEngine.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
