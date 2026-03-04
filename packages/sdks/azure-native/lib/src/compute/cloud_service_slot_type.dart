/// Slot type for the cloud service.
/// Possible values are &lt;br /&gt;&lt;br /&gt;**Production**&lt;br /&gt;&lt;br /&gt;**Staging**&lt;br /&gt;&lt;br /&gt;
/// If not specified, the default value is Production.
enum CloudServiceSlotType {
  valueProduction("Production"),
  valueStaging("Staging");

  const CloudServiceSlotType(this.wireValue);
  final String wireValue;

  static CloudServiceSlotType fromValue(String value) {
    for (final item in CloudServiceSlotType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServiceSlotType value: $value');
  }
}
