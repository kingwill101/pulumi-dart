// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_input_destination.dart';
import 'get_input_input_device.dart';
import 'get_input_media_connect_flow.dart';
import 'get_input_source.dart';

/// Result data returned by getInput.
class GetInputResult {
  /// ARN of the Input.
  final String arn;

  /// Channels attached to Input.
  final List<String> attachedChannels;
  final List<GetInputDestination> destinations;
  final String id;

  /// The input class.
  final String inputClass;

  /// Settings for the devices.
  final List<GetInputInputDevice> inputDevices;

  /// A list of IDs for all Inputs which are partners of this one.
  final List<String> inputPartnerIds;

  /// Source type of the input.
  final String inputSourceType;

  /// A list of the MediaConnect Flows.
  final List<GetInputMediaConnectFlow> mediaConnectFlows;

  /// Name of the input.
  final String name;
  final String region;

  /// The ARN of the role this input assumes during and after creation.
  final String roleArn;

  /// List of input security groups.
  final List<String> securityGroups;

  /// The source URLs for a PULL-type input.
  final List<GetInputSource> sources;

  /// The state of the input.
  final String state;

  /// A map of tags assigned to the Input.
  final Map<String, String> tags;

  /// The type of the input.
  final String type;

  /// Creates a new [GetInputResult].
  /// [arn] ARN of the Input.
  /// [attachedChannels] Channels attached to Input.
  /// [destinations] Required.
  /// [id] Required.
  /// [inputClass] The input class.
  /// [inputDevices] Settings for the devices.
  /// [inputPartnerIds] A list of IDs for all Inputs which are partners of this one.
  /// [inputSourceType] Source type of the input.
  /// [mediaConnectFlows] A list of the MediaConnect Flows.
  /// [name] Name of the input.
  /// [region] Required.
  /// [roleArn] The ARN of the role this input assumes during and after creation.
  /// [securityGroups] List of input security groups.
  /// [sources] The source URLs for a PULL-type input.
  /// [state] The state of the input.
  /// [tags] A map of tags assigned to the Input.
  /// [type] The type of the input.
  GetInputResult({
    required this.arn,
    required this.attachedChannels,
    required this.destinations,
    required this.id,
    required this.inputClass,
    required this.inputDevices,
    required this.inputPartnerIds,
    required this.inputSourceType,
    required this.mediaConnectFlows,
    required this.name,
    required this.region,
    required this.roleArn,
    required this.securityGroups,
    required this.sources,
    required this.state,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'attachedChannels': attachedChannels,
      'destinations':
          pulumi.Input.encodeList<GetInputDestination, Map<String, dynamic>>(
            destinations,
            (value) => value.toMap(),
          ),
      'id': id,
      'inputClass': inputClass,
      'inputDevices':
          pulumi.Input.encodeList<GetInputInputDevice, Map<String, dynamic>>(
            inputDevices,
            (value) => value.toMap(),
          ),
      'inputPartnerIds': inputPartnerIds,
      'inputSourceType': inputSourceType,
      'mediaConnectFlows':
          pulumi.Input.encodeList<
            GetInputMediaConnectFlow,
            Map<String, dynamic>
          >(mediaConnectFlows, (value) => value.toMap()),
      'name': name,
      'region': region,
      'roleArn': roleArn,
      'securityGroups': securityGroups,
      'sources': pulumi.Input.encodeList<GetInputSource, Map<String, dynamic>>(
        sources,
        (value) => value.toMap(),
      ),
      'state': state,
      'tags': tags,
      'type': type,
    };
  }

  factory GetInputResult.fromMap(Map<String, dynamic> map) {
    return GetInputResult(
      arn: map['arn'] as String,
      attachedChannels: (map['attachedChannels'] as List).cast<String>(),
      destinations: pulumi.Input.decodeList<GetInputDestination>(
        map['destinations']!,
        (value) =>
            GetInputDestination.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      inputClass: map['inputClass'] as String,
      inputDevices: pulumi.Input.decodeList<GetInputInputDevice>(
        map['inputDevices']!,
        (value) =>
            GetInputInputDevice.fromMap((value as Map).cast<String, dynamic>()),
      ),
      inputPartnerIds: (map['inputPartnerIds'] as List).cast<String>(),
      inputSourceType: map['inputSourceType'] as String,
      mediaConnectFlows: pulumi.Input.decodeList<GetInputMediaConnectFlow>(
        map['mediaConnectFlows']!,
        (value) => GetInputMediaConnectFlow.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      sources: pulumi.Input.decodeList<GetInputSource>(
        map['sources']!,
        (value) =>
            GetInputSource.fromMap((value as Map).cast<String, dynamic>()),
      ),
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
