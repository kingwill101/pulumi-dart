// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'client_connection_config3.dart';
import 'instance_availability_type3.dart';
import 'instance_instance_type3.dart';
import 'machine_config3.dart';
import 'query_insights_instance_config3.dart';
import 'read_pool_config3.dart';
import 'update_policy2.dart';

/// The set of arguments for Instance.
class InstanceArgs3 {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  final Input<Map<String, String>>? annotations;

  /// Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read pools, availability_type is always UNSPECIFIED. Instances in the read pools are evenly distributed across available zones within the region (i.e. read pools with more than one node will have a node in at least two zones).
  final Input<InstanceAvailabilityType3>? availabilityType;

  /// Optional. Client connection specific configurations
  final Input<ClientConnectionConfig3>? clientConnectionConfig;
  final Input<String> clusterId;

  /// Database flags. Set at instance level. * They are copied from primary instance on read instance creation. * Read instances can set new or override existing flags that are relevant for reads, e.g. for enabling columnar cache on a read instance. Flags set on read instance may or may not be present on primary. This is a list of "key": "value" pairs. "key": The name of the flag. These flags are passed at instance setup time, so include both server options and system variables for Postgres. Flags are specified with underscores, not hyphens. "value": The value of the flag. Booleans are set to **on** for true and **off** for false. This field must be omitted if the flag doesn't take a value.
  final Input<Map<String, String>>? databaseFlags;

  /// User-settable and human-readable display name for the Instance.
  final Input<String>? displayName;

  /// For Resource freshness validation (https://google.aip.dev/154)
  final Input<String>? etag;

  /// The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute/docs/regions-zones This can ONLY be specified for ZONAL instances. If present for a REGIONAL instance, an error will be thrown. If this is absent for a ZONAL instance, instance is created in a random zone with available capacity.
  final Input<String>? gceZone;

  /// Required. ID of the requesting object.
  final Input<String> instanceId;

  /// The type of the instance. Specified at creation time.
  final Input<InstanceInstanceType3> instanceType;

  /// Labels as key value pairs
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Configurations for the machines that host the underlying database engine.
  final Input<MachineConfig3>? machineConfig;
  final Input<String>? project;

  /// Configuration for query insights.
  final Input<QueryInsightsInstanceConfig3>? queryInsightsConfig;

  /// Read pool instance configuration. This is required if the value of instanceType is READ_POOL.
  final Input<ReadPoolConfig3>? readPoolConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Update policy that will be applied during instance update. This field is not persisted when you update the instance. To use a non-default update policy, you must specify explicitly specify the value in each update request.
  final Input<UpdatePolicy2>? updatePolicy;

  InstanceArgs3({
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
    this.updatePolicy,
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
          Input.mapOptionalInputValue<InstanceAvailabilityType3, String>(
              availabilityTypeValue, (value) => value.value);
    }
    final clientConnectionConfigValue = clientConnectionConfig;
    if (clientConnectionConfigValue != null) {
      map['clientConnectionConfig'] = Input.mapOptionalInputValue<
              ClientConnectionConfig3, Map<String, dynamic>>(
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
    map['instanceType'] = Input.mapInputValue<InstanceInstanceType3, String>(
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
      map['machineConfig'] =
          Input.mapOptionalInputValue<MachineConfig3, Map<String, dynamic>>(
              machineConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryInsightsConfigValue = queryInsightsConfig;
    if (queryInsightsConfigValue != null) {
      map['queryInsightsConfig'] = Input.mapOptionalInputValue<
              QueryInsightsInstanceConfig3, Map<String, dynamic>>(
          queryInsightsConfigValue, (value) => value.toMap());
    }
    final readPoolConfigValue = readPoolConfig;
    if (readPoolConfigValue != null) {
      map['readPoolConfig'] =
          Input.mapOptionalInputValue<ReadPoolConfig3, Map<String, dynamic>>(
              readPoolConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final updatePolicyValue = updatePolicy;
    if (updatePolicyValue != null) {
      map['updatePolicy'] =
          Input.mapOptionalInputValue<UpdatePolicy2, Map<String, dynamic>>(
              updatePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceArgs3(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      availabilityType: Input.asOptionalInput<InstanceAvailabilityType3>(
          map['availabilityType']),
      clientConnectionConfig: Input.asOptionalInput<ClientConnectionConfig3>(
          map['clientConnectionConfig']),
      clusterId: Input.asInput<String>(map['clusterId']),
      databaseFlags:
          Input.asOptionalInput<Map<String, String>>(map['databaseFlags']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      gceZone: Input.asOptionalInput<String>(map['gceZone']),
      instanceId: Input.asInput<String>(map['instanceId']),
      instanceType: Input.asInput<InstanceInstanceType3>(map['instanceType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      machineConfig:
          Input.asOptionalInput<MachineConfig3>(map['machineConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      queryInsightsConfig: Input.asOptionalInput<QueryInsightsInstanceConfig3>(
          map['queryInsightsConfig']),
      readPoolConfig:
          Input.asOptionalInput<ReadPoolConfig3>(map['readPoolConfig']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      updatePolicy: Input.asOptionalInput<UpdatePolicy2>(map['updatePolicy']),
    );
  }
}
