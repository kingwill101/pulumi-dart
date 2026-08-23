// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_filter.dart';

/// {@template pulumi_ec2_get_dedicated_host_get_dedicated_host_args_doc}
/// Arguments for getDedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_dedicated_host_get_dedicated_host_args_doc}
class GetDedicatedHostArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetDedicatedHostFilter>>? filters;
  /// ID of the Dedicated Host.
  ///
  /// The arguments of this data source act as filters for querying the available EC2 Hosts in the current region.
  /// The given filters must match exactly one host whose data will be exported as attributes.
  final pulumi.Input<String>? hostId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDedicatedHostArgs].
  /// [filters] Configuration block. Detailed below.
  /// [hostId] ID of the Dedicated Host.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  const GetDedicatedHostArgs({
    this.filters,
    this.hostId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDedicatedHostFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDedicatedHostFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostId': ?hostId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostFilter>(guardedValue, (value) => GetDedicatedHostFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
