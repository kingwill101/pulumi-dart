/// Represents the current status of the MACC.
enum MaccStatus {
  valueUnknown("Unknown"),
  valueScheduled("Scheduled"),
  valueActive("Active"),
  valuePending("Pending"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueCompleted("Completed"),
  valueStopped("Stopped"),
  valuePendingSettlement("PendingSettlement"),
  valueShortfallCharged("ShortfallCharged"),
  valueShortfallWaived("ShortfallWaived");

  const MaccStatus(this.wireValue);
  final String wireValue;

  static MaccStatus fromValue(String value) {
    for (final item in MaccStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MaccStatus value: $value');
  }
}

