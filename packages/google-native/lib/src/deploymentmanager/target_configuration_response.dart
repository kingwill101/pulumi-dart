// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file_response.dart';
import 'import_file_response.dart';

class TargetConfigurationResponse {
  /// The configuration to use for this deployment.
  final ConfigFileResponse config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFileResponse> imports;

  /// Creates a new [TargetConfigurationResponse].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  TargetConfigurationResponse({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['imports'] =
        pulumi.Input.encodeList<ImportFileResponse, Map<String, dynamic>>(
            imports, (value) => value.toMap());
    return map;
  }

  factory TargetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TargetConfigurationResponse(
      config: ConfigFileResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      imports: pulumi.Input.decodeList<ImportFileResponse>(
          map['imports'],
          (value) => ImportFileResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
