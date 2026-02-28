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

  /// Creates a new [FailureDetail].
  /// [crashed] If the failure was severe because the system (app) under test crashed.
  /// [deviceOutOfMemory] If the device ran out of memory during a test, causing the test to crash.
  /// [failedRoboscript] If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion failed or a Roboscript action could not be matched during the entire crawl.
  /// [notInstalled] If an app is not installed and thus no test can be run with the app. This might be caused by trying to run a test on an unsupported platform.
  /// [otherNativeCrash] If a native process (including any other than the app) crashed.
  /// [timedOut] If the test overran some time limit, and that is why it failed.
  /// [unableToCrawl] If the robo was unable to crawl the app; perhaps because the app did not start.
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
    return <String, dynamic>{
      'crashed': ?crashed,
      'deviceOutOfMemory': ?deviceOutOfMemory,
      'failedRoboscript': ?failedRoboscript,
      'notInstalled': ?notInstalled,
      'otherNativeCrash': ?otherNativeCrash,
      'timedOut': ?timedOut,
      'unableToCrawl': ?unableToCrawl,
    };
  }

  factory FailureDetail.fromMap(Map<String, dynamic> map) {
    return FailureDetail(
      crashed: map['crashed'] == null ? null : map['crashed'] as bool,
      deviceOutOfMemory: map['deviceOutOfMemory'] == null ? null : map['deviceOutOfMemory'] as bool,
      failedRoboscript: map['failedRoboscript'] == null ? null : map['failedRoboscript'] as bool,
      notInstalled: map['notInstalled'] == null ? null : map['notInstalled'] as bool,
      otherNativeCrash: map['otherNativeCrash'] == null ? null : map['otherNativeCrash'] as bool,
      timedOut: map['timedOut'] == null ? null : map['timedOut'] as bool,
      unableToCrawl: map['unableToCrawl'] == null ? null : map['unableToCrawl'] as bool,
    );
  }
}

