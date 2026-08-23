/// [Required] The compute power action.
enum ComputePowerAction {
  start("Start"),
  stop("Stop");

  const ComputePowerAction(this.wireValue);
  final String wireValue;

  static ComputePowerAction fromValue(String value) {
    for (final item in ComputePowerAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComputePowerAction value: $value');
  }
}
