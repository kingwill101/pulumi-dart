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
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? ossUrl;
  /// The ID of the prefetch task.
  final pulumi.Input<String>? scheduledPreloadJobId;
  /// The task name.
  final pulumi.Input<String>? scheduledPreloadJobName;
  /// The site ID.
  final pulumi.Input<String>? siteId;
  /// A list of URLs to be preheated, which is used when uploading a preheated file in the text box mode.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? insertWay,
    pulumi.Output<String>? ossUrl,
    pulumi.Output<String>? scheduledPreloadJobId,
    pulumi.Output<String>? scheduledPreloadJobName,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? urlList,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      insertWay = pulumi.Input.asOptionalInput<String>(insertWay),
      ossUrl = pulumi.Input.asOptionalInput<String>(ossUrl),
      scheduledPreloadJobId = pulumi.Input.asOptionalInput<String>(scheduledPreloadJobId),
      scheduledPreloadJobName = pulumi.Input.asOptionalInput<String>(scheduledPreloadJobName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      urlList = pulumi.Input.asOptionalInput<String>(urlList);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      insertWay: map['insertWay'] == null ? null : pulumi.Output.create<String>(map['insertWay'] as String),
      ossUrl: map['ossUrl'] == null ? null : pulumi.Output.create<String>(map['ossUrl'] as String),
      scheduledPreloadJobId: map['scheduledPreloadJobId'] == null ? null : pulumi.Output.create<String>(map['scheduledPreloadJobId'] as String),
      scheduledPreloadJobName: map['scheduledPreloadJobName'] == null ? null : pulumi.Output.create<String>(map['scheduledPreloadJobName'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      urlList: map['urlList'] == null ? null : pulumi.Output.create<String>(map['urlList'] as String),
    );
  }
}

