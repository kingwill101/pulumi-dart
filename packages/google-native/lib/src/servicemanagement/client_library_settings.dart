// ignore_for_file: unused_element, unnecessary_cast

import 'client_library_settings_launch_stage.dart';
import 'cpp_settings.dart';
import 'dotnet_settings.dart';
import 'go_settings.dart';
import 'java_settings.dart';
import 'node_settings.dart';
import 'php_settings.dart';
import 'python_settings.dart';
import 'ruby_settings.dart';

/// Details about how and where to publish client libraries.
class ClientLibrarySettings {
  /// Settings for C++ client libraries.
  final CppSettings? cppSettings;

  /// Settings for .NET client libraries.
  final DotnetSettings? dotnetSettings;

  /// Settings for Go client libraries.
  final GoSettings? goSettings;

  /// Settings for legacy Java features, supported in the Service YAML.
  final JavaSettings? javaSettings;

  /// Launch stage of this version of the API.
  final ClientLibrarySettingsLaunchStage? launchStage;

  /// Settings for Node client libraries.
  final NodeSettings? nodeSettings;

  /// Settings for PHP client libraries.
  final PhpSettings? phpSettings;

  /// Settings for Python client libraries.
  final PythonSettings? pythonSettings;

  /// When using transport=rest, the client request will encode enums as numbers rather than strings.
  final bool? restNumericEnums;

  /// Settings for Ruby client libraries.
  final RubySettings? rubySettings;

  /// Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  final String? version;

  /// Creates a new [ClientLibrarySettings].
  /// [cppSettings] Settings for C++ client libraries.
  /// [dotnetSettings] Settings for .NET client libraries.
  /// [goSettings] Settings for Go client libraries.
  /// [javaSettings] Settings for legacy Java features, supported in the Service YAML.
  /// [launchStage] Launch stage of this version of the API.
  /// [nodeSettings] Settings for Node client libraries.
  /// [phpSettings] Settings for PHP client libraries.
  /// [pythonSettings] Settings for Python client libraries.
  /// [restNumericEnums] When using transport=rest, the client request will encode enums as numbers rather than strings.
  /// [rubySettings] Settings for Ruby client libraries.
  /// [version] Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  ClientLibrarySettings({
    this.cppSettings,
    this.dotnetSettings,
    this.goSettings,
    this.javaSettings,
    this.launchStage,
    this.nodeSettings,
    this.phpSettings,
    this.pythonSettings,
    this.restNumericEnums,
    this.rubySettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cppSettingsValue = cppSettings;
    if (cppSettingsValue != null) {
      map['cppSettings'] = cppSettingsValue.toMap();
    }
    final dotnetSettingsValue = dotnetSettings;
    if (dotnetSettingsValue != null) {
      map['dotnetSettings'] = dotnetSettingsValue.toMap();
    }
    final goSettingsValue = goSettings;
    if (goSettingsValue != null) {
      map['goSettings'] = goSettingsValue.toMap();
    }
    final javaSettingsValue = javaSettings;
    if (javaSettingsValue != null) {
      map['javaSettings'] = javaSettingsValue.toMap();
    }
    final launchStageValue = launchStage;
    if (launchStageValue != null) {
      map['launchStage'] = launchStageValue.value;
    }
    final nodeSettingsValue = nodeSettings;
    if (nodeSettingsValue != null) {
      map['nodeSettings'] = nodeSettingsValue.toMap();
    }
    final phpSettingsValue = phpSettings;
    if (phpSettingsValue != null) {
      map['phpSettings'] = phpSettingsValue.toMap();
    }
    final pythonSettingsValue = pythonSettings;
    if (pythonSettingsValue != null) {
      map['pythonSettings'] = pythonSettingsValue.toMap();
    }
    final restNumericEnumsValue = restNumericEnums;
    if (restNumericEnumsValue != null) {
      map['restNumericEnums'] = restNumericEnumsValue;
    }
    final rubySettingsValue = rubySettings;
    if (rubySettingsValue != null) {
      map['rubySettings'] = rubySettingsValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ClientLibrarySettings.fromMap(Map<String, dynamic> map) {
    return ClientLibrarySettings(
      cppSettings: map['cppSettings'] == null
          ? null
          : CppSettings.fromMap(
              (map['cppSettings'] as Map).cast<String, dynamic>()),
      dotnetSettings: map['dotnetSettings'] == null
          ? null
          : DotnetSettings.fromMap(
              (map['dotnetSettings'] as Map).cast<String, dynamic>()),
      goSettings: map['goSettings'] == null
          ? null
          : GoSettings.fromMap(
              (map['goSettings'] as Map).cast<String, dynamic>()),
      javaSettings: map['javaSettings'] == null
          ? null
          : JavaSettings.fromMap(
              (map['javaSettings'] as Map).cast<String, dynamic>()),
      launchStage: map['launchStage'] == null
          ? null
          : ClientLibrarySettingsLaunchStage.fromValue(
              map['launchStage'] as String),
      nodeSettings: map['nodeSettings'] == null
          ? null
          : NodeSettings.fromMap(
              (map['nodeSettings'] as Map).cast<String, dynamic>()),
      phpSettings: map['phpSettings'] == null
          ? null
          : PhpSettings.fromMap(
              (map['phpSettings'] as Map).cast<String, dynamic>()),
      pythonSettings: map['pythonSettings'] == null
          ? null
          : PythonSettings.fromMap(
              (map['pythonSettings'] as Map).cast<String, dynamic>()),
      restNumericEnums: map['restNumericEnums'] == null
          ? null
          : map['restNumericEnums'] as bool,
      rubySettings: map['rubySettings'] == null
          ? null
          : RubySettings.fromMap(
              (map['rubySettings'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
