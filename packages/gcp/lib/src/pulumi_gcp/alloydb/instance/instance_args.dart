// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<String>? activationPolicy;

  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// 'Availability type of an Instance. Defaults to REGIONAL for both primary and read instances.
  /// Note that primary and read instances can have different availability types.
  /// Primary instances can be either ZONAL or REGIONAL. Read Pool instances can also be either ZONAL or REGIONAL.
  /// Read pools of size 1 can only have zonal availability. Read pools with a node count of 2 or more
  /// can have regional availability (nodes are present in 2 or more zones in a region).
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.'
  /// Possible values are: `AVAILABILITY_TYPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final Input<String>? availabilityType;

  /// Client connection specific configurations.
  /// Structure is documented below.
  final Input<InstanceClientConnectionConfig>? clientConnectionConfig;

  /// Identifies the alloydb cluster. Must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final Input<String> cluster;

  /// Configuration for Managed Connection Pool.
  /// Structure is documented below.
  final Input<InstanceConnectionPoolConfig>? connectionPoolConfig;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary.
  final Input<Map<String, String>>? databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  final Input<String>? displayName;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final Input<String>? gceZone;

  /// The ID of the alloydb instance.
  final Input<String> instanceId;
  final Input<String> instanceType;

  /// User-defined labels for the alloydb instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Configurations for the machines that host the underlying database engine.
  /// Structure is documented below.
  final Input<InstanceMachineConfig>? machineConfig;

  /// Instance level network configuration.
  /// Structure is documented below.
  final Input<InstanceNetworkConfig>? networkConfig;

  /// Configuration for enhanced query insights.
  /// Structure is documented below.
  final Input<InstanceObservabilityConfig>? observabilityConfig;

  /// Configuration for Private Service Connect (PSC) for the instance.
  /// Structure is documented below.
  final Input<InstancePscInstanceConfig>? pscInstanceConfig;

  /// Configuration for query insights.
  /// Structure is documented below.
  final Input<InstanceQueryInsightsConfig>? queryInsightsConfig;

  /// Read pool specific config. If the instance type is READ_POOL, this configuration must be provided.
  /// Structure is documented below.
  final Input<InstanceReadPoolConfig>? readPoolConfig;

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
      map['clientConnectionConfig'] = Input.mapOptionalInputValue<
              InstanceClientConnectionConfig, Map<String, dynamic>>(
          clientConnectionConfigValue, (value) => value.toMap());
    }
    map['cluster'] = cluster;
    final connectionPoolConfigValue = connectionPoolConfig;
    if (connectionPoolConfigValue != null) {
      map['connectionPoolConfig'] = Input.mapOptionalInputValue<
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
      map['machineConfig'] = Input.mapOptionalInputValue<InstanceMachineConfig,
          Map<String, dynamic>>(machineConfigValue, (value) => value.toMap());
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<InstanceNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final observabilityConfigValue = observabilityConfig;
    if (observabilityConfigValue != null) {
      map['observabilityConfig'] = Input.mapOptionalInputValue<
              InstanceObservabilityConfig, Map<String, dynamic>>(
          observabilityConfigValue, (value) => value.toMap());
    }
    final pscInstanceConfigValue = pscInstanceConfig;
    if (pscInstanceConfigValue != null) {
      map['pscInstanceConfig'] = Input.mapOptionalInputValue<
              InstancePscInstanceConfig, Map<String, dynamic>>(
          pscInstanceConfigValue, (value) => value.toMap());
    }
    final queryInsightsConfigValue = queryInsightsConfig;
    if (queryInsightsConfigValue != null) {
      map['queryInsightsConfig'] = Input.mapOptionalInputValue<
              InstanceQueryInsightsConfig, Map<String, dynamic>>(
          queryInsightsConfigValue, (value) => value.toMap());
    }
    final readPoolConfigValue = readPoolConfig;
    if (readPoolConfigValue != null) {
      map['readPoolConfig'] = Input.mapOptionalInputValue<
          InstanceReadPoolConfig,
          Map<String, dynamic>>(readPoolConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      activationPolicy: Input.asOptionalInput<String>(map['activationPolicy']),
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      availabilityType: Input.asOptionalInput<String>(map['availabilityType']),
      clientConnectionConfig:
          Input.asOptionalInput<InstanceClientConnectionConfig>(
              map['clientConnectionConfig']),
      cluster: Input.asInput<String>(map['cluster']),
      connectionPoolConfig: Input.asOptionalInput<InstanceConnectionPoolConfig>(
          map['connectionPoolConfig']),
      databaseFlags:
          Input.asOptionalInput<Map<String, String>>(map['databaseFlags']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gceZone: Input.asOptionalInput<String>(map['gceZone']),
      instanceId: Input.asInput<String>(map['instanceId']),
      instanceType: Input.asInput<String>(map['instanceType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineConfig:
          Input.asOptionalInput<InstanceMachineConfig>(map['machineConfig']),
      networkConfig:
          Input.asOptionalInput<InstanceNetworkConfig>(map['networkConfig']),
      observabilityConfig: Input.asOptionalInput<InstanceObservabilityConfig>(
          map['observabilityConfig']),
      pscInstanceConfig: Input.asOptionalInput<InstancePscInstanceConfig>(
          map['pscInstanceConfig']),
      queryInsightsConfig: Input.asOptionalInput<InstanceQueryInsightsConfig>(
          map['queryInsightsConfig']),
      readPoolConfig:
          Input.asOptionalInput<InstanceReadPoolConfig>(map['readPoolConfig']),
    );
  }
}
