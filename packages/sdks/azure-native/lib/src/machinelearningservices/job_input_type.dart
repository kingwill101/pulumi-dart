/// [Required] Specifies the type of job.
enum JobInputType {
  valueLiteral("literal"),
  valueUriFile("uri_file"),
  valueUriFolder("uri_folder"),
  valueMltable("mltable"),
  valueCustomModel("custom_model"),
  valueMlflowModel("mlflow_model"),
  valueTritonModel("triton_model");

  const JobInputType(this.wireValue);
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
