import 'package:pulumi/pulumi.dart' as pulumi;

/// A flag to determine whether or not ChannelBinding is enabled or disabled.
enum ChannelBinding implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ChannelBinding(this.wireValue);
  @override
  final String wireValue;

  static ChannelBinding fromValue(String value) {
    for (final item in ChannelBinding.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelBinding value: $value');
  }
}
