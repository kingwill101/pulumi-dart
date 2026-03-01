/// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
enum RebootOptions {
  ifRequired("IfRequired"),
  never("Never"),
  always("Always");

  const RebootOptions(this.value);
  final String value;

  static RebootOptions fromValue(String value) {
    for (final item in RebootOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RebootOptions value: $value');
  }
}

