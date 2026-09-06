import 'package:pulumi/pulumi.dart' as pulumi;

/// The commissioned state of the Custom IP Prefix.
enum CommissionedState implements pulumi.PulumiEnum<String> {
  valueProvisioning("Provisioning"),
  valueProvisioned("Provisioned"),
  valueCommissioning("Commissioning"),
  valueCommissionedNoInternetAdvertise("CommissionedNoInternetAdvertise"),
  valueCommissioned("Commissioned"),
  valueDecommissioning("Decommissioning"),
  valueDeprovisioning("Deprovisioning"),
  valueDeprovisioned("Deprovisioned");

  const CommissionedState(this.wireValue);
  @override
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
