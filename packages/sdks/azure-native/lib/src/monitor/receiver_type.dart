/// The type of receiver.
enum ReceiverType {
  syslog("Syslog"),
  ama("Ama"),
  pipelineGroup("PipelineGroup"),
  oTLP("OTLP"),
  uDP("UDP");

  const ReceiverType(this.wireValue);
  final String wireValue;

  static ReceiverType fromValue(String value) {
    for (final item in ReceiverType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReceiverType value: $value');
  }
}

