// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsLogsSubscriptionFilter
class AwsLogsSubscriptionFilterProperties {
  /// The Amazon Resource Name (ARN) of the destination.
  final pulumi.Input<String>? destinationArn;
  /// The method used to distribute log data to the destination, which can be either random or grouped by log stream.
  final pulumi.Input<String>? distribution;
  /// The name of the subscription filter.
  final pulumi.Input<String>? filterName;
  /// The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final pulumi.Input<String>? filterPattern;
  /// The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
  final pulumi.Input<String>? logGroupName;
  /// The ARN of an IAM role that grants CWL permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [AwsLogsSubscriptionFilterProperties].
  /// [destinationArn] The Amazon Resource Name (ARN) of the destination.
  /// [distribution] The method used to distribute log data to the destination, which can be either random or grouped by log stream.
  /// [filterName] The name of the subscription filter.
  /// [filterPattern] The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroupName] The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
  /// [roleArn] The ARN of an IAM role that grants CWL permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.
  const AwsLogsSubscriptionFilterProperties({
    this.destinationArn,
    this.distribution,
    this.filterName,
    this.filterPattern,
    this.logGroupName,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': ?destinationArn,
      'distribution': ?distribution,
      'filterName': ?filterName,
      'filterPattern': ?filterPattern,
      'logGroupName': ?logGroupName,
      'roleArn': ?roleArn,
    };
  }

  factory AwsLogsSubscriptionFilterProperties.fromMap(Map<String, dynamic> map) {
    return AwsLogsSubscriptionFilterProperties(
      destinationArn: (() { final guardedValue = map['destinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterPattern: (() { final guardedValue = map['filterPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logGroupName: (() { final guardedValue = map['logGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
