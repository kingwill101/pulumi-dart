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
    this.filters,
    this.name,
    this.region,
    this.resolverQueryLogConfigId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetQueryLogConfigFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetQueryLogConfigFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'region': ?region,
      'resolverQueryLogConfigId': ?resolverQueryLogConfigId,
      'tags': ?tags,
    };
  }

  factory GetQueryLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetQueryLogConfigFilter>(
            guardedValue,
            (value) => GetQueryLogConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolverQueryLogConfigId: (() {
        final guardedValue = map['resolverQueryLogConfigId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
