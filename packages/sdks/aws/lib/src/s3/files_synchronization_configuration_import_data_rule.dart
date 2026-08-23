// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilesSynchronizationConfigurationImportDataRule {
  /// S3 key prefix to apply this rule to. Use `""` for all objects.
  final pulumi.Input<String> prefix;
  /// Maximum object size in bytes to import.
  final pulumi.Input<int> sizeLessThan;
  /// Import trigger. Valid values: `ON_FILE_ACCESS`.
  final pulumi.Input<String> trigger;

  /// Creates a new [FilesSynchronizationConfigurationImportDataRule].
  /// [prefix] S3 key prefix to apply this rule to. Use `""` for all objects.
  /// [sizeLessThan] Maximum object size in bytes to import.
  /// [trigger] Import trigger. Valid values: `ON_FILE_ACCESS`.
  const FilesSynchronizationConfigurationImportDataRule({
    required this.prefix,
    required this.sizeLessThan,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'sizeLessThan': sizeLessThan,
      'trigger': trigger,
    };
  }

  factory FilesSynchronizationConfigurationImportDataRule.fromMap(Map<String, dynamic> map) {
    return FilesSynchronizationConfigurationImportDataRule(
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      sizeLessThan: pulumi.Input.fromValue(map['sizeLessThan'] as int),
      trigger: pulumi.Input.fromValue(map['trigger'] as String),
    );
  }
}
