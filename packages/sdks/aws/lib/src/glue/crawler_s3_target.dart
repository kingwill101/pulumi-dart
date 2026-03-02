// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CrawlerS3Target {
  /// The name of a connection which allows crawler to access data in S3 within a VPC.
  final pulumi.Input<String>? connectionName;
  /// The ARN of the dead-letter SQS queue.
  final pulumi.Input<String>? dlqEventQueueArn;
  /// The ARN of the SQS queue to receive S3 notifications from.
  final pulumi.Input<String>? eventQueueArn;
  /// A list of glob patterns used to exclude from the crawl.
  final pulumi.Input<List<String>>? exclusions;
  /// The path to the Amazon S3 target.
  final pulumi.Input<String> path;
  /// Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249.
  final pulumi.Input<int>? sampleSize;

  /// Creates a new [CrawlerS3Target].
  /// [connectionName] The name of a connection which allows crawler to access data in S3 within a VPC.
  /// [dlqEventQueueArn] The ARN of the dead-letter SQS queue.
  /// [eventQueueArn] The ARN of the SQS queue to receive S3 notifications from.
  /// [exclusions] A list of glob patterns used to exclude from the crawl.
  /// [path] The path to the Amazon S3 target.
  /// [sampleSize] Sets the number of files in each leaf folder to be crawled when crawling sample files in a dataset. If not set, all the files are crawled. A valid value is an integer between 1 and 249.
  CrawlerS3Target({
    this.connectionName,
    this.dlqEventQueueArn,
    this.eventQueueArn,
    this.exclusions,
    required this.path,
    this.sampleSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'dlqEventQueueArn': ?dlqEventQueueArn,
      'eventQueueArn': ?eventQueueArn,
      'exclusions': ?exclusions,
      'path': path,
      'sampleSize': ?sampleSize,
    };
  }

  factory CrawlerS3Target.fromMap(Map<String, dynamic> map) {
    return CrawlerS3Target(
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      dlqEventQueueArn: map['dlqEventQueueArn'] == null ? null : (map['dlqEventQueueArn'] as String).input(),
      eventQueueArn: map['eventQueueArn'] == null ? null : (map['eventQueueArn'] as String).input(),
      exclusions: map['exclusions'] == null ? null : ((map['exclusions'] as List).cast<String>()).input(),
      path: (map['path'] as String).input(),
      sampleSize: map['sampleSize'] == null ? null : (map['sampleSize'] as int).input(),
    );
  }
}

