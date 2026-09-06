import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum RecordingStrategyType implements pulumi.PulumiEnum<String> {
  aLLSUPPORTEDRESOURCETYPES("ALL_SUPPORTED_RESOURCE_TYPES"),
  eXCLUSIONBYRESOURCETYPES("EXCLUSION_BY_RESOURCE_TYPES"),
  iNCLUSIONBYRESOURCETYPES("INCLUSION_BY_RESOURCE_TYPES");

  const RecordingStrategyType(this.wireValue);
  @override
  final String wireValue;

  static RecordingStrategyType fromValue(String value) {
    for (final item in RecordingStrategyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecordingStrategyType value: $value');
  }
}
