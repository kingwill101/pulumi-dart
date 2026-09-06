import 'package:pulumi/pulumi.dart' as pulumi;

/// Current status of the milestone
enum MilestoneStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  scheduled("Scheduled"),
  active("Active"),
  pending("Pending"),
  failed("Failed"),
  completed("Completed"),
  canceled("Canceled"),
  removed("Removed"),
  pendingSettlement("PendingSettlement"),
  missed("Missed");

  const MilestoneStatus(this.wireValue);
  @override
  final String wireValue;

  static MilestoneStatus fromValue(String value) {
    for (final item in MilestoneStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MilestoneStatus value: $value');
  }
}
