/// The type of accelerator to use.
enum GoogleCloudMlV1AcceleratorConfigType {
  acceleratorTypeUnspecified("ACCELERATOR_TYPE_UNSPECIFIED"),
  nvidiaTeslaK80("NVIDIA_TESLA_K80"),
  nvidiaTeslaP100("NVIDIA_TESLA_P100"),
  nvidiaTeslaV100("NVIDIA_TESLA_V100"),
  nvidiaTeslaP4("NVIDIA_TESLA_P4"),
  nvidiaTeslaT4("NVIDIA_TESLA_T4"),
  nvidiaTeslaA100("NVIDIA_TESLA_A100"),
  tpuV2("TPU_V2"),
  tpuV3("TPU_V3"),
  tpuV2Pod("TPU_V2_POD"),
  tpuV3Pod("TPU_V3_POD"),
  tpuV4Pod("TPU_V4_POD");

  const GoogleCloudMlV1AcceleratorConfigType(this.value);
  final String value;

  static GoogleCloudMlV1AcceleratorConfigType fromValue(String value) {
    for (final item in GoogleCloudMlV1AcceleratorConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudMlV1AcceleratorConfigType value: $value');
  }
}
