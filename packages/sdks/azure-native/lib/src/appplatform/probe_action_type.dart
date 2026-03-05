/// The type of the action to take to perform the health check.
enum ProbeActionType {
  valueHTTPGetAction("HTTPGetAction"),
  valueTCPSocketAction("TCPSocketAction"),
  valueExecAction("ExecAction");

  const ProbeActionType(this.wireValue);
  final String wireValue;

  static ProbeActionType fromValue(String value) {
    for (final item in ProbeActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeActionType value: $value');
  }
}

