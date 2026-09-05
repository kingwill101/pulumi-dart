// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_set_ip_set_descriptor.dart';

/// {@template pulumi_waf_ip_set_ip_set_args_doc}
/// The set of arguments for IpSet.
/// {@endtemplate}
/// {@macro pulumi_waf_ip_set_ip_set_args_doc}
class IpSetArgs {
  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  final pulumi.Input<List<IpSetIpSetDescriptor>?>? ipSetDescriptors;
  /// The name or description of the IPSet.
  final pulumi.Input<String?>? name;

  /// Creates a new [IpSetArgs].
  /// [ipSetDescriptors] One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR format) from which web requests originate.
  /// [name] The name or description of the IPSet.
  const IpSetArgs({
    this.ipSetDescriptors,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetDescriptors': ?pulumi.Input.mapOptionalInputValue<List<IpSetIpSetDescriptor>, List<Map<String, dynamic>>>(ipSetDescriptors, (value) => pulumi.Input.encodeList<IpSetIpSetDescriptor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory IpSetArgs.fromMap(Map<String, dynamic> map) {
    return IpSetArgs(
      ipSetDescriptors: (() { final guardedValue = map['ipSetDescriptors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpSetIpSetDescriptor>(guardedValue, (value) => IpSetIpSetDescriptor.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
