/// [Required] The compute power action.
enum ComputePowerAction {
  valueStart("Start"),
  valueStop("Stop");

  const ComputePowerAction(this.value);
  final String value;

  static ComputePowerAction fromValue(String value) {
    for (final item in ComputePowerAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputePowerAction value: $value');
  }
}

