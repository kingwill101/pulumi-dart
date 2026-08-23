// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_destination.dart';
import 'input_input_device.dart';
import 'input_media_connect_flow.dart';
import 'input_source.dart';
import 'input_vpc.dart';

/// The set of arguments for Input.
class InputArgsType {
  /// Destination settings for PUSH type inputs. See Destinations for more details.
  final pulumi.Input<List<InputDestination>>? destinations;
  /// Settings for the devices. See Input Devices for more details.
  final pulumi.Input<List<InputInputDevice>>? inputDevices;
  /// List of input security groups.
  final pulumi.Input<List<String>>? inputSecurityGroups;
  /// A list of the MediaConnect Flows. See Media Connect Flows for more details.
  final pulumi.Input<List<InputMediaConnectFlow>>? mediaConnectFlows;
  /// Name of the input.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the role this input assumes during and after creation.
  final pulumi.Input<String>? roleArn;
  /// The source URLs for a PULL-type input. See Sources for more details.
  final pulumi.Input<List<InputSource>>? sources;
  /// A map of tags to assign to the Input. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The different types of inputs that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;
  /// Settings for a private VPC Input. See VPC for more details.
  final pulumi.Input<InputVpc>? vpc;

  /// Creates a new [InputArgsType].
  /// [destinations] Destination settings for PUSH type inputs. See Destinations for more details.
  /// [inputDevices] Settings for the devices. See Input Devices for more details.
  /// [inputSecurityGroups] List of input security groups.
  /// [mediaConnectFlows] A list of the MediaConnect Flows. See Media Connect Flows for more details.
  /// [name] Name of the input.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the role this input assumes during and after creation.
  /// [sources] The source URLs for a PULL-type input. See Sources for more details.
  /// [tags] A map of tags to assign to the Input. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The different types of inputs that AWS Elemental MediaLive supports.
  /// [vpc] Settings for a private VPC Input. See VPC for more details.
  const InputArgsType({
    this.destinations,
    this.inputDevices,
    this.inputSecurityGroups,
    this.mediaConnectFlows,
    this.name,
    this.region,
    this.roleArn,
    this.sources,
    this.tags,
    required this.type,
    this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<InputDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<InputDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputDevices': ?pulumi.Input.mapOptionalInputValue<List<InputInputDevice>, List<Map<String, dynamic>>>(inputDevices, (value) => pulumi.Input.encodeList<InputInputDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputSecurityGroups': ?inputSecurityGroups,
      'mediaConnectFlows': ?pulumi.Input.mapOptionalInputValue<List<InputMediaConnectFlow>, List<Map<String, dynamic>>>(mediaConnectFlows, (value) => pulumi.Input.encodeList<InputMediaConnectFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<InputSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<InputSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': type,
      'vpc': ?pulumi.Input.mapOptionalInputValue<InputVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory InputArgsType.fromMap(Map<String, dynamic> map) {
    return InputArgsType(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputDestination>(guardedValue, (value) => InputDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputDevices: (() { final guardedValue = map['inputDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputInputDevice>(guardedValue, (value) => InputInputDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputSecurityGroups: (() { final guardedValue = map['inputSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mediaConnectFlows: (() { final guardedValue = map['mediaConnectFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputMediaConnectFlow>(guardedValue, (value) => InputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputSource>(guardedValue, (value) => InputSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
