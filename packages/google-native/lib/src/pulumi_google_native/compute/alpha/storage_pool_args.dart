// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_capacity_provisioning_type.dart';
import 'storage_pool_performance_provisioning_type.dart';

/// The set of arguments for StoragePool.
class StoragePoolArgs {
  /// Provisioning type of the byte capacity of the pool.
  final pulumi.Input<StoragePoolCapacityProvisioningType>?
      capacityProvisioningType;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  final pulumi.Input<StoragePoolPerformanceProvisioningType>?
      performanceProvisioningType;
  final pulumi.Input<String>? project;

  /// Provsioned IOPS of the storage pool.
  final pulumi.Input<String>? provisionedIops;

  /// Provisioned throughput of the storage pool. Only relevant if the storage pool type is hyperdisk-balanced or hyperdisk-throughput.
  final pulumi.Input<String>? provisionedThroughput;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Size, in GiB, of the storage pool.
  final pulumi.Input<String>? sizeGb;

  /// Type of the storage pool.
  final pulumi.Input<String>? storagePoolType;
  final pulumi.Input<String>? zone;

  StoragePoolArgs({
    this.capacityProvisioningType,
    this.description,
    this.labels,
    this.name,
    this.performanceProvisioningType,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.requestId,
    this.sizeGb,
    this.storagePoolType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProvisioningTypeValue = capacityProvisioningType;
    if (capacityProvisioningTypeValue != null) {
      map['capacityProvisioningType'] = pulumi.Input.mapOptionalInputValue<
          StoragePoolCapacityProvisioningType,
          String>(capacityProvisioningTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final performanceProvisioningTypeValue = performanceProvisioningType;
    if (performanceProvisioningTypeValue != null) {
      map['performanceProvisioningType'] = pulumi.Input.mapOptionalInputValue<
          StoragePoolPerformanceProvisioningType,
          String>(performanceProvisioningTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final provisionedIopsValue = provisionedIops;
    if (provisionedIopsValue != null) {
      map['provisionedIops'] = provisionedIopsValue;
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final storagePoolTypeValue = storagePoolType;
    if (storagePoolTypeValue != null) {
      map['storagePoolType'] = storagePoolTypeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      capacityProvisioningType:
          pulumi.Input.asOptionalInput<StoragePoolCapacityProvisioningType>(
              map['capacityProvisioningType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      performanceProvisioningType:
          pulumi.Input.asOptionalInput<StoragePoolPerformanceProvisioningType>(
              map['performanceProvisioningType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      provisionedIops:
          pulumi.Input.asOptionalInput<String>(map['provisionedIops']),
      provisionedThroughput:
          pulumi.Input.asOptionalInput<String>(map['provisionedThroughput']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sizeGb: pulumi.Input.asOptionalInput<String>(map['sizeGb']),
      storagePoolType:
          pulumi.Input.asOptionalInput<String>(map['storagePoolType']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
