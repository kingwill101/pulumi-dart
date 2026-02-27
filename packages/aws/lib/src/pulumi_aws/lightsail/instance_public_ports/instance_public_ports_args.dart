// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_public_ports_port_info/instance_public_ports_port_info.dart';

/// The set of arguments for InstancePublicPorts.
class InstancePublicPortsArgs {
  /// Name of the instance for which to open ports.
  final pulumi.Input<String> instanceName;

  /// Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InstancePublicPortsPortInfo>> portInfos;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InstancePublicPortsArgs({
    required this.instanceName,
    required this.portInfos,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceName'] = instanceName;
    map['portInfos'] = pulumi.Input.mapInputValue<
            List<InstancePublicPortsPortInfo>, List<Map<String, dynamic>>>(
        portInfos,
        (value) => pulumi.Input.encodeList<InstancePublicPortsPortInfo,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InstancePublicPortsArgs.fromMap(Map<String, dynamic> map) {
    return InstancePublicPortsArgs(
      instanceName: pulumi.Input.asInput<String>(map['instanceName']),
      portInfos: pulumi.Input.asInput<List<InstancePublicPortsPortInfo>>(
          map['portInfos']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
