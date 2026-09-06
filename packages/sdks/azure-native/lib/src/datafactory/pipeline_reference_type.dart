import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline reference type.
enum PipelineReferenceType implements pulumi.PulumiEnum<String> {
  pipelineReference("PipelineReference");

  const PipelineReferenceType(this.wireValue);
  @override
  final String wireValue;

  static PipelineReferenceType fromValue(String value) {
    for (final item in PipelineReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineReferenceType value: $value');
  }
}
