// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_query_log_config_filter.dart';

/// Result data returned by getQueryLogConfig.
class GetQueryLogConfigResult {
  /// Computed ARN of the Route53 Resolver Query Logging Configuration.
  final String arn;

  /// The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group or a Kinesis Data Firehose delivery stream.
  final String destinationArn;
  final List<GetQueryLogConfigFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The name of the query logging configuration.
  final String? name;

  /// The AWS account ID for the account that created the query logging configuration.
  final String ownerId;
  final String region;
  final String? resolverQueryLogConfigId;

  /// An indication of whether the query logging configuration is shared with other AWS accounts or was shared with the current account by another AWS account.
  final String shareStatus;

  /// Map of tags to assign to the service.
  final Map<String, String> tags;

  /// Creates a new [GetQueryLogConfigResult].
  /// [arn] Computed ARN of the Route53 Resolver Query Logging Configuration.
  /// [destinationArn] The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group or a Kinesis Data Firehose delivery stream.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the query logging configuration.
  /// [ownerId] The AWS account ID for the account that created the query logging configuration.
  /// [region] Required.
  /// [resolverQueryLogConfigId] Optional.
  /// [shareStatus] An indication of whether the query logging configuration is shared with other AWS accounts or was shared with the current account by another AWS account.
  /// [tags] Map of tags to assign to the service.
  GetQueryLogConfigResult({
    required this.arn,
    required this.destinationArn,
    this.filters,
    required this.id,
    this.name,
    required this.ownerId,
    required this.region,
    this.resolverQueryLogConfigId,
    required this.shareStatus,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['destinationArn'] = destinationArn;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetQueryLogConfigFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['ownerId'] = ownerId;
    map['region'] = region;
    final resolverQueryLogConfigIdValue = resolverQueryLogConfigId;
    if (resolverQueryLogConfigIdValue != null) {
      map['resolverQueryLogConfigId'] = resolverQueryLogConfigIdValue;
    }
    map['shareStatus'] = shareStatus;
    map['tags'] = tags;
    return map;
  }

  factory GetQueryLogConfigResult.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigResult(
      arn: map['arn'] as String,
      destinationArn: map['destinationArn'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetQueryLogConfigFilter>(
              map['filters'],
              (value) => GetQueryLogConfigFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      resolverQueryLogConfigId: map['resolverQueryLogConfigId'] == null
          ? null
          : map['resolverQueryLogConfigId'] as String,
      shareStatus: map['shareStatus'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
