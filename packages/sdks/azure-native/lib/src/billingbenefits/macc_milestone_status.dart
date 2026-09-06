import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the current status of the Milestone.
enum MaccMilestoneStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  scheduled("Scheduled"),
  active("Active"),
  pending("Pending"),
  failed("Failed"),
  completed("Completed"),
  canceled("Canceled"),
  removed("Removed"),
  pendingSettlement("PendingSettlement"),
  shortfallCharged("ShortfallCharged"),
  shortfallWaived("ShortfallWaived");

  const MaccMilestoneStatus(this.wireValue);
  @override
  final String wireValue;

  static MaccMilestoneStatus fromValue(String value) {
    for (final item in MaccMilestoneStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccMilestoneStatus value: $value');
  }
}
