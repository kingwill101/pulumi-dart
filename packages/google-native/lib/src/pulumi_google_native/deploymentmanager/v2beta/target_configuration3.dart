// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'config_file3.dart';
import 'import_file3.dart';

class TargetConfiguration3 {
  /// The configuration to use for this deployment.
  final ConfigFile3? config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFile3>? imports;

  TargetConfiguration3({
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
      map['imports'] = Input.encodeList<ImportFile3, Map<String, dynamic>>(
          importsValue, (value) => value.toMap());
    }
    return map;
  }

  factory TargetConfiguration3.fromMap(Map<String, dynamic> map) {
    return TargetConfiguration3(
      config: map['config'] == null
          ? null
          : ConfigFile3.fromMap((map['config'] as Map).cast<String, dynamic>()),
      imports: map['imports'] == null
          ? null
          : Input.decodeList<ImportFile3>(
              map['imports'],
              (value) =>
                  ImportFile3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
