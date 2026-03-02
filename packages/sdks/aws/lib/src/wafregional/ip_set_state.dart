// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_ip_set_descriptor.dart';

/// Input properties used for looking up and filtering IpSet resources.
class IpSetState {
  /// The ARN of the WAF IPSet.
  final pulumi.Input<String>? arn;
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  final pulumi.Input<List<IpSetIpSetDescriptor>>? ipSetDescriptors;
  /// The name or description of the IPSet.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [IpSetState].
  /// [arn] The ARN of the WAF IPSet.
  /// [ipSetDescriptors] One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  /// [name] The name or description of the IPSet.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  IpSetState({
    this.arn,
    this.ipSetDescriptors,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipSetDescriptors': ?pulumi.Input.mapOptionalInputValue<List<IpSetIpSetDescriptor>, List<Map<String, dynamic>>>(ipSetDescriptors, (value) => pulumi.Input.encodeList<IpSetIpSetDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
    };
  }

  factory IpSetState.fromMap(Map<String, dynamic> map) {
    return IpSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      ipSetDescriptors: map['ipSetDescriptors'] == null ? null : ((pulumi.Input.decodeList<IpSetIpSetDescriptor>(map['ipSetDescriptors']!, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

