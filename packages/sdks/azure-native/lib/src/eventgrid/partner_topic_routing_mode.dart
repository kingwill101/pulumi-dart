import 'package:pulumi/pulumi.dart' as pulumi;

/// This determines if events published to this partner namespace should use the source attribute in the event payload
/// or use the channel name in the header when matching to the partner topic. If none is specified, source attribute routing will be used to match the partner topic.
enum PartnerTopicRoutingMode implements pulumi.PulumiEnum<String> {
  valueSourceEventAttribute("SourceEventAttribute"),
  valueChannelNameHeader("ChannelNameHeader");

  const PartnerTopicRoutingMode(this.wireValue);
  @override
  final String wireValue;

  static PartnerTopicRoutingMode fromValue(String value) {
    for (final item in PartnerTopicRoutingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PartnerTopicRoutingMode value: $value');
  }
}
