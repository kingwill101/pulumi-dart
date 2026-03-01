/// The commissioned state of the Custom IP Prefix.
enum CommissionedState {
  valueProvisioning("Provisioning"),
  valueProvisioned("Provisioned"),
  valueCommissioning("Commissioning"),
  valueCommissionedNoInternetAdvertise("CommissionedNoInternetAdvertise"),
  valueCommissioned("Commissioned"),
  valueDecommissioning("Decommissioning"),
  valueDeprovisioning("Deprovisioning"),
  valueDeprovisioned("Deprovisioned");

  const CommissionedState(this.value);
  final String value;

  static CommissionedState fromValue(String value) {
    for (final item in CommissionedState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommissionedState value: $value');
  }
}

