import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the action to take to perform the health check.
enum ProbeActionType implements pulumi.PulumiEnum<String> {
  valueHTTPGetAction("HTTPGetAction"),
  valueTCPSocketAction("TCPSocketAction"),
  valueExecAction("ExecAction");

  const ProbeActionType(this.wireValue);
  @override
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
