import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of pipeline
enum PipelineType implements pulumi.PulumiEnum<String> {
  logs("Logs");

  const PipelineType(this.wireValue);
  @override
  final String wireValue;

  static PipelineType fromValue(String value) {
    for (final item in PipelineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineType value: $value');
  }
}
