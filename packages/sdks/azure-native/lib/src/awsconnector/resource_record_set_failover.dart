import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ResourceRecordSetFailover implements pulumi.PulumiEnum<String> {
  pRIMARY("PRIMARY"),
  sECONDARY("SECONDARY");

  const ResourceRecordSetFailover(this.wireValue);
  @override
  final String wireValue;

  static ResourceRecordSetFailover fromValue(String value) {
    for (final item in ResourceRecordSetFailover.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceRecordSetFailover value: $value');
  }
}
