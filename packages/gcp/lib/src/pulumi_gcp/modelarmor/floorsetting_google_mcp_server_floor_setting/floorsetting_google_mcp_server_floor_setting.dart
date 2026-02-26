// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingGoogleMcpServerFloorSetting {
  /// If true, log Model Armor filter results to Cloud Logging.
  final bool? enableCloudLogging;

  /// If true, Model Armor filters will be run in inspect and block mode.
  /// Requests that trip Model Armor filters will be blocked.
  final bool? inspectAndBlock;

  /// If true, Model Armor filters will be run in inspect only mode. No action
  /// will be taken on the request.
  final bool? inspectOnly;

  FloorsettingGoogleMcpServerFloorSetting({
    this.enableCloudLogging,
    this.inspectAndBlock,
    this.inspectOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableCloudLoggingValue = enableCloudLogging;
    if (enableCloudLoggingValue != null) {
      map['enableCloudLogging'] = enableCloudLoggingValue;
    }
    final inspectAndBlockValue = inspectAndBlock;
    if (inspectAndBlockValue != null) {
      map['inspectAndBlock'] = inspectAndBlockValue;
    }
    final inspectOnlyValue = inspectOnly;
    if (inspectOnlyValue != null) {
      map['inspectOnly'] = inspectOnlyValue;
    }
    return map;
  }

  factory FloorsettingGoogleMcpServerFloorSetting.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingGoogleMcpServerFloorSetting(
      enableCloudLogging: map['enableCloudLogging'] == null
          ? null
          : map['enableCloudLogging'] as bool,
      inspectAndBlock: map['inspectAndBlock'] == null
          ? null
          : map['inspectAndBlock'] as bool,
      inspectOnly:
          map['inspectOnly'] == null ? null : map['inspectOnly'] as bool,
    );
  }
}
