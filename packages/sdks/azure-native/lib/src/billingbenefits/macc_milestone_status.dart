/// Represents the current status of the Milestone.
enum MaccMilestoneStatus {
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
