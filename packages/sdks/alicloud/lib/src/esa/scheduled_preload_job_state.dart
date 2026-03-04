// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduledPreloadJob resources.
class ScheduledPreloadJobState {
  /// The time when the task was created.
  final pulumi.Input<String>? createTime;

  /// The method to submit the URLs to be prefetched.
  final pulumi.Input<String>? insertWay;

  /// Preheat OSS files regularly and fill in the OSS file address. Note: The OSS file contains the URL that you need to warm up.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? ossUrl;

  /// The ID of the prefetch task.
  final pulumi.Input<String>? scheduledPreloadJobId;

  /// The task name.
  final pulumi.Input<String>? scheduledPreloadJobName;

  /// The site ID.
  final pulumi.Input<String>? siteId;

  /// A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? urlList;

  /// Creates a new [ScheduledPreloadJobState].
  /// [createTime] The time when the task was created.
  /// [insertWay] The method to submit the URLs to be prefetched.
  /// [ossUrl] Preheat OSS files regularly and fill in the OSS file address. Note: The OSS file contains the URL that you need to warm up.
  /// [scheduledPreloadJobId] The ID of the prefetch task.
  /// [scheduledPreloadJobName] The task name.
  /// [siteId] The site ID.
  /// [urlList] A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ScheduledPreloadJobState({
    this.createTime,
    this.insertWay,
    this.ossUrl,
    this.scheduledPreloadJobId,
    this.scheduledPreloadJobName,
    this.siteId,
    this.urlList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'insertWay': ?insertWay,
      'ossUrl': ?ossUrl,
      'scheduledPreloadJobId': ?scheduledPreloadJobId,
      'scheduledPreloadJobName': ?scheduledPreloadJobName,
      'siteId': ?siteId,
      'urlList': ?urlList,
    };
  }

  factory ScheduledPreloadJobState.fromMap(Map<String, dynamic> map) {
    return ScheduledPreloadJobState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      insertWay: (() {
        final guardedValue = map['insertWay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ossUrl: (() {
        final guardedValue = map['ossUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduledPreloadJobId: (() {
        final guardedValue = map['scheduledPreloadJobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduledPreloadJobName: (() {
        final guardedValue = map['scheduledPreloadJobName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: (() {
        final guardedValue = map['siteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      urlList: (() {
        final guardedValue = map['urlList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
