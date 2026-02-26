// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../input_destination/input_destination.dart';
import '../input_input_device/input_input_device.dart';
import '../input_media_connect_flow/input_media_connect_flow.dart';
import '../input_source/input_source.dart';
import '../input_vpc/input_vpc.dart';

/// The set of arguments for Input.
class InputArgsType {
  /// Destination settings for PUSH type inputs. See Destinations for more details.
  final Input<List<InputDestination>>? destinations;

  /// Settings for the devices. See Input Devices for more details.
  final Input<List<InputInputDevice>>? inputDevices;

  /// List of input security groups.
  final Input<List<String>>? inputSecurityGroups;

  /// A list of the MediaConnect Flows. See Media Connect Flows for more details.
  final Input<List<InputMediaConnectFlow>>? mediaConnectFlows;

  /// Name of the input.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the role this input assumes during and after creation.
  final Input<String>? roleArn;

  /// The source URLs for a PULL-type input. See Sources for more details.
  final Input<List<InputSource>>? sources;

  /// A map of tags to assign to the Input. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The different types of inputs that AWS Elemental MediaLive supports.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  /// Settings for a private VPC Input. See VPC for more details.
  final Input<InputVpc>? vpc;

  InputArgsType({
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
    final map = <String, dynamic>{};
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = Input.mapOptionalInputValue<List<InputDestination>,
              List<Map<String, dynamic>>>(
          destinationsValue,
          (value) => Input.encodeList<InputDestination, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final inputDevicesValue = inputDevices;
    if (inputDevicesValue != null) {
      map['inputDevices'] = Input.mapOptionalInputValue<List<InputInputDevice>,
              List<Map<String, dynamic>>>(
          inputDevicesValue,
          (value) => Input.encodeList<InputInputDevice, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final inputSecurityGroupsValue = inputSecurityGroups;
    if (inputSecurityGroupsValue != null) {
      map['inputSecurityGroups'] = inputSecurityGroupsValue;
    }
    final mediaConnectFlowsValue = mediaConnectFlows;
    if (mediaConnectFlowsValue != null) {
      map['mediaConnectFlows'] = Input.mapOptionalInputValue<
              List<InputMediaConnectFlow>, List<Map<String, dynamic>>>(
          mediaConnectFlowsValue,
          (value) =>
              Input.encodeList<InputMediaConnectFlow, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = Input.mapOptionalInputValue<List<InputSource>,
              List<Map<String, dynamic>>>(
          sourcesValue,
          (value) => Input.encodeList<InputSource, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final vpcValue = vpc;
    if (vpcValue != null) {
      map['vpc'] = Input.mapOptionalInputValue<InputVpc, Map<String, dynamic>>(
          vpcValue, (value) => value.toMap());
    }
    return map;
  }

  factory InputArgsType.fromMap(Map<String, dynamic> map) {
    return InputArgsType(
      destinations:
          Input.asOptionalInput<List<InputDestination>>(map['destinations']),
      inputDevices:
          Input.asOptionalInput<List<InputInputDevice>>(map['inputDevices']),
      inputSecurityGroups:
          Input.asOptionalInput<List<String>>(map['inputSecurityGroups']),
      mediaConnectFlows: Input.asOptionalInput<List<InputMediaConnectFlow>>(
          map['mediaConnectFlows']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asOptionalInput<String>(map['roleArn']),
      sources: Input.asOptionalInput<List<InputSource>>(map['sources']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      vpc: Input.asOptionalInput<InputVpc>(map['vpc']),
    );
  }
}
