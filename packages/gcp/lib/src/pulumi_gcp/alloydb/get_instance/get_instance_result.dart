// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_client_connection_config/get_instance_client_connection_config.dart';
import '../get_instance_connection_pool_config/get_instance_connection_pool_config.dart';
import '../get_instance_machine_config/get_instance_machine_config.dart';
import '../get_instance_network_config/get_instance_network_config.dart';
import '../get_instance_observability_config/get_instance_observability_config.dart';
import '../get_instance_psc_instance_config/get_instance_psc_instance_config.dart';
import '../get_instance_query_insights_config/get_instance_query_insights_config.dart';
import '../get_instance_read_pool_config/get_instance_read_pool_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final String activationPolicy;
  final Map<String, String> annotations;
  final String availabilityType;
  final List<GetInstanceClientConnectionConfig> clientConnectionConfigs;
  final String cluster;
  final String clusterId;
  final List<GetInstanceConnectionPoolConfig> connectionPoolConfigs;
  final String createTime;
  final Map<String, String> databaseFlags;
  final String displayName;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String gceZone;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String instanceType;
  final String ipAddress;
  final Map<String, String> labels;
  final String? location;
  final List<GetInstanceMachineConfig> machineConfigs;
  final String name;
  final List<GetInstanceNetworkConfig> networkConfigs;
  final List<GetInstanceObservabilityConfig> observabilityConfigs;
  final List<String> outboundPublicIpAddresses;
  final String? project;
  final List<GetInstancePscInstanceConfig> pscInstanceConfigs;
  final String publicIpAddress;
  final Map<String, String> pulumiLabels;
  final List<GetInstanceQueryInsightsConfig> queryInsightsConfigs;
  final List<GetInstanceReadPoolConfig> readPoolConfigs;
  final bool reconciling;
  final String state;
  final String uid;
  final String updateTime;

  GetInstanceResult({
    required this.activationPolicy,
    required this.annotations,
    required this.availabilityType,
    required this.clientConnectionConfigs,
    required this.cluster,
    required this.clusterId,
    required this.connectionPoolConfigs,
    required this.createTime,
    required this.databaseFlags,
    required this.displayName,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.gceZone,
    required this.id,
    required this.instanceId,
    required this.instanceType,
    required this.ipAddress,
    required this.labels,
    this.location,
    required this.machineConfigs,
    required this.name,
    required this.networkConfigs,
    required this.observabilityConfigs,
    required this.outboundPublicIpAddresses,
    this.project,
    required this.pscInstanceConfigs,
    required this.publicIpAddress,
    required this.pulumiLabels,
    required this.queryInsightsConfigs,
    required this.readPoolConfigs,
    required this.reconciling,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationPolicy'] = activationPolicy;
    map['annotations'] = annotations;
    map['availabilityType'] = availabilityType;
    map['clientConnectionConfigs'] = pulumi.Input.encodeList<
            GetInstanceClientConnectionConfig, Map<String, dynamic>>(
        clientConnectionConfigs, (value) => value.toMap());
    map['cluster'] = cluster;
    map['clusterId'] = clusterId;
    map['connectionPoolConfigs'] = pulumi.Input.encodeList<
        GetInstanceConnectionPoolConfig,
        Map<String, dynamic>>(connectionPoolConfigs, (value) => value.toMap());
    map['createTime'] = createTime;
    map['databaseFlags'] = databaseFlags;
    map['displayName'] = displayName;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['gceZone'] = gceZone;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['instanceType'] = instanceType;
    map['ipAddress'] = ipAddress;
    map['labels'] = labels;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['machineConfigs'] =
        pulumi.Input.encodeList<GetInstanceMachineConfig, Map<String, dynamic>>(
            machineConfigs, (value) => value.toMap());
    map['name'] = name;
    map['networkConfigs'] =
        pulumi.Input.encodeList<GetInstanceNetworkConfig, Map<String, dynamic>>(
            networkConfigs, (value) => value.toMap());
    map['observabilityConfigs'] = pulumi.Input.encodeList<
        GetInstanceObservabilityConfig,
        Map<String, dynamic>>(observabilityConfigs, (value) => value.toMap());
    map['outboundPublicIpAddresses'] = outboundPublicIpAddresses;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pscInstanceConfigs'] = pulumi.Input.encodeList<
        GetInstancePscInstanceConfig,
        Map<String, dynamic>>(pscInstanceConfigs, (value) => value.toMap());
    map['publicIpAddress'] = publicIpAddress;
    map['pulumiLabels'] = pulumiLabels;
    map['queryInsightsConfigs'] = pulumi.Input.encodeList<
        GetInstanceQueryInsightsConfig,
        Map<String, dynamic>>(queryInsightsConfigs, (value) => value.toMap());
    map['readPoolConfigs'] = pulumi.Input.encodeList<GetInstanceReadPoolConfig,
        Map<String, dynamic>>(readPoolConfigs, (value) => value.toMap());
    map['reconciling'] = reconciling;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      activationPolicy: map['activationPolicy'] as String,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      availabilityType: map['availabilityType'] as String,
      clientConnectionConfigs:
          pulumi.Input.decodeList<GetInstanceClientConnectionConfig>(
              map['clientConnectionConfigs'],
              (value) => GetInstanceClientConnectionConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cluster: map['cluster'] as String,
      clusterId: map['clusterId'] as String,
      connectionPoolConfigs:
          pulumi.Input.decodeList<GetInstanceConnectionPoolConfig>(
              map['connectionPoolConfigs'],
              (value) => GetInstanceConnectionPoolConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      databaseFlags: (map['databaseFlags'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gceZone: map['gceZone'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      ipAddress: map['ipAddress'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      machineConfigs: pulumi.Input.decodeList<GetInstanceMachineConfig>(
          map['machineConfigs'],
          (value) => GetInstanceMachineConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfigs: pulumi.Input.decodeList<GetInstanceNetworkConfig>(
          map['networkConfigs'],
          (value) => GetInstanceNetworkConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      observabilityConfigs:
          pulumi.Input.decodeList<GetInstanceObservabilityConfig>(
              map['observabilityConfigs'],
              (value) => GetInstanceObservabilityConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      outboundPublicIpAddresses:
          (map['outboundPublicIpAddresses'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      pscInstanceConfigs: pulumi.Input.decodeList<GetInstancePscInstanceConfig>(
          map['pscInstanceConfigs'],
          (value) => GetInstancePscInstanceConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      publicIpAddress: map['publicIpAddress'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      queryInsightsConfigs:
          pulumi.Input.decodeList<GetInstanceQueryInsightsConfig>(
              map['queryInsightsConfigs'],
              (value) => GetInstanceQueryInsightsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      readPoolConfigs: pulumi.Input.decodeList<GetInstanceReadPoolConfig>(
          map['readPoolConfigs'],
          (value) => GetInstanceReadPoolConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
