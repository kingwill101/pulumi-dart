import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the event channel which represents the direction flow of events.
enum ChannelType implements pulumi.PulumiEnum<String> {
  valuePartnerTopic("PartnerTopic");

  const ChannelType(this.wireValue);
  @override
  final String wireValue;

  static ChannelType fromValue(String value) {
    for (final item in ChannelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelType value: $value');
  }
}
