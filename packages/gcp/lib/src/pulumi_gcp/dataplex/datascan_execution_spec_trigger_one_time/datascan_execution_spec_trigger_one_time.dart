// ignore_for_file: unused_element, unnecessary_cast

class DatascanExecutionSpecTriggerOneTime {
  /// Time to live for the DataScan and its results after the one-time run completes. Accepts a string with a unit suffix 's' (e.g., '7200s'). Default is 24 hours. Ranges between 0 and 31536000 seconds (1 year).
  final String? ttlAfterScanCompletion;

  DatascanExecutionSpecTriggerOneTime({
    this.ttlAfterScanCompletion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ttlAfterScanCompletionValue = ttlAfterScanCompletion;
    if (ttlAfterScanCompletionValue != null) {
      map['ttlAfterScanCompletion'] = ttlAfterScanCompletionValue;
    }
    return map;
  }

  factory DatascanExecutionSpecTriggerOneTime.fromMap(
      Map<String, dynamic> map) {
    return DatascanExecutionSpecTriggerOneTime(
      ttlAfterScanCompletion: map['ttlAfterScanCompletion'] == null
          ? null
          : map['ttlAfterScanCompletion'] as String,
    );
  }
}
