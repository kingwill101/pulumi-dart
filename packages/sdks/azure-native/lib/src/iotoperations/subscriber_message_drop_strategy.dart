import 'package:pulumi/pulumi.dart' as pulumi;

/// The strategy to use for dropping messages from the queue.
enum SubscriberMessageDropStrategy implements pulumi.PulumiEnum<String> {
  none("None"),
  dropOldest("DropOldest");

  const SubscriberMessageDropStrategy(this.wireValue);
  @override
  final String wireValue;

  static SubscriberMessageDropStrategy fromValue(String value) {
    for (final item in SubscriberMessageDropStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriberMessageDropStrategy value: $value');
  }
}
