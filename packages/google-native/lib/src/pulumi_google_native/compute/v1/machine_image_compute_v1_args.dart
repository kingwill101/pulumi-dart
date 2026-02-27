// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_v1.dart';
import 'saved_disk_compute_v1.dart';
import 'source_disk_encryption_key_compute_v1.dart';

/// The set of arguments for MachineImage.
class MachineImageComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;

  /// Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? machineImageEncryptionKey;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// An array of Machine Image specific properties for disks attached to the source instance
  final pulumi.Input<List<SavedDiskComputeV1>>? savedDisks;

  /// [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<List<SourceDiskEncryptionKeyComputeV1>>?
      sourceDiskEncryptionKeys;

  /// The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance
  final pulumi.Input<String> sourceInstance;

  /// The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  final pulumi.Input<List<String>>? storageLocations;

  MachineImageComputeV1Args({
    this.description,
    this.guestFlush,
    this.machineImageEncryptionKey,
    this.name,
    this.project,
    this.requestId,
    this.savedDisks,
    this.sourceDiskEncryptionKeys,
    required this.sourceInstance,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
    }
    final machineImageEncryptionKeyValue = machineImageEncryptionKey;
    if (machineImageEncryptionKeyValue != null) {
      map['machineImageEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(
          machineImageEncryptionKeyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final savedDisksValue = savedDisks;
    if (savedDisksValue != null) {
      map['savedDisks'] = pulumi.Input.mapOptionalInputValue<
              List<SavedDiskComputeV1>, List<Map<String, dynamic>>>(
          savedDisksValue,
          (value) =>
              pulumi.Input.encodeList<SavedDiskComputeV1, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final sourceDiskEncryptionKeysValue = sourceDiskEncryptionKeys;
    if (sourceDiskEncryptionKeysValue != null) {
      map['sourceDiskEncryptionKeys'] = pulumi.Input.mapOptionalInputValue<
              List<SourceDiskEncryptionKeyComputeV1>,
              List<Map<String, dynamic>>>(
          sourceDiskEncryptionKeysValue,
          (value) => pulumi.Input.encodeList<SourceDiskEncryptionKeyComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['sourceInstance'] = sourceInstance;
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory MachineImageComputeV1Args.fromMap(Map<String, dynamic> map) {
    return MachineImageComputeV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      guestFlush: pulumi.Input.asOptionalInput<bool>(map['guestFlush']),
      machineImageEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(
              map['machineImageEncryptionKey']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      savedDisks: pulumi.Input.asOptionalInput<List<SavedDiskComputeV1>>(
          map['savedDisks']),
      sourceDiskEncryptionKeys:
          pulumi.Input.asOptionalInput<List<SourceDiskEncryptionKeyComputeV1>>(
              map['sourceDiskEncryptionKeys']),
      sourceInstance: pulumi.Input.asInput<String>(map['sourceInstance']),
      storageLocations:
          pulumi.Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
