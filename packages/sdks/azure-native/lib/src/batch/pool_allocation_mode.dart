import 'package:pulumi/pulumi.dart' as pulumi;

/// The pool allocation mode also affects how clients may authenticate to the Batch Service API. If the mode is BatchService, clients may authenticate using access keys or Microsoft Entra ID. If the mode is UserSubscription, clients must use Microsoft Entra ID. The default is BatchService.
enum PoolAllocationMode implements pulumi.PulumiEnum<String> {
  batchService("BatchService"),
  userSubscription("UserSubscription");

  const PoolAllocationMode(this.wireValue);
  @override
  final String wireValue;

  static PoolAllocationMode fromValue(String value) {
    for (final item in PoolAllocationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PoolAllocationMode value: $value');
  }
}
