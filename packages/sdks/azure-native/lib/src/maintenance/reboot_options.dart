import 'package:pulumi/pulumi.dart' as pulumi;

/// Possible reboot preference as defined by the user based on which it would be decided to reboot the machine or not after the patch operation is completed.
enum RebootOptions implements pulumi.PulumiEnum<String> {
  ifRequired("IfRequired"),
  never_("Never"),
  always("Always");

  const RebootOptions(this.wireValue);
  @override
  final String wireValue;

  static RebootOptions fromValue(String value) {
    for (final item in RebootOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RebootOptions value: $value');
  }
}
