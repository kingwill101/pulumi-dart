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
    pulumi.Output<String>? arn,
    pulumi.Output<List<IpSetIpSetDescriptor>>? ipSetDescriptors,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ipSetDescriptors = pulumi.Input.asOptionalInput<List<IpSetIpSetDescriptor>>(ipSetDescriptors),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ipSetDescriptors: map['ipSetDescriptors'] == null ? null : pulumi.Output.create<List<IpSetIpSetDescriptor>>(pulumi.Input.decodeList<IpSetIpSetDescriptor>(map['ipSetDescriptors'], (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

