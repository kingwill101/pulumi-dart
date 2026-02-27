// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_connection_config.dart';
import 'instance_availability_type.dart';
import 'instance_instance_type.dart';
import 'machine_config.dart';
import 'query_insights_instance_config.dart';
import 'read_pool_config.dart';

/// The set of arguments for Instance.
class InstanceArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final pulumi.Input<Map<String, String>>? annotations;

  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final pulumi.Input<InstanceAvailabilityType>? availabilityType;

  /// Optional. Client connection specific configurations
  final pulumi.Input<ClientConnectionConfig>? clientConnectionConfig;
  final pulumi.Input<String> clusterId;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final pulumi.Input<Map<String, String>>? databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  final pulumi.Input<String>? displayName;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final pulumi.Input<String>? etag;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final pulumi.Input<String>? gceZone;

  /// Required. ID of the requesting object.
  final pulumi.Input<String> instanceId;

  /// The type of the instance. Specified at creation time.
  final pulumi.Input<InstanceInstanceType> instanceType;

  /// Labels as key value pairs
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Configurations for the machines that host the underlying database engine.
  final pulumi.Input<MachineConfig>? machineConfig;
  final pulumi.Input<String>? project;

  /// Configuration for query insights.
  final pulumi.Input<QueryInsightsInstanceConfig>? queryInsightsConfig;

  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final pulumi.Input<ReadPoolConfig>? readPoolConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  InstanceArgs({
    this.annotations,
    this.availabilityType,
    this.clientConnectionConfig,
    required this.clusterId,
    this.databaseFlags,
    this.displayName,
    this.etag,
    this.gceZone,
    required this.instanceId,
    required this.instanceType,
    this.labels,
    this.location,
    this.machineConfig,
    this.project,
    this.queryInsightsConfig,
    this.readPoolConfig,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final availabilityTypeValue = availabilityType;
    if (availabilityTypeValue != null) {
      map['availabilityType'] =
          pulumi.Input.mapOptionalInputValue<InstanceAvailabilityType, String>(
              availabilityTypeValue, (value) => value.value);
    }
    final clientConnectionConfigValue = clientConnectionConfig;
    if (clientConnectionConfigValue != null) {
      map['clientConnectionConfig'] = pulumi.Input.mapOptionalInputValue<
              ClientConnectionConfig, Map<String, dynamic>>(
          clientConnectionConfigValue, (value) => value.toMap());
    }
    map['clusterId'] = clusterId;
    final databaseFlagsValue = databaseFlags;
    if (databaseFlagsValue != null) {
      map['databaseFlags'] = databaseFlagsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final gceZoneValue = gceZone;
    if (gceZoneValue != null) {
      map['gceZone'] = gceZoneValue;
    }
    map['instanceId'] = instanceId;
    map['instanceType'] =
        pulumi.Input.mapInputValue<InstanceInstanceType, String>(
            instanceType, (value) => value.value);
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final machineConfigValue = machineConfig;
    if (machineConfigValue != null) {
      map['machineConfig'] = pulumi.Input.mapOptionalInputValue<MachineConfig,
          Map<String, dynamic>>(machineConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryInsightsConfigValue = queryInsightsConfig;
    if (queryInsightsConfigValue != null) {
      map['queryInsightsConfig'] = pulumi.Input.mapOptionalInputValue<
              QueryInsightsInstanceConfig, Map<String, dynamic>>(
          queryInsightsConfigValue, (value) => value.toMap());
    }
    final readPoolConfigValue = readPoolConfig;
    if (readPoolConfigValue != null) {
      map['readPoolConfig'] = pulumi.Input.mapOptionalInputValue<ReadPoolConfig,
          Map<String, dynamic>>(readPoolConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      availabilityType: pulumi.Input.asOptionalInput<InstanceAvailabilityType>(
          map['availabilityType']),
      clientConnectionConfig:
          pulumi.Input.asOptionalInput<ClientConnectionConfig>(
              map['clientConnectionConfig']),
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      databaseFlags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['databaseFlags']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      gceZone: pulumi.Input.asOptionalInput<String>(map['gceZone']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      instanceType:
          pulumi.Input.asInput<InstanceInstanceType>(map['instanceType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      machineConfig:
          pulumi.Input.asOptionalInput<MachineConfig>(map['machineConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queryInsightsConfig:
          pulumi.Input.asOptionalInput<QueryInsightsInstanceConfig>(
              map['queryInsightsConfig']),
      readPoolConfig:
          pulumi.Input.asOptionalInput<ReadPoolConfig>(map['readPoolConfig']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
