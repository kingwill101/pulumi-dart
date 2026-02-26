// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetail {
  /// If the failure was severe because the system (app) under test crashed.
  final bool? crashed;

  /// If the device ran out of memory during a test, causing the test to crash.
  final bool? deviceOutOfMemory;

  /// If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  final bool? failedRoboscript;

  /// If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  final bool? notInstalled;

  /// If a native process (including any other than the app) crashed.
  final bool? otherNativeCrash;

  /// If the test overran some time limit, and that is why it failed.
  final bool? timedOut;

  /// If the robo was unable to crawl the app; perhaps because the app did not start.
  final bool? unableToCrawl;

  FailureDetail({
    this.crashed,
    this.deviceOutOfMemory,
    this.failedRoboscript,
    this.notInstalled,
    this.otherNativeCrash,
    this.timedOut,
    this.unableToCrawl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crashedValue = crashed;
    if (crashedValue != null) {
      map['crashed'] = crashedValue;
    }
    final deviceOutOfMemoryValue = deviceOutOfMemory;
    if (deviceOutOfMemoryValue != null) {
      map['deviceOutOfMemory'] = deviceOutOfMemoryValue;
    }
    final failedRoboscriptValue = failedRoboscript;
    if (failedRoboscriptValue != null) {
      map['failedRoboscript'] = failedRoboscriptValue;
    }
    final notInstalledValue = notInstalled;
    if (notInstalledValue != null) {
      map['notInstalled'] = notInstalledValue;
    }
    final otherNativeCrashValue = otherNativeCrash;
    if (otherNativeCrashValue != null) {
      map['otherNativeCrash'] = otherNativeCrashValue;
    }
    final timedOutValue = timedOut;
    if (timedOutValue != null) {
      map['timedOut'] = timedOutValue;
    }
    final unableToCrawlValue = unableToCrawl;
    if (unableToCrawlValue != null) {
      map['unableToCrawl'] = unableToCrawlValue;
    }
    return map;
  }

  factory FailureDetail.fromMap(Map<String, dynamic> map) {
    return FailureDetail(
      crashed: map['crashed'] == null ? null : map['crashed'] as bool,
      deviceOutOfMemory: map['deviceOutOfMemory'] == null
          ? null
          : map['deviceOutOfMemory'] as bool,
      failedRoboscript: map['failedRoboscript'] == null
          ? null
          : map['failedRoboscript'] as bool,
      notInstalled:
          map['notInstalled'] == null ? null : map['notInstalled'] as bool,
      otherNativeCrash: map['otherNativeCrash'] == null
          ? null
          : map['otherNativeCrash'] as bool,
      timedOut: map['timedOut'] == null ? null : map['timedOut'] as bool,
      unableToCrawl:
          map['unableToCrawl'] == null ? null : map['unableToCrawl'] as bool,
    );
  }
}
