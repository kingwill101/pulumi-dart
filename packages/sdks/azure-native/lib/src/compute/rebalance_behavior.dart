import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
enum RebalanceBehavior implements pulumi.PulumiEnum<String> {
  createBeforeDelete("CreateBeforeDelete");

  const RebalanceBehavior(this.wireValue);
  @override
  final String wireValue;

  static RebalanceBehavior fromValue(String value) {
    for (final item in RebalanceBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RebalanceBehavior value: $value');
  }
}
