// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'config_file_response2.dart';
import 'import_file_response2.dart';

class TargetConfigurationResponse2 {
  /// The configuration to use for this deployment.
  final ConfigFileResponse2 config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFileResponse2> imports;

  TargetConfigurationResponse2({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['imports'] =
        Input.encodeList<ImportFileResponse2, Map<String, dynamic>>(
            imports, (value) => value.toMap());
    return map;
  }

  factory TargetConfigurationResponse2.fromMap(Map<String, dynamic> map) {
    return TargetConfigurationResponse2(
      config: ConfigFileResponse2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      imports: Input.decodeList<ImportFileResponse2>(
          map['imports'],
          (value) => ImportFileResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
