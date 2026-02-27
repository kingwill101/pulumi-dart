// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StoragePool.
class StoragePoolArgs {
  /// Provisioning type of the byte capacity of the pool.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final Input<String>? capacityProvisioningType;
  final Input<bool>? deletionProtection;

  /// A description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Labels to apply to this storage pool. These can be later modified by the setLabels method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?`
  /// which means the first character must be a lowercase letter,
  /// and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
  /// Possible values are: `STANDARD`, `ADVANCED`.
  final Input<String>? performanceProvisioningType;

  /// Size, in GiB, of the storage pool. For more information about the size limits,
  /// see https://cloud.google.com/compute/docs/disks/storage-pools.
  final Input<String> poolProvisionedCapacityGb;

  /// Provisioned IOPS of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced`.
  final Input<String>? poolProvisionedIops;

  /// Provisioned throughput, in MB/s, of the storage pool.
  /// Only relevant if the storage pool type is `hyperdisk-balanced` or `hyperdisk-throughput`.
  final Input<String> poolProvisionedThroughput;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Type of the storage pool. For example, the
  /// following are valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/{project_id}/zones/{zone}/storagePoolTypes/hyperdisk-balanced`
  /// * `hyperdisk-throughput`
  final Input<String> storagePoolType;

  /// A reference to the zone where the storage pool resides.
  final Input<String>? zone;

  StoragePoolArgs({
    this.capacityProvisioningType,
    this.deletionProtection,
    this.description,
    this.labels,
    this.name,
    this.performanceProvisioningType,
    required this.poolProvisionedCapacityGb,
    this.poolProvisionedIops,
    required this.poolProvisionedThroughput,
    this.project,
    required this.storagePoolType,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProvisioningTypeValue = capacityProvisioningType;
    if (capacityProvisioningTypeValue != null) {
      map['capacityProvisioningType'] = capacityProvisioningTypeValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
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
      map['performanceProvisioningType'] = performanceProvisioningTypeValue;
    }
    map['poolProvisionedCapacityGb'] = poolProvisionedCapacityGb;
    final poolProvisionedIopsValue = poolProvisionedIops;
    if (poolProvisionedIopsValue != null) {
      map['poolProvisionedIops'] = poolProvisionedIopsValue;
    }
    map['poolProvisionedThroughput'] = poolProvisionedThroughput;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['storagePoolType'] = storagePoolType;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory StoragePoolArgs.fromMap(Map<String, dynamic> map) {
    return StoragePoolArgs(
      capacityProvisioningType:
          Input.asOptionalInput<String>(map['capacityProvisioningType']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      performanceProvisioningType:
          Input.asOptionalInput<String>(map['performanceProvisioningType']),
      poolProvisionedCapacityGb:
          Input.asInput<String>(map['poolProvisionedCapacityGb']),
      poolProvisionedIops:
          Input.asOptionalInput<String>(map['poolProvisionedIops']),
      poolProvisionedThroughput:
          Input.asInput<String>(map['poolProvisionedThroughput']),
      project: Input.asOptionalInput<String>(map['project']),
      storagePoolType: Input.asInput<String>(map['storagePoolType']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
