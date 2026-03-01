/// The type of the event channel which represents the direction flow of events.
enum ChannelType {
  valuePartnerTopic("PartnerTopic");

  const ChannelType(this.value);
  final String value;

  static ChannelType fromValue(String value) {
    for (final item in ChannelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelType value: $value');
  }
}

