// ignore_for_file: unused_element, unnecessary_cast

/// Details for an outcome with a FAILURE outcome summary.
class FailureDetailResponse {
  /// If the failure was severe because the system (app) under test crashed.
  final bool crashed;

  /// If the device ran out of memory during a test, causing the test to crash.
  final bool deviceOutOfMemory;

  /// If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  final bool failedRoboscript;

  /// If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  final bool notInstalled;

  /// If a native process (including any other than the app) crashed.
  final bool otherNativeCrash;

  /// If the test overran some time limit, and that is why it failed.
  final bool timedOut;

  /// If the robo was unable to crawl the app; perhaps because the app did not start.
  final bool unableToCrawl;

  FailureDetailResponse({
    required this.crashed,
    required this.deviceOutOfMemory,
    required this.failedRoboscript,
    required this.notInstalled,
    required this.otherNativeCrash,
    required this.timedOut,
    required this.unableToCrawl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['crashed'] = crashed;
    map['deviceOutOfMemory'] = deviceOutOfMemory;
    map['failedRoboscript'] = failedRoboscript;
    map['notInstalled'] = notInstalled;
    map['otherNativeCrash'] = otherNativeCrash;
    map['timedOut'] = timedOut;
    map['unableToCrawl'] = unableToCrawl;
    return map;
  }

  factory FailureDetailResponse.fromMap(Map<String, dynamic> map) {
    return FailureDetailResponse(
      crashed: map['crashed'] as bool,
      deviceOutOfMemory: map['deviceOutOfMemory'] as bool,
      failedRoboscript: map['failedRoboscript'] as bool,
      notInstalled: map['notInstalled'] as bool,
      otherNativeCrash: map['otherNativeCrash'] as bool,
      timedOut: map['timedOut'] as bool,
      unableToCrawl: map['unableToCrawl'] as bool,
    );
  }
}
