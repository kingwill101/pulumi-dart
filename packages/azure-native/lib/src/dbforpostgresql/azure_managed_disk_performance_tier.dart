/// Storage tier of a server.
enum AzureManagedDiskPerformanceTier {
  p1("P1"),
  p2("P2"),
  p3("P3"),
  p4("P4"),
  p6("P6"),
  p10("P10"),
  p15("P15"),
  p20("P20"),
  p30("P30"),
  p40("P40"),
  p50("P50"),
  p60("P60"),
  p70("P70"),
  p80("P80");

  const AzureManagedDiskPerformanceTier(this.value);
  final String value;

  static AzureManagedDiskPerformanceTier fromValue(String value) {
    for (final item in AzureManagedDiskPerformanceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureManagedDiskPerformanceTier value: $value');
  }
}

