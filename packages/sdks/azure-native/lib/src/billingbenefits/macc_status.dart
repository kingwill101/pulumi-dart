import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the current status of the MACC.
enum MaccStatus implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  scheduled("Scheduled"),
  active("Active"),
  pending("Pending"),
  failed("Failed"),
  canceled("Canceled"),
  completed("Completed"),
  stopped("Stopped"),
  pendingSettlement("PendingSettlement"),
  shortfallCharged("ShortfallCharged"),
  shortfallWaived("ShortfallWaived");

  const MaccStatus(this.wireValue);
  @override
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
