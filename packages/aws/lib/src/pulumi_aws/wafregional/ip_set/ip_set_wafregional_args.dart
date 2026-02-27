// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor_wafregional.dart';

/// The set of arguments for IpSet.
class IpSetWafregionalArgs {
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  final pulumi.Input<List<IpSetIpSetDescriptorWafregional>>? ipSetDescriptors;

  /// The name or description of the IPSet.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  IpSetWafregionalArgs({
    this.ipSetDescriptors,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipSetDescriptorsValue = ipSetDescriptors;
    if (ipSetDescriptorsValue != null) {
      map['ipSetDescriptors'] = pulumi.Input.mapOptionalInputValue<
              List<IpSetIpSetDescriptorWafregional>,
              List<Map<String, dynamic>>>(
          ipSetDescriptorsValue,
          (value) => pulumi.Input.encodeList<IpSetIpSetDescriptorWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory IpSetWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return IpSetWafregionalArgs(
      ipSetDescriptors:
          pulumi.Input.asOptionalInput<List<IpSetIpSetDescriptorWafregional>>(
              map['ipSetDescriptors']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
