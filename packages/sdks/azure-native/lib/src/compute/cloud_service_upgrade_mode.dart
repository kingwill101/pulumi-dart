/// Update mode for the cloud service. Role instances are allocated to update domains when the service is deployed. Updates can be initiated manually in each update domain or initiated automatically in all update domains.
/// Possible Values are &lt;br /&gt;&lt;br /&gt;**Auto**&lt;br /&gt;&lt;br /&gt;**Manual** &lt;br /&gt;&lt;br /&gt;**Simultaneous**&lt;br /&gt;&lt;br /&gt;
/// If not specified, the default value is Auto. If set to Manual, PUT UpdateDomain must be called to apply the update. If set to Auto, the update is automatically applied to each update domain in sequence.
enum CloudServiceUpgradeMode {
  valueAuto("Auto"),
  valueManual("Manual"),
  valueSimultaneous("Simultaneous");

  const CloudServiceUpgradeMode(this.wireValue);
  final String wireValue;

  static CloudServiceUpgradeMode fromValue(String value) {
    for (final item in CloudServiceUpgradeMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServiceUpgradeMode value: $value');
  }
}
