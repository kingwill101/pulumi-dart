/// Connector billing model
enum ConnectorBillingModel {
  valueTrial("trial"),
  valueAutoUpgrade("autoUpgrade"),
  valuePremium("premium"),
  valueExpired("expired");

  const ConnectorBillingModel(this.wireValue);
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
