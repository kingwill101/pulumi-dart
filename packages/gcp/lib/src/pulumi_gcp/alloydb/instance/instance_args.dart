// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_client_connection_config/instance_client_connection_config.dart';
import '../instance_connection_pool_config/instance_connection_pool_config.dart';
import '../instance_machine_config/instance_machine_config.dart';
import '../instance_network_config/instance_network_config.dart';
import '../instance_observability_config/instance_observability_config.dart';
import '../instance_psc_instance_config/instance_psc_instance_config.dart';
import '../instance_query_insights_config/instance_query_insights_config.dart';
import '../instance_read_pool_config/instance_read_pool_config.dart';

/// The set of arguments for Instance.
class InstanceArgs {
  /// 'Specifies whether an instance needs to spin up. Once the instance is
  /// active, the activation policy can be updated to the `NEVER` to stop the
  /// instance. Likewise, the activation policy can be updated to `ALWAYS` to
  /// start the instance.
  /// There are restrictions around when an instance can/cannot be activated (for
  /// example, a read pool instance should be stopped before stopping primary
  /// etc.). Please refer to the API documentation for more details.
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.'
  /// Possible values are: `ACTIVATION_POLICY_UNSPECIFIED`, `ALWAYS`, `NEVER`.
  final pulumi.Input<String>? activationPolicy;

  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final pulumi.Input<String>? availabilityType;

  /// Client connection specific configurations.
  /// Structure is documented below.
  final pulumi.Input<InstanceClientConnectionConfig>? clientConnectionConfig;

  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final pulumi.Input<String> cluster;

  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  final pulumi.Input<InstanceConnectionPoolConfig>? connectionPoolConfig;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  final pulumi.Input<Map<String, String>>? databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String>? displayName;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String>? gceZone;

  /// The ID of the alloydb instance.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> instanceType;

  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  final pulumi.Input<InstanceMachineConfig>? machineConfig;

  /// Instance level network configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceNetworkConfig>? networkConfig;

  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceObservabilityConfig>? observabilityConfig;

  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePscInstanceConfig>? pscInstanceConfig;

  /// Configuration for query insights.
  /// Structure is documented below.
  final pulumi.Input<InstanceQueryInsightsConfig>? queryInsightsConfig;

  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  final pulumi.Input<InstanceReadPoolConfig>? readPoolConfig;

  InstanceArgs({
    this.activationPolicy,
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    required this.cluster,
    this.connectionPoolConfig,
    this.databaseFlags,
    this.displayName,
    this.gceZone,
    required this.instanceId,
    required this.instanceType,
    this.labels,
    this.machineConfig,
    this.networkConfig,
    this.observabilityConfig,
    this.pscInstanceConfig,
    this.queryInsightsConfig,
    this.readPoolConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activationPolicyValue = activationPolicy;
    if (activationPolicyValue != null) {
      map['activationPolicy'] = activationPolicyValue;
    }
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final availabilityTypeValue = availabilityType;
    if (availabilityTypeValue != null) {
      map['availabilityType'] = availabilityTypeValue;
    }
    final clientConnectionConfigValue = clientConnectionConfig;
    if (clientConnectionConfigValue != null) {
      map['clientConnectionConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceClientConnectionConfig, Map<String, dynamic>>(
          clientConnectionConfigValue, (value) => value.toMap());
    }
    map['cluster'] = cluster;
    final connectionPoolConfigValue = connectionPoolConfig;
    if (connectionPoolConfigValue != null) {
      map['connectionPoolConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceConnectionPoolConfig, Map<String, dynamic>>(
          connectionPoolConfigValue, (value) => value.toMap());
    }
    final databaseFlagsValue = databaseFlags;
    if (databaseFlagsValue != null) {
      map['databaseFlags'] = databaseFlagsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gceZoneValue = gceZone;
    if (gceZoneValue != null) {
      map['gceZone'] = gceZoneValue;
    }
    map['instanceId'] = instanceId;
    map['instanceType'] = instanceType;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final machineConfigValue = machineConfig;
    if (machineConfigValue != null) {
      map['machineConfig'] = pulumi.Input.mapOptionalInputValue<
          InstanceMachineConfig,
          Map<String, dynamic>>(machineConfigValue, (value) => value.toMap());
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          InstanceNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final observabilityConfigValue = observabilityConfig;
    if (observabilityConfigValue != null) {
      map['observabilityConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceObservabilityConfig, Map<String, dynamic>>(
          observabilityConfigValue, (value) => value.toMap());
    }
    final pscInstanceConfigValue = pscInstanceConfig;
    if (pscInstanceConfigValue != null) {
      map['pscInstanceConfig'] = pulumi.Input.mapOptionalInputValue<
              InstancePscInstanceConfig, Map<String, dynamic>>(
          pscInstanceConfigValue, (value) => value.toMap());
    }
    final queryInsightsConfigValue = queryInsightsConfig;
    if (queryInsightsConfigValue != null) {
      map['queryInsightsConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceQueryInsightsConfig, Map<String, dynamic>>(
          queryInsightsConfigValue, (value) => value.toMap());
    }
    final readPoolConfigValue = readPoolConfig;
    if (readPoolConfigValue != null) {
      map['readPoolConfig'] = pulumi.Input.mapOptionalInputValue<
          InstanceReadPoolConfig,
          Map<String, dynamic>>(readPoolConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      activationPolicy:
          pulumi.Input.asOptionalInput<String>(map['activationPolicy']),
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      availabilityType:
          pulumi.Input.asOptionalInput<String>(map['availabilityType']),
      clientConnectionConfig:
          pulumi.Input.asOptionalInput<InstanceClientConnectionConfig>(
              map['clientConnectionConfig']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      connectionPoolConfig:
          pulumi.Input.asOptionalInput<InstanceConnectionPoolConfig>(
              map['connectionPoolConfig']),
      databaseFlags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['databaseFlags']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gceZone: pulumi.Input.asOptionalInput<String>(map['gceZone']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineConfig: pulumi.Input.asOptionalInput<InstanceMachineConfig>(
          map['machineConfig']),
      networkConfig: pulumi.Input.asOptionalInput<InstanceNetworkConfig>(
          map['networkConfig']),
      observabilityConfig:
          pulumi.Input.asOptionalInput<InstanceObservabilityConfig>(
              map['observabilityConfig']),
      pscInstanceConfig:
          pulumi.Input.asOptionalInput<InstancePscInstanceConfig>(
              map['pscInstanceConfig']),
      queryInsightsConfig:
          pulumi.Input.asOptionalInput<InstanceQueryInsightsConfig>(
              map['queryInsightsConfig']),
      readPoolConfig: pulumi.Input.asOptionalInput<InstanceReadPoolConfig>(
          map['readPoolConfig']),
    );
  }
}
