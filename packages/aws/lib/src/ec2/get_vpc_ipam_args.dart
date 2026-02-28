// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_vpc_ipam_get_vpc_ipam_args_doc}
/// Arguments for getVpcIpam.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_ipam_get_vpc_ipam_args_doc}
class GetVpcIpamArgs {
  /// ID of the IPAM.
  final pulumi.Input<String> id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVpcIpamArgs].
  /// [id] ID of the IPAM.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetVpcIpamArgs({
    required String id,
    String? region,
  })  : id = pulumi.Input.asInput<String>(id),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetVpcIpamArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamArgs(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
