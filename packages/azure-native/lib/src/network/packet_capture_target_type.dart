/// Target type of the resource provided.
enum PacketCaptureTargetType {
  valueAzureVM("AzureVM"),
  valueAzureVMSS("AzureVMSS");

  const PacketCaptureTargetType(this.value);
  final String value;

  static PacketCaptureTargetType fromValue(String value) {
    for (final item in PacketCaptureTargetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketCaptureTargetType value: $value');
  }
}

