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
  final pulumi.Input<String?>? arn;
  /// Channels attached to Input.
  final pulumi.Input<List<String>?>? attachedChannels;
  /// Destination settings for PUSH type inputs. See `destinations` Block for more details.
  final pulumi.Input<List<InputDestination>?>? destinations;
  /// Input class.
  final pulumi.Input<String?>? inputClass;
  /// Settings for the devices. See `inputDevices` Block for more details.
  final pulumi.Input<List<InputInputDevice>?>? inputDevices;
  /// IDs for all Inputs which are partners of this one.
  final pulumi.Input<List<String>?>? inputPartnerIds;
  /// List of input security groups.
  final pulumi.Input<List<String>?>? inputSecurityGroups;
  /// Source type of the input.
  final pulumi.Input<String?>? inputSourceType;
  /// MediaConnect Flows. See `mediaConnectFlows` Block for more details.
  final pulumi.Input<List<InputMediaConnectFlow>?>? mediaConnectFlows;
  /// Name of the input.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the role this input assumes during and after creation.
  final pulumi.Input<String?>? roleArn;
  /// Source URLs for a PULL-type input. See `sources` Block for more details.
  final pulumi.Input<List<InputSource>?>? sources;
  /// Map of tags to assign to the Input. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Type of input that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;
  /// Settings for a private VPC Input. See `vpc` Block for more details.
  final pulumi.Input<InputVpc?>? vpc;

  /// Creates a new [InputState].
  /// [arn] ARN of the Input.
  /// [attachedChannels] Channels attached to Input.
  /// [destinations] Destination settings for PUSH type inputs. See `destinations` Block for more details.
  /// [inputClass] Input class.
  /// [inputDevices] Settings for the devices. See `inputDevices` Block for more details.
  /// [inputPartnerIds] IDs for all Inputs which are partners of this one.
  /// [inputSecurityGroups] List of input security groups.
  /// [inputSourceType] Source type of the input.
  /// [mediaConnectFlows] MediaConnect Flows. See `mediaConnectFlows` Block for more details.
  /// [name] Name of the input.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the role this input assumes during and after creation.
  /// [sources] Source URLs for a PULL-type input. See `sources` Block for more details.
  /// [tags] Map of tags to assign to the Input. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [type] Type of input that AWS Elemental MediaLive supports.
  /// [vpc] Settings for a private VPC Input. See `vpc` Block for more details.
  const InputState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachedChannels: (() { final guardedValue = map['attachedChannels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputDestination>(guardedValue, (value) => InputDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputClass: (() { final guardedValue = map['inputClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputDevices: (() { final guardedValue = map['inputDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputInputDevice>(guardedValue, (value) => InputInputDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      inputPartnerIds: (() { final guardedValue = map['inputPartnerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputSecurityGroups: (() { final guardedValue = map['inputSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inputSourceType: (() { final guardedValue = map['inputSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mediaConnectFlows: (() { final guardedValue = map['mediaConnectFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputMediaConnectFlow>(guardedValue, (value) => InputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InputSource>(guardedValue, (value) => InputSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpc: (() { final guardedValue = map['vpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InputVpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
