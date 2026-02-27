// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_elastic_ip_filter/get_elastic_ip_filter.dart';

/// Arguments for getElasticIp.
class GetElasticIpArgs {
  /// One or more name/value pairs to use as filters. There are several valid keys, for a full reference, check out the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAddresses.html).
  final pulumi.Input<List<GetElasticIpFilter>>? filters;

  /// Allocation ID of the specific VPC EIP to retrieve. If a classic EIP is required, do NOT set `id`, only set `public_ip`
  final pulumi.Input<String>? id;

  /// Public IP of the specific EIP to retrieve.
  final pulumi.Input<String>? publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Elastic IP.
  ///
  /// The arguments of this data source act as filters for querying the available
  /// Elastic IPs in the current region. The given filters must match exactly one
  /// Elastic IP whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>>? tags;

  GetElasticIpArgs({
    this.filters,
    this.id,
    this.publicIp,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetElasticIpFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetElasticIpFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final publicIpValue = publicIp;
    if (publicIpValue != null) {
      map['publicIp'] = publicIpValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetElasticIpArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticIpArgs(
      filters: pulumi.Input.asOptionalInput<List<GetElasticIpFilter>>(
          map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      publicIp: pulumi.Input.asOptionalInput<String>(map['publicIp']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
