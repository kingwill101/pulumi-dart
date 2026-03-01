// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'input_destination.dart';
import 'input_input_device.dart';
import 'input_media_connect_flow.dart';
import 'input_source.dart';
import 'input_vpc.dart';

/// Input properties used for looking up and filtering Input resources.
class InputState {
  /// ARN of the Input.
  final pulumi.Input<String>? arn;
  /// Channels attached to Input.
  final pulumi.Input<List<String>>? attachedChannels;
  /// Destination settings for PUSH type inputs. See Destinations for more details.
  final pulumi.Input<List<InputDestination>>? destinations;
  /// The input class.
  final pulumi.Input<String>? inputClass;
  /// Settings for the devices. See Input Devices for more details.
  final pulumi.Input<List<InputInputDevice>>? inputDevices;
  /// A list of IDs for all Inputs which are partners of this one.
  final pulumi.Input<List<String>>? inputPartnerIds;
  /// List of input security groups.
  final pulumi.Input<List<String>>? inputSecurityGroups;
  /// Source type of the input.
  final pulumi.Input<String>? inputSourceType;
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
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The different types of inputs that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;
  /// Settings for a private VPC Input. See VPC for more details.
  final pulumi.Input<InputVpc>? vpc;

  /// Creates a new [InputState].
  /// [arn] ARN of the Input.
  /// [attachedChannels] Channels attached to Input.
  /// [destinations] Destination settings for PUSH type inputs. See Destinations for more details.
  /// [inputClass] The input class.
  /// [inputDevices] Settings for the devices. See Input Devices for more details.
  /// [inputPartnerIds] A list of IDs for all Inputs which are partners of this one.
  /// [inputSecurityGroups] List of input security groups.
  /// [inputSourceType] Source type of the input.
  /// [mediaConnectFlows] A list of the MediaConnect Flows. See Media Connect Flows for more details.
  /// [name] Name of the input.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the role this input assumes during and after creation.
  /// [sources] The source URLs for a PULL-type input. See Sources for more details.
  /// [tags] A map of tags to assign to the Input. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [type] The different types of inputs that AWS Elemental MediaLive supports.
  /// [vpc] Settings for a private VPC Input. See VPC for more details.
  InputState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? attachedChannels,
    pulumi.Output<List<InputDestination>>? destinations,
    pulumi.Output<String>? inputClass,
    pulumi.Output<List<InputInputDevice>>? inputDevices,
    pulumi.Output<List<String>>? inputPartnerIds,
    pulumi.Output<List<String>>? inputSecurityGroups,
    pulumi.Output<String>? inputSourceType,
    pulumi.Output<List<InputMediaConnectFlow>>? mediaConnectFlows,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<InputSource>>? sources,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<InputVpc>? vpc,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachedChannels = pulumi.Input.asOptionalInput<List<String>>(attachedChannels),
      destinations = pulumi.Input.asOptionalInput<List<InputDestination>>(destinations),
      inputClass = pulumi.Input.asOptionalInput<String>(inputClass),
      inputDevices = pulumi.Input.asOptionalInput<List<InputInputDevice>>(inputDevices),
      inputPartnerIds = pulumi.Input.asOptionalInput<List<String>>(inputPartnerIds),
      inputSecurityGroups = pulumi.Input.asOptionalInput<List<String>>(inputSecurityGroups),
      inputSourceType = pulumi.Input.asOptionalInput<String>(inputSourceType),
      mediaConnectFlows = pulumi.Input.asOptionalInput<List<InputMediaConnectFlow>>(mediaConnectFlows),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      sources = pulumi.Input.asOptionalInput<List<InputSource>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpc = pulumi.Input.asOptionalInput<InputVpc>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachedChannels': ?attachedChannels,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<InputDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<InputDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputClass': ?inputClass,
      'inputDevices': ?pulumi.Input.mapOptionalInputValue<List<InputInputDevice>, List<Map<String, dynamic>>>(inputDevices, (value) => pulumi.Input.encodeList<InputInputDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inputPartnerIds': ?inputPartnerIds,
      'inputSecurityGroups': ?inputSecurityGroups,
      'inputSourceType': ?inputSourceType,
      'mediaConnectFlows': ?pulumi.Input.mapOptionalInputValue<List<InputMediaConnectFlow>, List<Map<String, dynamic>>>(mediaConnectFlows, (value) => pulumi.Input.encodeList<InputMediaConnectFlow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<InputSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<InputSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'vpc': ?pulumi.Input.mapOptionalInputValue<InputVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory InputState.fromMap(Map<String, dynamic> map) {
    return InputState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachedChannels: map['attachedChannels'] == null ? null : pulumi.Output.create<List<String>>((map['attachedChannels'] as List).cast<String>()),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<InputDestination>>(pulumi.Input.decodeList<InputDestination>(map['destinations'], (value) => InputDestination.fromMap((value as Map).cast<String, dynamic>()))),
      inputClass: map['inputClass'] == null ? null : pulumi.Output.create<String>(map['inputClass'] as String),
      inputDevices: map['inputDevices'] == null ? null : pulumi.Output.create<List<InputInputDevice>>(pulumi.Input.decodeList<InputInputDevice>(map['inputDevices'], (value) => InputInputDevice.fromMap((value as Map).cast<String, dynamic>()))),
      inputPartnerIds: map['inputPartnerIds'] == null ? null : pulumi.Output.create<List<String>>((map['inputPartnerIds'] as List).cast<String>()),
      inputSecurityGroups: map['inputSecurityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['inputSecurityGroups'] as List).cast<String>()),
      inputSourceType: map['inputSourceType'] == null ? null : pulumi.Output.create<String>(map['inputSourceType'] as String),
      mediaConnectFlows: map['mediaConnectFlows'] == null ? null : pulumi.Output.create<List<InputMediaConnectFlow>>(pulumi.Input.decodeList<InputMediaConnectFlow>(map['mediaConnectFlows'], (value) => InputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<InputSource>>(pulumi.Input.decodeList<InputSource>(map['sources'], (value) => InputSource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<InputVpc>(InputVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())),
    );
  }
}

