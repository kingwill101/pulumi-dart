// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsLogsSubscriptionFilter
class AwsLogsSubscriptionFilterPropertiesResponse {
  /// The Amazon Resource Name (ARN) of the destination.
  final String? destinationArn;
  /// The method used to distribute log data to the destination, which can be either random or grouped by log stream.
  final String? distribution;
  /// The name of the subscription filter.
  final String? filterName;
  /// The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  final String? filterPattern;
  /// The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
  final String? logGroupName;
  /// The ARN of an IAM role that grants CWL permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.
  final String? roleArn;

  /// Creates a new [AwsLogsSubscriptionFilterPropertiesResponse].
  /// [destinationArn] The Amazon Resource Name (ARN) of the destination.
  /// [distribution] The method used to distribute log data to the destination, which can be either random or grouped by log stream.
  /// [filterName] The name of the subscription filter.
  /// [filterPattern] The filtering expressions that restrict what gets delivered to the destination AWS resource. For more information about the filter pattern syntax, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
  /// [logGroupName] The log group to associate with the subscription filter. All log events that are uploaded to this log group are filtered and delivered to the specified AWS resource if the filter pattern matches the log events.
  /// [roleArn] The ARN of an IAM role that grants CWL permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.
  AwsLogsSubscriptionFilterPropertiesResponse({
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

  factory AwsLogsSubscriptionFilterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsLogsSubscriptionFilterPropertiesResponse(
      destinationArn: map['destinationArn'] == null ? null : map['destinationArn'] as String,
      distribution: map['distribution'] == null ? null : map['distribution'] as String,
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
      filterPattern: map['filterPattern'] == null ? null : map['filterPattern'] as String,
      logGroupName: map['logGroupName'] == null ? null : map['logGroupName'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}

