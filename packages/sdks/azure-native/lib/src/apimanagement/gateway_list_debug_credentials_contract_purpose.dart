import 'package:pulumi/pulumi.dart' as pulumi;

/// Purpose of debug credential.
enum GatewayListDebugCredentialsContractPurpose implements pulumi.PulumiEnum<String> {
  valueTracing("tracing");

  const GatewayListDebugCredentialsContractPurpose(this.wireValue);
  @override
  final String wireValue;

  static GatewayListDebugCredentialsContractPurpose fromValue(String value) {
    for (final item in GatewayListDebugCredentialsContractPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GatewayListDebugCredentialsContractPurpose value: $value');
  }
}
