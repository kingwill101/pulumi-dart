// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor2.dart';

/// The set of arguments for IpSet.
class IpSetArgs2 {
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  final Input<List<IpSetIpSetDescriptor2>>? ipSetDescriptors;

  /// The name or description of the IPSet.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  IpSetArgs2({
    this.ipSetDescriptors,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipSetDescriptorsValue = ipSetDescriptors;
    if (ipSetDescriptorsValue != null) {
      map['ipSetDescriptors'] = Input.mapOptionalInputValue<
              List<IpSetIpSetDescriptor2>, List<Map<String, dynamic>>>(
          ipSetDescriptorsValue,
          (value) =>
              Input.encodeList<IpSetIpSetDescriptor2, Map<String, dynamic>>(
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
    return map;
  }

  factory IpSetArgs2.fromMap(Map<String, dynamic> map) {
    return IpSetArgs2(
      ipSetDescriptors: Input.asOptionalInput<List<IpSetIpSetDescriptor2>>(
          map['ipSetDescriptors']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
