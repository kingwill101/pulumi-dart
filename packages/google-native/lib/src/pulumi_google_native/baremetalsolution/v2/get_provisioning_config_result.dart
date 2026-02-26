// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_config_response.dart';
import 'network_config_response5.dart';
import 'volume_config_response.dart';

/// Result data returned by getProvisioningConfig.
class GetProvisioningConfigResult {
  /// URI to Cloud Console UI view of this provisioning config.
  final String cloudConsoleUri;

  /// Optional. The user-defined identifier of the provisioning config.
  final String customId;

  /// Email provided to send a confirmation with provisioning config to. Deprecated in favour of email field in request messages.
  final String email;

  /// A service account to enable customers to access instance credentials upon handover.
  final String handoverServiceAccount;

  /// Instances to be created.
  final List<InstanceConfigResponse> instances;

  /// Optional. Location name of this ProvisioningConfig. It is optional only for Intake UI transition period.
  final String location;

  /// The system-generated name of the provisioning config. This follows the UUID format.
  final String name;

  /// Networks to be created.
  final List<NetworkConfigResponse5> networks;

  /// Optional. Pod name. Pod is an independent part of infrastructure. Instance can be connected to the assets (networks, volumes, nfsshares) allocated in the same pod only.
  final String pod;

  /// State of ProvisioningConfig.
  final String state;

  /// Optional status messages associated with the FAILED state.
  final String statusMessage;

  /// A generated ticket id to track provisioning request.
  final String ticketId;

  /// Last update timestamp.
  final String updateTime;

  /// Volumes to be created.
  final List<VolumeConfigResponse> volumes;

  /// If true, VPC SC is enabled for the cluster.
  final bool vpcScEnabled;

  GetProvisioningConfigResult({
    required this.cloudConsoleUri,
    required this.customId,
    required this.email,
    required this.handoverServiceAccount,
    required this.instances,
    required this.location,
    required this.name,
    required this.networks,
    required this.pod,
    required this.state,
    required this.statusMessage,
    required this.ticketId,
    required this.updateTime,
    required this.volumes,
    required this.vpcScEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudConsoleUri'] = cloudConsoleUri;
    map['customId'] = customId;
    map['email'] = email;
    map['handoverServiceAccount'] = handoverServiceAccount;
    map['instances'] =
        Input.encodeList<InstanceConfigResponse, Map<String, dynamic>>(
            instances, (value) => value.toMap());
    map['location'] = location;
    map['name'] = name;
    map['networks'] =
        Input.encodeList<NetworkConfigResponse5, Map<String, dynamic>>(
            networks, (value) => value.toMap());
    map['pod'] = pod;
    map['state'] = state;
    map['statusMessage'] = statusMessage;
    map['ticketId'] = ticketId;
    map['updateTime'] = updateTime;
    map['volumes'] =
        Input.encodeList<VolumeConfigResponse, Map<String, dynamic>>(
            volumes, (value) => value.toMap());
    map['vpcScEnabled'] = vpcScEnabled;
    return map;
  }

  factory GetProvisioningConfigResult.fromMap(Map<String, dynamic> map) {
    return GetProvisioningConfigResult(
      cloudConsoleUri: map['cloudConsoleUri'] as String,
      customId: map['customId'] as String,
      email: map['email'] as String,
      handoverServiceAccount: map['handoverServiceAccount'] as String,
      instances: Input.decodeList<InstanceConfigResponse>(
          map['instances'],
          (value) => InstanceConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      networks: Input.decodeList<NetworkConfigResponse5>(
          map['networks'],
          (value) => NetworkConfigResponse5.fromMap(
              (value as Map).cast<String, dynamic>())),
      pod: map['pod'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      ticketId: map['ticketId'] as String,
      updateTime: map['updateTime'] as String,
      volumes: Input.decodeList<VolumeConfigResponse>(
          map['volumes'],
          (value) => VolumeConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpcScEnabled: map['vpcScEnabled'] as bool,
    );
  }
}
