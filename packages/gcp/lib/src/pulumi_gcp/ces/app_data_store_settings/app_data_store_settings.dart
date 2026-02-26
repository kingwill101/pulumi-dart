// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_data_store_settings_engine/app_data_store_settings_engine.dart';

class AppDataStoreSettings {
  /// (Output)
  /// The engines for the app.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedDataStoreSettingsEngines"" pulumi-lang-dotnet=""NestedDataStoreSettingsEngines"" pulumi-lang-go=""nestedDataStoreSettingsEngines"" pulumi-lang-python=""nested_data_store_settings_engines"" pulumi-lang-yaml=""nestedDataStoreSettingsEngines"" pulumi-lang-java=""nestedDataStoreSettingsEngines"">"nested_data_store_settings_engines"</span>></a>The <span pulumi-lang-nodejs="`engines`" pulumi-lang-dotnet="`Engines`" pulumi-lang-go="`engines`" pulumi-lang-python="`engines`" pulumi-lang-yaml="`engines`" pulumi-lang-java="`engines`">`engines`</span> block contains:
  final List<AppDataStoreSettingsEngine>? engines;

  AppDataStoreSettings({
    this.engines,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enginesValue = engines;
    if (enginesValue != null) {
      map['engines'] =
          Input.encodeList<AppDataStoreSettingsEngine, Map<String, dynamic>>(
              enginesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppDataStoreSettings.fromMap(Map<String, dynamic> map) {
    return AppDataStoreSettings(
      engines: map['engines'] == null
          ? null
          : Input.decodeList<AppDataStoreSettingsEngine>(
              map['engines'],
              (value) => AppDataStoreSettingsEngine.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
