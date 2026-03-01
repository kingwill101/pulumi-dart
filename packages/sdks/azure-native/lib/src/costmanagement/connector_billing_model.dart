/// Connector billing model
enum ConnectorBillingModel {
  valueTrial("trial"),
  valueAutoUpgrade("autoUpgrade"),
  valuePremium("premium"),
  valueExpired("expired");

  const ConnectorBillingModel(this.value);
  final String value;

  static ConnectorBillingModel fromValue(String value) {
    for (final item in ConnectorBillingModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectorBillingModel value: $value');
  }
}

