/// Optional. Type of this accelerator.
enum AcceleratorConfigType2 {
  acceleratorTypeUnspecified("ACCELERATOR_TYPE_UNSPECIFIED"),
  nvidiaTeslaP100("NVIDIA_TESLA_P100"),
  nvidiaTeslaV100("NVIDIA_TESLA_V100"),
  nvidiaTeslaP4("NVIDIA_TESLA_P4"),
  nvidiaTeslaT4("NVIDIA_TESLA_T4"),
  nvidiaTeslaA100("NVIDIA_TESLA_A100"),
  nvidiaA10080gb("NVIDIA_A100_80GB"),
  nvidiaL4("NVIDIA_L4"),
  nvidiaTeslaT4Vws("NVIDIA_TESLA_T4_VWS"),
  nvidiaTeslaP100Vws("NVIDIA_TESLA_P100_VWS"),
  nvidiaTeslaP4Vws("NVIDIA_TESLA_P4_VWS");

  const AcceleratorConfigType2(this.value);
  final String value;

  static AcceleratorConfigType2 fromValue(String value) {
    for (final item in AcceleratorConfigType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType2 value: $value');
  }
}
