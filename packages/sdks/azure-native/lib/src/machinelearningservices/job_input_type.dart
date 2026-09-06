import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of job.
enum JobInputType implements pulumi.PulumiEnum<String> {
  literal("literal"),
  uriFile("uri_file"),
  uriFolder("uri_folder"),
  mltable("mltable"),
  customModel("custom_model"),
  mlflowModel("mlflow_model"),
  tritonModel("triton_model");

  const JobInputType(this.wireValue);
  @override
  final String wireValue;

  static JobInputType fromValue(String value) {
    for (final item in JobInputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobInputType value: $value');
  }
}
