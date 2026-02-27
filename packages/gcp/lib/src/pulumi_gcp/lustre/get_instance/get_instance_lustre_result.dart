// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_access_rules_option/get_instance_access_rules_option.dart';

/// Result data returned by getInstance.
class GetInstanceLustreResult {
  final List<GetInstanceAccessRulesOption> accessRulesOptions;
  final String capacityGib;
  final String createTime;
  final String description;
  final Map<String, String> effectiveLabels;
  final String filesystem;
  final bool gkeSupportEnabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String kmsKey;
  final Map<String, String> labels;
  final String location;
  final String mountPoint;
  final String name;
  final String network;
  final String perUnitStorageThroughput;
  final String placementPolicy;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String state;
  final String stateReason;
  final String updateTime;
  final String? zone;

  GetInstanceLustreResult({
    required this.accessRulesOptions,
    required this.capacityGib,
    required this.createTime,
    required this.description,
    required this.effectiveLabels,
    required this.filesystem,
    required this.gkeSupportEnabled,
    required this.id,
    required this.instanceId,
    required this.kmsKey,
    required this.labels,
    required this.location,
    required this.mountPoint,
    required this.name,
    required this.network,
    required this.perUnitStorageThroughput,
    required this.placementPolicy,
    this.project,
    required this.pulumiLabels,
    required this.state,
    required this.stateReason,
    required this.updateTime,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessRulesOptions'] = pulumi.Input.encodeList<
        GetInstanceAccessRulesOption,
        Map<String, dynamic>>(accessRulesOptions, (value) => value.toMap());
    map['capacityGib'] = capacityGib;
    map['createTime'] = createTime;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['filesystem'] = filesystem;
    map['gkeSupportEnabled'] = gkeSupportEnabled;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['location'] = location;
    map['mountPoint'] = mountPoint;
    map['name'] = name;
    map['network'] = network;
    map['perUnitStorageThroughput'] = perUnitStorageThroughput;
    map['placementPolicy'] = placementPolicy;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['state'] = state;
    map['stateReason'] = stateReason;
    map['updateTime'] = updateTime;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceLustreResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceLustreResult(
      accessRulesOptions: pulumi.Input.decodeList<GetInstanceAccessRulesOption>(
          map['accessRulesOptions'],
          (value) => GetInstanceAccessRulesOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      capacityGib: map['capacityGib'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      filesystem: map['filesystem'] as String,
      gkeSupportEnabled: map['gkeSupportEnabled'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      mountPoint: map['mountPoint'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      perUnitStorageThroughput: map['perUnitStorageThroughput'] as String,
      placementPolicy: map['placementPolicy'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      updateTime: map['updateTime'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
