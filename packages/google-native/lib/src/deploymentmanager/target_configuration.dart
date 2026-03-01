// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_file.dart';
import 'import_file.dart';

class TargetConfiguration {
  /// The configuration to use for this deployment.
  final ConfigFile? config;

  /// Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  final List<ImportFile>? imports;

  /// Creates a new [TargetConfiguration].
  /// [config] The configuration to use for this deployment.
  /// [imports] Specifies any files to import for this configuration. This can be used to import templates or other files. For example, you might import a text file in order to use the file in a template.
  TargetConfiguration({this.config, this.imports});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : config!.toMap(),
      'imports': ?imports == null
          ? null
          : pulumi.Input.encodeList<ImportFile, Map<String, dynamic>>(
              imports!,
              (value) => value.toMap(),
            ),
    };
  }

  factory TargetConfiguration.fromMap(Map<String, dynamic> map) {
    return TargetConfiguration(
      config: map['config'] == null
          ? null
          : ConfigFile.fromMap((map['config'] as Map).cast<String, dynamic>()),
      imports: map['imports'] == null
          ? null
          : pulumi.Input.decodeList<ImportFile>(
              map['imports'],
              (value) =>
                  ImportFile.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
