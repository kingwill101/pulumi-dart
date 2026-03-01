// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_query_log_config_filter.dart';

/// {@template pulumi_route53_get_query_log_config_get_query_log_config_args_doc}
/// Arguments for getQueryLogConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_get_query_log_config_get_query_log_config_args_doc}
class GetQueryLogConfigArgs {
  /// One or more name/value pairs to use as filters. There are
  /// several valid keys, for a full reference, check out
  /// [Route53resolver Filter value in the AWS API reference][1].
  final pulumi.Input<List<GetQueryLogConfigFilter>>? filters;
  /// The name of the query logging configuration.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the Route53 Resolver Query Logging Configuration.
  final pulumi.Input<String>? resolverQueryLogConfigId;
  /// Map of tags to assign to the service.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetQueryLogConfigArgs].
  /// [filters] One or more name/value pairs to use as filters. There are
  /// [name] The name of the query logging configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resolverQueryLogConfigId] ID of the Route53 Resolver Query Logging Configuration.
  /// [tags] Map of tags to assign to the service.
  GetQueryLogConfigArgs({
    pulumi.Output<List<GetQueryLogConfigFilter>>? filters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resolverQueryLogConfigId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetQueryLogConfigFilter>>(filters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resolverQueryLogConfigId = pulumi.Input.asOptionalInput<String>(resolverQueryLogConfigId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetQueryLogConfigFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetQueryLogConfigFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'resolverQueryLogConfigId': ?resolverQueryLogConfigId,
      'tags': ?tags,
    };
  }

  factory GetQueryLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigArgs(
      filters: map['filters'] == null ? null : pulumi.Output.create<List<GetQueryLogConfigFilter>>(pulumi.Input.decodeList<GetQueryLogConfigFilter>(map['filters'], (value) => GetQueryLogConfigFilter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resolverQueryLogConfigId: map['resolverQueryLogConfigId'] == null ? null : pulumi.Output.create<String>(map['resolverQueryLogConfigId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

