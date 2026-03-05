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

  const CommissionedState(this.wireValue);
  final String wireValue;

  static CommissionedState fromValue(String value) {
    for (final item in CommissionedState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CommissionedState value: $value');
  }
}

