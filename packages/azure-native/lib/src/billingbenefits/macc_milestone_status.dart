/// Represents the current status of the Milestone.
enum MaccMilestoneStatus {
  valueUnknown("Unknown"),
  valueScheduled("Scheduled"),
  valueActive("Active"),
  valuePending("Pending"),
  valueFailed("Failed"),
  valueCompleted("Completed"),
  valueCanceled("Canceled"),
  valueRemoved("Removed"),
  valuePendingSettlement("PendingSettlement"),
  valueShortfallCharged("ShortfallCharged"),
  valueShortfallWaived("ShortfallWaived");

  const MaccMilestoneStatus(this.value);
  final String value;

  static MaccMilestoneStatus fromValue(String value) {
    for (final item in MaccMilestoneStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccMilestoneStatus value: $value');
  }
}

