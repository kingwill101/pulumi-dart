// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_query_log_config_filter/get_query_log_config_filter.dart';

/// Arguments for getQueryLogConfig.
class GetQueryLogConfigArgs {
  /// One or more name/value pairs to use as filters. There are
  /// several valid keys, for a full reference, check out
  /// [Route53resolver Filter value in the AWS API reference][1].
  final Input<List<GetQueryLogConfigFilter>>? filters;

  /// The name of the query logging configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the Route53 Resolver Query Logging Configuration.
  final Input<String>? resolverQueryLogConfigId;

  /// Map of tags to assign to the service.
  final Input<Map<String, String>>? tags;

  GetQueryLogConfigArgs({
    this.filters,
    this.name,
    this.region,
    this.resolverQueryLogConfigId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetQueryLogConfigFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetQueryLogConfigFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resolverQueryLogConfigIdValue = resolverQueryLogConfigId;
    if (resolverQueryLogConfigIdValue != null) {
      map['resolverQueryLogConfigId'] = resolverQueryLogConfigIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetQueryLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryLogConfigArgs(
      filters:
          Input.asOptionalInput<List<GetQueryLogConfigFilter>>(map['filters']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resolverQueryLogConfigId:
          Input.asOptionalInput<String>(map['resolverQueryLogConfigId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
