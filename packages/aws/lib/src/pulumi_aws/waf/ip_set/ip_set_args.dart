// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor.dart';

/// The set of arguments for IpSet.
class IpSetArgs {
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  final Input<List<IpSetIpSetDescriptor>>? ipSetDescriptors;

  /// The name or description of the IPSet.
  final Input<String>? name;

  IpSetArgs({
    this.ipSetDescriptors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipSetDescriptorsValue = ipSetDescriptors;
    if (ipSetDescriptorsValue != null) {
      map['ipSetDescriptors'] = Input.mapOptionalInputValue<
              List<IpSetIpSetDescriptor>, List<Map<String, dynamic>>>(
          ipSetDescriptorsValue,
          (value) =>
              Input.encodeList<IpSetIpSetDescriptor, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory IpSetArgs.fromMap(Map<String, dynamic> map) {
    return IpSetArgs(
      ipSetDescriptors: Input.asOptionalInput<List<IpSetIpSetDescriptor>>(
          map['ipSetDescriptors']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
