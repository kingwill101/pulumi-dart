// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'config_file2.dart';
import 'import_file2.dart';

class TargetConfiguration2 {
  /// The configuration to use for this deployment.
  final ConfigFile2? config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFile2>? imports;

  TargetConfiguration2({
    this.config,
    this.imports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final importsValue = imports;
    if (importsValue != null) {
      map['imports'] = Input.encodeList<ImportFile2, Map<String, dynamic>>(
          importsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetConfiguration2.fromMap(Map<String, dynamic> map) {
    return TargetConfiguration2(
      config: map['config'] == null
          ? null
          : ConfigFile2.fromMap((map['config'] as Map).cast<String, dynamic>()),
      imports: map['imports'] == null
          ? null
          : Input.decodeList<ImportFile2>(
              map['imports'],
              (value) =>
                  ImportFile2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
