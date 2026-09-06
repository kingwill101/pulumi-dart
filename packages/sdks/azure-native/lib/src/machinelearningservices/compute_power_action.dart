import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The compute power action.
enum ComputePowerAction implements pulumi.PulumiEnum<String> {
  start("Start"),
  stop("Stop");

  const ComputePowerAction(this.wireValue);
  @override
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
