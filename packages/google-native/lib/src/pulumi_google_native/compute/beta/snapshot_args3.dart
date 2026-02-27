// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'customer_encryption_key2.dart';
import 'snapshot_snapshot_type2.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs3 {
  /// Creates the new snapshot in the snapshot chain labeled with the specified name. The chain name must be 1-63 characters long and comply with RFC1035. This is an uncommon option only for advanced service owners who needs to create separate snapshot chains, for example, for chargeback tracking. When you describe your snapshot resource, this field is visible only if it has a non-empty value.
  final Input<String>? chainName;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Whether this snapshot is created from a confidential compute mode disk. [Output Only]: This field is not set by user, but from source disk.
  final Input<bool>? enableConfidentialCompute;

  /// [Input Only] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final Input<bool>? guestFlush;

  /// Labels to apply to this snapshot. These can be later modified by the setLabels method. Label values may be empty.
  final Input<Map<String, String>>? labels;

  /// An opaque location hint used to place the snapshot close to other resources. This field is for use by internal tools that use the public API.
  final Input<String>? locationHint;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Encrypts the snapshot using a customer-supplied encryption key. After you encrypt a snapshot using a customer-supplied key, you must provide the same key if you use the snapshot later. For example, you must provide the encryption key when you create a disk from the encrypted snapshot in a future request. Customer-supplied encryption keys do not protect access to metadata of the snapshot. If you do not provide an encryption key when creating the snapshot, then the snapshot will be encrypted using an automatically generated key and you do not need to provide a key to use the snapshot later.
  final Input<CustomerEncryptionKey2>? snapshotEncryptionKey;

  /// Indicates the type of the snapshot.
  final Input<SnapshotSnapshotType2>? snapshotType;

  /// The source disk used to create this snapshot.
  final Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey2>? sourceDiskEncryptionKey;

  /// The source disk whose recovery checkpoint will be used to create this snapshot.
  final Input<String>? sourceDiskForRecoveryCheckpoint;

  /// The source instant snapshot used to create this snapshot. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  final Input<String>? sourceInstantSnapshot;

  /// Customer provided encryption key when creating Snapshot from Instant Snapshot.
  final Input<CustomerEncryptionKey2>? sourceInstantSnapshotEncryptionKey;

  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final Input<List<String>>? storageLocations;

  SnapshotArgs3({
    this.chainName,
    this.description,
    this.enableConfidentialCompute,
    this.guestFlush,
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
    this.sourceInstantSnapshot,
    this.sourceInstantSnapshotEncryptionKey,
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
    final enableConfidentialComputeValue = enableConfidentialCompute;
    if (enableConfidentialComputeValue != null) {
      map['enableConfidentialCompute'] = enableConfidentialComputeValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
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
      map['snapshotEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey2, Map<String, dynamic>>(
          snapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] =
          Input.mapOptionalInputValue<SnapshotSnapshotType2, String>(
              snapshotTypeValue, (value) => value.value);
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey2, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceDiskForRecoveryCheckpointValue =
        sourceDiskForRecoveryCheckpoint;
    if (sourceDiskForRecoveryCheckpointValue != null) {
      map['sourceDiskForRecoveryCheckpoint'] =
          sourceDiskForRecoveryCheckpointValue;
    }
    final sourceInstantSnapshotValue = sourceInstantSnapshot;
    if (sourceInstantSnapshotValue != null) {
      map['sourceInstantSnapshot'] = sourceInstantSnapshotValue;
    }
    final sourceInstantSnapshotEncryptionKeyValue =
        sourceInstantSnapshotEncryptionKey;
    if (sourceInstantSnapshotEncryptionKeyValue != null) {
      map['sourceInstantSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey2, Map<String, dynamic>>(
          sourceInstantSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    return map;
  }

  factory SnapshotArgs3.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs3(
      chainName: Input.asOptionalInput<String>(map['chainName']),
      description: Input.asOptionalInput<String>(map['description']),
      enableConfidentialCompute:
          Input.asOptionalInput<bool>(map['enableConfidentialCompute']),
      guestFlush: Input.asOptionalInput<bool>(map['guestFlush']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      locationHint: Input.asOptionalInput<String>(map['locationHint']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      snapshotEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey2>(
          map['snapshotEncryptionKey']),
      snapshotType:
          Input.asOptionalInput<SnapshotSnapshotType2>(map['snapshotType']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey2>(
          map['sourceDiskEncryptionKey']),
      sourceDiskForRecoveryCheckpoint:
          Input.asOptionalInput<String>(map['sourceDiskForRecoveryCheckpoint']),
      sourceInstantSnapshot:
          Input.asOptionalInput<String>(map['sourceInstantSnapshot']),
      sourceInstantSnapshotEncryptionKey:
          Input.asOptionalInput<CustomerEncryptionKey2>(
              map['sourceInstantSnapshotEncryptionKey']),
      storageLocations:
          Input.asOptionalInput<List<String>>(map['storageLocations']),
    );
  }
}
