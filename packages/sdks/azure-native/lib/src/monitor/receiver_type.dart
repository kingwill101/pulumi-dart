/// The type of receiver.
enum ReceiverType {
  syslog("Syslog"),
  ama("Ama"),
  pipelineGroup("PipelineGroup"),
  oTLP("OTLP"),
  uDP("UDP");

  const ReceiverType(this.value);
  final String value;

  static ReceiverType fromValue(String value) {
    for (final item in ReceiverType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReceiverType value: $value');
  }
}

