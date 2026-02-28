// ignore_for_file: unused_element, unnecessary_cast

import 'cpp_settings_response.dart';
import 'dotnet_settings_response.dart';
import 'go_settings_response.dart';
import 'java_settings_response.dart';
import 'node_settings_response.dart';
import 'php_settings_response.dart';
import 'python_settings_response.dart';
import 'ruby_settings_response.dart';

/// Details about how and where to publish client libraries.
class ClientLibrarySettingsResponse {
  /// Settings for C++ client libraries.
  final CppSettingsResponse cppSettings;

  /// Settings for .NET client libraries.
  final DotnetSettingsResponse dotnetSettings;

  /// Settings for Go client libraries.
  final GoSettingsResponse goSettings;

  /// Settings for legacy Java features, supported in the Service YAML.
  final JavaSettingsResponse javaSettings;

  /// Launch stage of this version of the API.
  final String launchStage;

  /// Settings for Node client libraries.
  final NodeSettingsResponse nodeSettings;

  /// Settings for PHP client libraries.
  final PhpSettingsResponse phpSettings;

  /// Settings for Python client libraries.
  final PythonSettingsResponse pythonSettings;

  /// When using transport=rest, the client request will encode enums as numbers rather than strings.
  final bool restNumericEnums;

  /// Settings for Ruby client libraries.
  final RubySettingsResponse rubySettings;

  /// Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  final String version;

  /// Creates a new [ClientLibrarySettingsResponse].
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
  ClientLibrarySettingsResponse({
    required this.cppSettings,
    required this.dotnetSettings,
    required this.goSettings,
    required this.javaSettings,
    required this.launchStage,
    required this.nodeSettings,
    required this.phpSettings,
    required this.pythonSettings,
    required this.restNumericEnums,
    required this.rubySettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cppSettings'] = cppSettings.toMap();
    map['dotnetSettings'] = dotnetSettings.toMap();
    map['goSettings'] = goSettings.toMap();
    map['javaSettings'] = javaSettings.toMap();
    map['launchStage'] = launchStage;
    map['nodeSettings'] = nodeSettings.toMap();
    map['phpSettings'] = phpSettings.toMap();
    map['pythonSettings'] = pythonSettings.toMap();
    map['restNumericEnums'] = restNumericEnums;
    map['rubySettings'] = rubySettings.toMap();
    map['version'] = version;
    return map;
  }

  factory ClientLibrarySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClientLibrarySettingsResponse(
      cppSettings: CppSettingsResponse.fromMap(
          (map['cppSettings'] as Map).cast<String, dynamic>()),
      dotnetSettings: DotnetSettingsResponse.fromMap(
          (map['dotnetSettings'] as Map).cast<String, dynamic>()),
      goSettings: GoSettingsResponse.fromMap(
          (map['goSettings'] as Map).cast<String, dynamic>()),
      javaSettings: JavaSettingsResponse.fromMap(
          (map['javaSettings'] as Map).cast<String, dynamic>()),
      launchStage: map['launchStage'] as String,
      nodeSettings: NodeSettingsResponse.fromMap(
          (map['nodeSettings'] as Map).cast<String, dynamic>()),
      phpSettings: PhpSettingsResponse.fromMap(
          (map['phpSettings'] as Map).cast<String, dynamic>()),
      pythonSettings: PythonSettingsResponse.fromMap(
          (map['pythonSettings'] as Map).cast<String, dynamic>()),
      restNumericEnums: map['restNumericEnums'] as bool,
      rubySettings: RubySettingsResponse.fromMap(
          (map['rubySettings'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}
