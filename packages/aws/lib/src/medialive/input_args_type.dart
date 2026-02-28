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
  /// A map of tags to assign to the Input. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] A map of tags to assign to the Input. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The different types of inputs that AWS Elemental MediaLive supports.
  /// [vpc] Settings for a private VPC Input. See VPC for more details.
  InputArgsType({
    List<InputDestination>? destinations,
    List<InputInputDevice>? inputDevices,
    List<String>? inputSecurityGroups,
    List<InputMediaConnectFlow>? mediaConnectFlows,
    String? name,
    String? region,
    String? roleArn,
    List<InputSource>? sources,
    Map<String, String>? tags,
    required String type,
    InputVpc? vpc,
  }) :
      destinations = pulumi.Input.asOptionalInput<List<InputDestination>>(destinations),
      inputDevices = pulumi.Input.asOptionalInput<List<InputInputDevice>>(inputDevices),
      inputSecurityGroups = pulumi.Input.asOptionalInput<List<String>>(inputSecurityGroups),
      mediaConnectFlows = pulumi.Input.asOptionalInput<List<InputMediaConnectFlow>>(mediaConnectFlows),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      sources = pulumi.Input.asOptionalInput<List<InputSource>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type),
      vpc = pulumi.Input.asOptionalInput<InputVpc>(vpc);

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
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<InputDestination>(map['destinations'], (value) => InputDestination.fromMap((value as Map).cast<String, dynamic>())),
      inputDevices: map['inputDevices'] == null ? null : pulumi.Input.decodeList<InputInputDevice>(map['inputDevices'], (value) => InputInputDevice.fromMap((value as Map).cast<String, dynamic>())),
      inputSecurityGroups: map['inputSecurityGroups'] == null ? null : (map['inputSecurityGroups'] as List).cast<String>(),
      mediaConnectFlows: map['mediaConnectFlows'] == null ? null : pulumi.Input.decodeList<InputMediaConnectFlow>(map['mediaConnectFlows'], (value) => InputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<InputSource>(map['sources'], (value) => InputSource.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vpc: map['vpc'] == null ? null : InputVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}

