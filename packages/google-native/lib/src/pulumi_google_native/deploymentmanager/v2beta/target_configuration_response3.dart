// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'config_file_response3.dart';
import 'import_file_response3.dart';

class TargetConfigurationResponse3 {
  /// The configuration to use for this deployment.
  final ConfigFileResponse3 config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFileResponse3> imports;

  TargetConfigurationResponse3({
    required this.config,
    required this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['imports'] =
        Input.encodeList<ImportFileResponse3, Map<String, dynamic>>(
            imports, (value) => value.toMap());
    return map;
  }

  factory TargetConfigurationResponse3.fromMap(Map<String, dynamic> map) {
    return TargetConfigurationResponse3(
      config: ConfigFileResponse3.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      imports: Input.decodeList<ImportFileResponse3>(
          map['imports'],
          (value) => ImportFileResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
