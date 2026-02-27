// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_v1.dart';
import 'snapshot_snapshot_type_compute_v1.dart';

/// The set of arguments for Snapshot.
class SnapshotComputeV1Args {
  /// Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;

  /// An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? snapshotEncryptionKey;

  /// Indicates the type of the snapshot.
  final pulumi.Input<SnapshotSnapshotTypeComputeV1>? snapshotType;

  /// The source disk used to create this snapshot.
  final pulumi.Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeV1>? sourceDiskEncryptionKey;

  /// The source disk whose recovery checkpoint will be used to create this snapshot.
  final pulumi.Input<String>? sourceDiskForRecoveryCheckpoint;

  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  SnapshotComputeV1Args({
    this.chainName,
    this.description,
    this.labels,
    this.locationHint,
    this.name,
    this.project,
    this.requestId,
    this.snapshotEncryptionKey,
    this.snapshotType,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceDiskForRecoveryCheckpoint,
    this.storageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chainNameValue = chainName;
    if (chainNameValue != null) {
      map['chainName'] = chainNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
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
    final snapshotEncryptionKeyValue = snapshotEncryptionKey;
    if (snapshotEncryptionKeyValue != null) {
      map['snapshotEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(
          snapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = pulumi.Input.mapOptionalInputValue<
          SnapshotSnapshotTypeComputeV1,
          String>(snapshotTypeValue, (value) => value.value);
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = pulumi.Input.mapOptionalInputValue<
              CustomerEncryptionKeyComputeV1, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceDiskForRecoveryCheckpointValue =
        sourceDiskForRecoveryCheckpoint;
    if (sourceDiskForRecoveryCheckpointValue != null) {
      map['sourceDiskForRecoveryCheckpoint'] =
          sourceDiskForRecoveryCheckpointValue;
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory SnapshotComputeV1Args.fromMap(Map<String, dynamic> map) {
    return SnapshotComputeV1Args(
      chainName: pulumi.Input.asOptionalInput<String>(map['chainName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      locationHint: pulumi.Input.asOptionalInput<String>(map['locationHint']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      snapshotEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(
              map['snapshotEncryptionKey']),
      snapshotType: pulumi.Input.asOptionalInput<SnapshotSnapshotTypeComputeV1>(
          map['snapshotType']),
      sourceDisk: pulumi.Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey:
          pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeV1>(
              map['sourceDiskEncryptionKey']),
      sourceDiskForRecoveryCheckpoint: pulumi.Input.asOptionalInput<String>(
          map['sourceDiskForRecoveryCheckpoint']),
      storageLocations:
          pulumi.Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
