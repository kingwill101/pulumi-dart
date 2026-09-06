import 'package:pulumi/pulumi.dart' as pulumi;

/// Connector billing model
enum ConnectorBillingModel implements pulumi.PulumiEnum<String> {
  valueTrial("trial"),
  valueAutoUpgrade("autoUpgrade"),
  valuePremium("premium"),
  valueExpired("expired");

  const ConnectorBillingModel(this.wireValue);
  @override
  final String wireValue;

  static ConnectorBillingModel fromValue(String value) {
    for (final item in ConnectorBillingModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorBillingModel value: $value');
  }
}
