// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_public_ports_port_info.dart';

/// Input properties used for looking up and filtering InstancePublicPorts resources.
class InstancePublicPortsState {
  /// Name of the instance for which to open ports.
  final pulumi.Input<String>? instanceName;
  /// Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InstancePublicPortsPortInfo>>? portInfos;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InstancePublicPortsState].
  /// [instanceName] Name of the instance for which to open ports.
  /// [portInfos] Descriptor of the ports to open for the specified instance. AWS closes all currently open ports that are not included in this argument. See `port_info` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InstancePublicPortsState({
    pulumi.Output<String>? instanceName,
    pulumi.Output<List<InstancePublicPortsPortInfo>>? portInfos,
    pulumi.Output<String>? region,
  }) :
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      portInfos = pulumi.Input.asOptionalInput<List<InstancePublicPortsPortInfo>>(portInfos),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'portInfos': ?pulumi.Input.mapOptionalInputValue<List<InstancePublicPortsPortInfo>, List<Map<String, dynamic>>>(portInfos, (value) => pulumi.Input.encodeList<InstancePublicPortsPortInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory InstancePublicPortsState.fromMap(Map<String, dynamic> map) {
    return InstancePublicPortsState(
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      portInfos: map['portInfos'] == null ? null : pulumi.Output.create<List<InstancePublicPortsPortInfo>>(pulumi.Input.decodeList<InstancePublicPortsPortInfo>(map['portInfos'], (value) => InstancePublicPortsPortInfo.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

