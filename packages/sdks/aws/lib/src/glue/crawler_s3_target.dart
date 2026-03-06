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
  const CrawlerS3Target({
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
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dlqEventQueueArn: (() { final guardedValue = map['dlqEventQueueArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventQueueArn: (() { final guardedValue = map['eventQueueArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      sampleSize: (() { final guardedValue = map['sampleSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

