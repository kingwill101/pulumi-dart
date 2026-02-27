// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_maintenance_policy/instance_maintenance_policy.dart';
import '../instance_memcache_parameters/instance_memcache_parameters.dart';
import '../instance_node_config/instance_node_config.dart';

/// The set of arguments for Instance.
class InstanceArgs9 {
  /// The full name of the GCE network to connect the instance to.  If not provided,
  /// 'default' will be used.
  final Input<String>? authorizedNetwork;
  final Input<bool>? deletionProtection;

  /// A user-visible name for the instance.
  final Input<String>? displayName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Maintenance policy for an instance.
  /// Structure is documented below.
  final Input<InstanceMaintenancePolicy>? maintenancePolicy;

  /// User-specified parameters for this memcache instance.
  /// Structure is documented below.
  final Input<InstanceMemcacheParameters>? memcacheParameters;

  /// The major version of Memcached software. If not provided, latest supported version will be used.
  /// Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
  /// determined by our system based on the latest supported minor version.
  /// Default value is `MEMCACHE_1_5`.
  /// Possible values are: `MEMCACHE_1_5`, `MEMCACHE_1_6_15`.
  final Input<String>? memcacheVersion;

  /// The resource name of the instance.
  final Input<String>? name;

  /// Configuration for memcache nodes.
  /// Structure is documented below.
  final Input<InstanceNodeConfig> nodeConfig;

  /// Number of nodes in the memcache instance.
  final Input<int> nodeCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the Memcache instance. If it is not provided, the provider region is used.
  final Input<String>? region;

  /// Contains the name of allocated IP address ranges associated with
  /// the private service access connection for example, "test-default"
  /// associated with IP range 10.0.0.0/29.
  final Input<List<String>>? reservedIpRangeIds;

  /// Zones where memcache nodes should be provisioned.  If not
  /// provided, all zones will be used.
  final Input<List<String>>? zones;

  InstanceArgs9({
    this.authorizedNetwork,
    this.deletionProtection,
    this.displayName,
    this.labels,
    this.maintenancePolicy,
    this.memcacheParameters,
    this.memcacheVersion,
    this.name,
    required this.nodeConfig,
    required this.nodeCount,
    this.project,
    this.region,
    this.reservedIpRangeIds,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizedNetworkValue = authorizedNetwork;
    if (authorizedNetworkValue != null) {
      map['authorizedNetwork'] = authorizedNetworkValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final maintenancePolicyValue = maintenancePolicy;
    if (maintenancePolicyValue != null) {
      map['maintenancePolicy'] = Input.mapOptionalInputValue<
              InstanceMaintenancePolicy, Map<String, dynamic>>(
          maintenancePolicyValue, (value) => value.toMap());
    }
    final memcacheParametersValue = memcacheParameters;
    if (memcacheParametersValue != null) {
      map['memcacheParameters'] = Input.mapOptionalInputValue<
              InstanceMemcacheParameters, Map<String, dynamic>>(
          memcacheParametersValue, (value) => value.toMap());
    }
    final memcacheVersionValue = memcacheVersion;
    if (memcacheVersionValue != null) {
      map['memcacheVersion'] = memcacheVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nodeConfig'] =
        Input.mapInputValue<InstanceNodeConfig, Map<String, dynamic>>(
            nodeConfig, (value) => value.toMap());
    map['nodeCount'] = nodeCount;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final reservedIpRangeIdsValue = reservedIpRangeIds;
    if (reservedIpRangeIdsValue != null) {
      map['reservedIpRangeIds'] = reservedIpRangeIdsValue;
    }
    final zonesValue = zones;
    if (zonesValue != null) {
      map['zones'] = zonesValue;
    }
    return map;
  }

  factory InstanceArgs9.fromMap(Map<String, dynamic> map) {
    return InstanceArgs9(
      authorizedNetwork:
          Input.asOptionalInput<String>(map['authorizedNetwork']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      maintenancePolicy: Input.asOptionalInput<InstanceMaintenancePolicy>(
          map['maintenancePolicy']),
      memcacheParameters: Input.asOptionalInput<InstanceMemcacheParameters>(
          map['memcacheParameters']),
      memcacheVersion: Input.asOptionalInput<String>(map['memcacheVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeConfig: Input.asInput<InstanceNodeConfig>(map['nodeConfig']),
      nodeCount: Input.asInput<int>(map['nodeCount']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      reservedIpRangeIds:
          Input.asOptionalInput<List<String>>(map['reservedIpRangeIds']),
      zones: Input.asOptionalInput<List<String>>(map['zones']),
    );
  }
}
