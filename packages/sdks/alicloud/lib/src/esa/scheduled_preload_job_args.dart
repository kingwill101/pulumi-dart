// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_scheduled_preload_job_scheduled_preload_job_args_doc}
/// The set of arguments for ScheduledPreloadJob.
/// {@endtemplate}
/// {@macro pulumi_esa_scheduled_preload_job_scheduled_preload_job_args_doc}
class ScheduledPreloadJobArgs {
  /// The method to submit the URLs to be prefetched.
  final pulumi.Input<String> insertWay;
  /// Preheat OSS files regularly and fill in the OSS file address. Note: The OSS file contains the URL that you need to warm up.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? ossUrl;
  /// The task name.
  final pulumi.Input<String> scheduledPreloadJobName;
  /// The site ID.
  final pulumi.Input<String> siteId;
  /// A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? urlList;

  /// Creates a new [ScheduledPreloadJobArgs].
  /// [insertWay] The method to submit the URLs to be prefetched.
  /// [ossUrl] Preheat OSS files regularly and fill in the OSS file address. Note: The OSS file contains the URL that you need to warm up.
  /// [scheduledPreloadJobName] The task name.
  /// [siteId] The site ID.
  /// [urlList] A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ScheduledPreloadJobArgs({
    required this.insertWay,
    this.ossUrl,
    required this.scheduledPreloadJobName,
    required this.siteId,
    this.urlList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertWay': insertWay,
      'ossUrl': ?ossUrl,
      'scheduledPreloadJobName': scheduledPreloadJobName,
      'siteId': siteId,
      'urlList': ?urlList,
    };
  }

  factory ScheduledPreloadJobArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledPreloadJobArgs(
      insertWay: (map['insertWay'] as String).input(),
      ossUrl: map['ossUrl'] == null ? null : (map['ossUrl']! as String).input(),
      scheduledPreloadJobName: (map['scheduledPreloadJobName'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      urlList: map['urlList'] == null ? null : (map['urlList']! as String).input(),
    );
  }
}

