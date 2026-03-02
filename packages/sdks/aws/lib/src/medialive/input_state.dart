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
    this.arn,
    this.attachedChannels,
    this.destinations,
    this.inputClass,
    this.inputDevices,
    this.inputPartnerIds,
    this.inputSecurityGroups,
    this.inputSourceType,
    this.mediaConnectFlows,
    this.name,
    this.region,
    this.roleArn,
    this.sources,
    this.tags,
    this.tagsAll,
    this.type,
    this.vpc,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attachedChannels: map['attachedChannels'] == null ? null : ((map['attachedChannels'] as List).cast<String>()).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<InputDestination>(map['destinations'], (value) => InputDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputClass: map['inputClass'] == null ? null : (map['inputClass'] as String).input(),
      inputDevices: map['inputDevices'] == null ? null : (pulumi.Input.decodeList<InputInputDevice>(map['inputDevices'], (value) => InputInputDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      inputPartnerIds: map['inputPartnerIds'] == null ? null : ((map['inputPartnerIds'] as List).cast<String>()).input(),
      inputSecurityGroups: map['inputSecurityGroups'] == null ? null : ((map['inputSecurityGroups'] as List).cast<String>()).input(),
      inputSourceType: map['inputSourceType'] == null ? null : (map['inputSourceType'] as String).input(),
      mediaConnectFlows: map['mediaConnectFlows'] == null ? null : (pulumi.Input.decodeList<InputMediaConnectFlow>(map['mediaConnectFlows'], (value) => InputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<InputSource>(map['sources'], (value) => InputSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpc: map['vpc'] == null ? null : (InputVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

