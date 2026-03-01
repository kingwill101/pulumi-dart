/// Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
enum S3CompatibleMetadataRequestModel {
  requestModelUnspecified("REQUEST_MODEL_UNSPECIFIED"),
  requestModelVirtualHostedStyle("REQUEST_MODEL_VIRTUAL_HOSTED_STYLE"),
  requestModelPathStyle("REQUEST_MODEL_PATH_STYLE");

  const S3CompatibleMetadataRequestModel(this.value);
  final String value;

  static S3CompatibleMetadataRequestModel fromValue(String value) {
    for (final item in S3CompatibleMetadataRequestModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown S3CompatibleMetadataRequestModel value: $value',
    );
  }
}
