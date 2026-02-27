// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config.dart';
import 'network_config_baremetalsolution_v2.dart';
import 'volume_config.dart';

/// The set of arguments for ProvisioningConfig.
class ProvisioningConfigArgs {
  /// Optional. The user-defined identifier of the provisioning config.
  final pulumi.Input<String>? customId;

  /// Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  final pulumi.Input<String>? email;

  /// A service account to enable customers to access instance credentials upon handover.
  final pulumi.Input<String>? handoverServiceAccount;

  /// Instances to be created.
  final pulumi.Input<List<InstanceConfig>>? instances;

  /// Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  final pulumi.Input<String>? location;

  /// Networks to be created.
  final pulumi.Input<List<NetworkConfigBaremetalsolutionV2>>? networks;

  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  final pulumi.Input<String>? pod;
  final pulumi.Input<String>? project;

  /// Optional status messages associated with the FAILED state.
  final pulumi.Input<String>? statusMessage;

  /// A generated ticket id to track provisioning request.
  final pulumi.Input<String>? ticketId;

  /// Volumes to be created.
  final pulumi.Input<List<VolumeConfig>>? volumes;

  /// If true, VPC SC is enabled for the cluster.
  final pulumi.Input<bool>? vpcScEnabled;

  ProvisioningConfigArgs({
    this.customId,
    this.email,
    this.handoverServiceAccount,
    this.instances,
    this.location,
    this.networks,
    this.pod,
    this.project,
    this.statusMessage,
    this.ticketId,
    this.volumes,
    this.vpcScEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customIdValue = customId;
    if (customIdValue != null) {
      map['customId'] = customIdValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    final handoverServiceAccountValue = handoverServiceAccount;
    if (handoverServiceAccountValue != null) {
      map['handoverServiceAccount'] = handoverServiceAccountValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceConfig>, List<Map<String, dynamic>>>(
          instancesValue,
          (value) =>
              pulumi.Input.encodeList<InstanceConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkConfigBaremetalsolutionV2>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<NetworkConfigBaremetalsolutionV2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final podValue = pod;
    if (podValue != null) {
      map['pod'] = podValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final statusMessageValue = statusMessage;
    if (statusMessageValue != null) {
      map['statusMessage'] = statusMessageValue;
    }
    final ticketIdValue = ticketId;
    if (ticketIdValue != null) {
      map['ticketId'] = ticketIdValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = pulumi.Input.mapOptionalInputValue<List<VolumeConfig>,
              List<Map<String, dynamic>>>(
          volumesValue,
          (value) =>
              pulumi.Input.encodeList<VolumeConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final vpcScEnabledValue = vpcScEnabled;
    if (vpcScEnabledValue != null) {
      map['vpcScEnabled'] = vpcScEnabledValue;
    }
    return map;
  }

  factory ProvisioningConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProvisioningConfigArgs(
      customId: pulumi.Input.asOptionalInput<String>(map['customId']),
      email: pulumi.Input.asOptionalInput<String>(map['email']),
      handoverServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['handoverServiceAccount']),
      instances:
          pulumi.Input.asOptionalInput<List<InstanceConfig>>(map['instances']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      networks:
          pulumi.Input.asOptionalInput<List<NetworkConfigBaremetalsolutionV2>>(
              map['networks']),
      pod: pulumi.Input.asOptionalInput<String>(map['pod']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      statusMessage: pulumi.Input.asOptionalInput<String>(map['statusMessage']),
      ticketId: pulumi.Input.asOptionalInput<String>(map['ticketId']),
      volumes: pulumi.Input.asOptionalInput<List<VolumeConfig>>(map['volumes']),
      vpcScEnabled: pulumi.Input.asOptionalInput<bool>(map['vpcScEnabled']),
    );
  }
}
