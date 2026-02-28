// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_pool_capacity_provisioning_type.dart';
import 'storage_pool_performance_provisioning_type.dart';

/// {@template pulumi_compute_alpha_storage_pool_args_doc}
/// The set of arguments for StoragePool.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_storage_pool_args_doc}
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

  /// Creates a new [StoragePoolArgs].
  /// [capacityProvisioningType] Provisioning type of the byte capacity of the pool.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels to apply to this storage pool. These can be later modified by the setLabels method.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [performanceProvisioningType] Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// [project] Optional.
  /// [provisionedIops] Provsioned IOPS of the storage pool.
  /// [provisionedThroughput] Provisioned throughput of the storage pool. Only relevant if the storage pool type is hyperdisk-balanced or hyperdisk-throughput.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sizeGb] Size, in GiB, of the storage pool.
  /// [storagePoolType] Type of the storage pool.
  /// [zone] Optional.
  StoragePoolArgs({
    StoragePoolCapacityProvisioningType? capacityProvisioningType,
    String? description,
    Map<String, String>? labels,
    String? name,
    StoragePoolPerformanceProvisioningType? performanceProvisioningType,
    String? project,
    String? provisionedIops,
    String? provisionedThroughput,
    String? requestId,
    String? sizeGb,
    String? storagePoolType,
    String? zone,
  })  : capacityProvisioningType =
            pulumi.Input.asOptionalInput<StoragePoolCapacityProvisioningType>(
                capacityProvisioningType),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        performanceProvisioningType = pulumi.Input.asOptionalInput<
                StoragePoolPerformanceProvisioningType>(
            performanceProvisioningType),
        project = pulumi.Input.asOptionalInput<String>(project),
        provisionedIops = pulumi.Input.asOptionalInput<String>(provisionedIops),
        provisionedThroughput =
            pulumi.Input.asOptionalInput<String>(provisionedThroughput),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sizeGb = pulumi.Input.asOptionalInput<String>(sizeGb),
        storagePoolType = pulumi.Input.asOptionalInput<String>(storagePoolType),
        zone = pulumi.Input.asOptionalInput<String>(zone);

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
      capacityProvisioningType: map['capacityProvisioningType'] == null
          ? null
          : StoragePoolCapacityProvisioningType.fromValue(
              map['capacityProvisioningType'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      performanceProvisioningType: map['performanceProvisioningType'] == null
          ? null
          : StoragePoolPerformanceProvisioningType.fromValue(
              map['performanceProvisioningType'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      provisionedIops: map['provisionedIops'] == null
          ? null
          : map['provisionedIops'] as String,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as String,
      storagePoolType: map['storagePoolType'] == null
          ? null
          : map['storagePoolType'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
