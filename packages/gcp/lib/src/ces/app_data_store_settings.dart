// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_data_store_settings_engine.dart';

class AppDataStoreSettings {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_data_store_settings_engines"></a>The `engines` block contains:
  final List<AppDataStoreSettingsEngine>? engines;

  /// Creates a new [AppDataStoreSettings].
  /// [engines] (Output)
  AppDataStoreSettings({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engines': ?engines == null ? null : pulumi.Input.encodeList<AppDataStoreSettingsEngine, Map<String, dynamic>>(engines!, (value) => value.toMap()),
    };
  }

  factory AppDataStoreSettings.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettings(
      engines: map['engines'] == null ? null : pulumi.Input.decodeList<AppDataStoreSettingsEngine>(map['engines'], (value) => AppDataStoreSettingsEngine.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

