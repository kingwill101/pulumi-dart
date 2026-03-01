/// The operation the trigger is associated with
enum TriggerOperation {
  valueAll("All"),
  valueCreate("Create"),
  valueUpdate("Update"),
  valueDelete("Delete"),
  valueReplace("Replace");

  const TriggerOperation(this.value);
  final String value;

  static TriggerOperation fromValue(String value) {
    for (final item in TriggerOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerOperation value: $value');
  }
}

