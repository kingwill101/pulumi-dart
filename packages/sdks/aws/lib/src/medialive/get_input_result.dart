// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_input_destination.dart';
import 'get_input_input_device.dart';
import 'get_input_media_connect_flow.dart';
import 'get_input_source.dart';

/// Result data returned by getInput.
class GetInputResult {
  /// ARN of the Input.
  final String? arn;
  /// Channels attached to Input.
  final List<String>? attachedChannels;
  final List<GetInputDestination>? destinations;
  final String? id;
  /// The input class.
  final String? inputClass;
  /// Settings for the devices.
  final List<GetInputInputDevice>? inputDevices;
  /// A list of IDs for all Inputs which are partners of this one.
  final List<String>? inputPartnerIds;
  /// Source type of the input.
  final String? inputSourceType;
  /// A list of the MediaConnect Flows.
  final List<GetInputMediaConnectFlow>? mediaConnectFlows;
  /// Name of the input.
  final String? name;
  final String? region;
  /// The ARN of the role this input assumes during and after creation.
  final String? roleArn;
  /// List of input security groups.
  final List<String>? securityGroups;
  /// The source URLs for a PULL-type input.
  final List<GetInputSource>? sources;
  /// The state of the input.
  final String? state;
  /// A map of tags assigned to the Input.
  final Map<String, String>? tags;
  /// The type of the input.
  final String? type;

  /// Creates a new [GetInputResult].
  /// [arn] ARN of the Input.
  /// [attachedChannels] Channels attached to Input.
  /// [destinations] Optional.
  /// [id] Optional.
  /// [inputClass] The input class.
  /// [inputDevices] Settings for the devices.
  /// [inputPartnerIds] A list of IDs for all Inputs which are partners of this one.
  /// [inputSourceType] Source type of the input.
  /// [mediaConnectFlows] A list of the MediaConnect Flows.
  /// [name] Name of the input.
  /// [region] Optional.
  /// [roleArn] The ARN of the role this input assumes during and after creation.
  /// [securityGroups] List of input security groups.
  /// [sources] The source URLs for a PULL-type input.
  /// [state] The state of the input.
  /// [tags] A map of tags assigned to the Input.
  /// [type] The type of the input.
  const GetInputResult({
    this.arn,
    this.attachedChannels,
    this.destinations,
    this.id,
    this.inputClass,
    this.inputDevices,
    this.inputPartnerIds,
    this.inputSourceType,
    this.mediaConnectFlows,
    this.name,
    this.region,
    this.roleArn,
    this.securityGroups,
    this.sources,
    this.state,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachedChannels': ?attachedChannels,
      'destinations': ?(() { final guardedValue = destinations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInputDestination, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'inputClass': ?inputClass,
      'inputDevices': ?(() { final guardedValue = inputDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInputInputDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inputPartnerIds': ?inputPartnerIds,
      'inputSourceType': ?inputSourceType,
      'mediaConnectFlows': ?(() { final guardedValue = mediaConnectFlows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInputMediaConnectFlow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'securityGroups': ?securityGroups,
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInputSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetInputResult.fromMap(Map<String, dynamic> map) {
    return GetInputResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attachedChannels: (() { final guardedValue = map['attachedChannels']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInputDestination>(guardedValue, (value) => GetInputDestination.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputClass: (() { final guardedValue = map['inputClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputDevices: (() { final guardedValue = map['inputDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInputInputDevice>(guardedValue, (value) => GetInputInputDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
      inputPartnerIds: (() { final guardedValue = map['inputPartnerIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      inputSourceType: (() { final guardedValue = map['inputSourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mediaConnectFlows: (() { final guardedValue = map['mediaConnectFlows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInputMediaConnectFlow>(guardedValue, (value) => GetInputMediaConnectFlow.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInputSource>(guardedValue, (value) => GetInputSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
