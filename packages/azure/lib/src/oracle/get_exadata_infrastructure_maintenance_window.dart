// ignore_for_file: unused_element, unnecessary_cast


class GetExadataInfrastructureMaintenanceWindow {
  /// If true, enables the configuration of a custom action timeout (waiting period) between database servers patching operations.
  final bool customActionTimeoutEnabled;
  final int customActionTimeoutInMins;
  /// Days during the week when maintenance should be performed.
  final List<String> daysOfWeeks;
  /// The window of hours during the day when maintenance should be performed.
  final List<int> hoursOfDays;
  /// Lead time window allows user to set a lead time to prepare for a down time.
  final int leadTimeInWeeks;
  /// If true, enables the monthly patching option.
  final bool monthlyPatchingEnabled;
  /// A `months` block as defined below.
  final List<String> months;
  /// Cloud Exadata Infrastructure node patching method.
  final String patchingMode;
  /// The maintenance window scheduling preference.
  final String preference;
  /// Weeks during the month when maintenance should be performed.
  final List<int> weeksOfMonths;

  /// Creates a new [GetExadataInfrastructureMaintenanceWindow].
  /// [customActionTimeoutEnabled] If true, enables the configuration of a custom action timeout (waiting period) between database servers patching operations.
  /// [customActionTimeoutInMins] Required.
  /// [daysOfWeeks] Days during the week when maintenance should be performed.
  /// [hoursOfDays] The window of hours during the day when maintenance should be performed.
  /// [leadTimeInWeeks] Lead time window allows user to set a lead time to prepare for a down time.
  /// [monthlyPatchingEnabled] If true, enables the monthly patching option.
  /// [months] A `months` block as defined below.
  /// [patchingMode] Cloud Exadata Infrastructure node patching method.
  /// [preference] The maintenance window scheduling preference.
  /// [weeksOfMonths] Weeks during the month when maintenance should be performed.
  GetExadataInfrastructureMaintenanceWindow({
    required this.customActionTimeoutEnabled,
    required this.customActionTimeoutInMins,
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.leadTimeInWeeks,
    required this.monthlyPatchingEnabled,
    required this.months,
    required this.patchingMode,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutEnabled': customActionTimeoutEnabled,
      'customActionTimeoutInMins': customActionTimeoutInMins,
      'daysOfWeeks': daysOfWeeks,
      'hoursOfDays': hoursOfDays,
      'leadTimeInWeeks': leadTimeInWeeks,
      'monthlyPatchingEnabled': monthlyPatchingEnabled,
      'months': months,
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetExadataInfrastructureMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureMaintenanceWindow(
      customActionTimeoutEnabled: map['customActionTimeoutEnabled'] as bool,
      customActionTimeoutInMins: map['customActionTimeoutInMins'] as int,
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hoursOfDays: (map['hoursOfDays'] as List).cast<int>(),
      leadTimeInWeeks: map['leadTimeInWeeks'] as int,
      monthlyPatchingEnabled: map['monthlyPatchingEnabled'] as bool,
      months: (map['months'] as List).cast<String>(),
      patchingMode: map['patchingMode'] as String,
      preference: map['preference'] as String,
      weeksOfMonths: (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}

