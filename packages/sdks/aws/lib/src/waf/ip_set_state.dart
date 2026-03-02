// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_ip_set_descriptor.dart';

/// Input properties used for looking up and filtering IpSet resources.
class IpSetState {
  /// The ARN of the WAF IPSet.
  final pulumi.Input<String>? arn;
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  final pulumi.Input<List<IpSetIpSetDescriptor>>? ipSetDescriptors;
  /// The name or description of the IPSet.
  final pulumi.Input<String>? name;

  /// Creates a new [IpSetState].
  /// [arn] The ARN of the WAF IPSet.
  /// [ipSetDescriptors] One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  /// [name] The name or description of the IPSet.
  IpSetState({
    this.arn,
    this.ipSetDescriptors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'ipSetDescriptors': ?pulumi.Input.mapOptionalInputValue<List<IpSetIpSetDescriptor>, List<Map<String, dynamic>>>(ipSetDescriptors, (value) => pulumi.Input.encodeList<IpSetIpSetDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory IpSetState.fromMap(Map<String, dynamic> map) {
    return IpSetState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      ipSetDescriptors: map['ipSetDescriptors'] == null ? null : ((pulumi.Input.decodeList<IpSetIpSetDescriptor>(map['ipSetDescriptors']!, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
    );
  }
}

