/// [Required] Specifies the type of job.
enum JobOutputType {
  valueUriFile("uri_file"),
  valueUriFolder("uri_folder"),
  valueMltable("mltable"),
  valueCustomModel("custom_model"),
  valueMlflowModel("mlflow_model"),
  valueTritonModel("triton_model");

  const JobOutputType(this.wireValue);
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

