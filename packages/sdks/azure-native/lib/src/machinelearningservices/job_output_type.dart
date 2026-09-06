import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of job.
enum JobOutputType implements pulumi.PulumiEnum<String> {
  uriFile("uri_file"),
  uriFolder("uri_folder"),
  mltable("mltable"),
  customModel("custom_model"),
  mlflowModel("mlflow_model"),
  tritonModel("triton_model");

  const JobOutputType(this.wireValue);
  @override
  final String wireValue;

  static JobOutputType fromValue(String value) {
    for (final item in JobOutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobOutputType value: $value');
  }
}
