// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_public_ports_port_info.dart';

/// {@template pulumi_lightsail_instance_public_ports_instance_public_ports_args_doc}
/// The set of arguments for InstancePublicPorts.
/// {@endtemplate}
/// {@macro pulumi_lightsail_instance_public_ports_instance_public_ports_args_doc}
class InstancePublicPortsArgs {
  /// Name of the instance for which to open ports.
  final pulumi.Input<String> instanceName;
  /// Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InstancePublicPortsPortInfo>> portInfos;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InstancePublicPortsArgs].
  /// [instanceName] Name of the instance for which to open ports.
  /// [portInfos] Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InstancePublicPortsArgs({
    required this.instanceName,
    required this.portInfos,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'portInfos': pulumi.Input.mapInputValue<List<InstancePublicPortsPortInfo>, List<Map<String, dynamic>>>(portInfos, (value) => pulumi.Input.encodeList<InstancePublicPortsPortInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory InstancePublicPortsArgs.fromMap(Map<String, dynamic> map) {
    return InstancePublicPortsArgs(
      instanceName: (map['instanceName'] as String).input(),
      portInfos: (pulumi.Input.decodeList<InstancePublicPortsPortInfo>(map['portInfos']!, (value) => InstancePublicPortsPortInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

