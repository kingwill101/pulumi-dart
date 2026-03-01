/// Slot type for the cloud service.
/// Possible values are <br /><br />**Production**<br /><br />**Staging**<br /><br />
/// If not specified, the default value is Production.
enum CloudServiceSlotType {
  valueProduction("Production"),
  valueStaging("Staging");

  const CloudServiceSlotType(this.value);
  final String value;

  static CloudServiceSlotType fromValue(String value) {
    for (final item in CloudServiceSlotType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudServiceSlotType value: $value');
  }
}

