// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosts_filter.dart';

/// {@template pulumi_ec2_get_hosts_get_hosts_args_doc}
/// Arguments for getHosts.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_hosts_get_hosts_args_doc}
class GetHostsArgs {
  /// One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeHosts.html) for supported filters. Detailed below.
  final pulumi.Input<List<GetHostsFilter>?>? filters;
  /// ARN of the AWS Outpost. Filters results client-side to only include hosts allocated on this Outpost.
  final pulumi.Input<String?>? outpostArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags, each pair of which must exactly match a pair on the desired Dedicated Hosts.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetHostsArgs].
  /// [filters] One or more configuration blocks containing name-values filters. See the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeHosts.html) for supported filters. Detailed below.
  /// [outpostArn] ARN of the AWS Outpost. Filters results client-side to only include hosts allocated on this Outpost.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags, each pair of which must exactly match a pair on the desired Dedicated Hosts.
  const GetHostsArgs({
    this.filters,
    this.outpostArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetHostsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetHostsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outpostArn': ?outpostArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetHostsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetHostsFilter>(guardedValue, (value) => GetHostsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
