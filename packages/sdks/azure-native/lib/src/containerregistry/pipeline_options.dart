import 'package:pulumi/pulumi.dart' as pulumi;

enum PipelineOptions implements pulumi.PulumiEnum<String> {
  valueOverwriteTags("OverwriteTags"),
  valueOverwriteBlobs("OverwriteBlobs"),
  valueDeleteSourceBlobOnSuccess("DeleteSourceBlobOnSuccess"),
  valueContinueOnErrors("ContinueOnErrors");

  const PipelineOptions(this.wireValue);
  @override
  final String wireValue;

  static PipelineOptions fromValue(String value) {
    for (final item in PipelineOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PipelineOptions value: $value');
  }
}
