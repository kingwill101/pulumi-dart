// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_elastic_ip_filter.dart';

/// {@template pulumi_ec2_get_elastic_ip_get_elastic_ip_args_doc}
/// Arguments for getElasticIp.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_elastic_ip_get_elastic_ip_args_doc}
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

  /// Creates a new [GetElasticIpArgs].
  /// [filters] One or more name/value pairs to use as filters. There are several valid keys, for a full reference, check out the [EC2 API Reference](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAddresses.html).
  /// [id] Allocation ID of the specific VPC EIP to retrieve. If a classic EIP is required, do NOT set `id`, only set `public_ip`
  /// [publicIp] Public IP of the specific EIP to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Elastic IP.
  GetElasticIpArgs({
    List<GetElasticIpFilter>? filters,
    String? id,
    String? publicIp,
    String? region,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetElasticIpFilter>>(filters),
      id = pulumi.Input.asOptionalInput<String>(id),
      publicIp = pulumi.Input.asOptionalInput<String>(publicIp),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetElasticIpFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetElasticIpFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'publicIp': ?publicIp,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetElasticIpArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticIpArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetElasticIpFilter>(map['filters'], (value) => GetElasticIpFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      publicIp: map['publicIp'] == null ? null : map['publicIp'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

