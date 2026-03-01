// ignore_for_file: unused_element, unnecessary_cast

import 'compute_node_identity_reference.dart';

/// Information used to connect to an Azure Storage Container using Blobfuse.
class AzureBlobFileSystemConfiguration {
  /// This property is mutually exclusive with both sasKey and identity; exactly one must be specified.
  final String? accountKey;
  /// The Azure Storage Account name.
  final String accountName;
  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final String? blobfuseOptions;
  /// The Azure Blob Storage Container name.
  final String containerName;
  /// This property is mutually exclusive with both accountKey and sasKey; exactly one must be specified.
  final ComputeNodeIdentityReference? identityReference;
  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final String relativeMountPath;
  /// This property is mutually exclusive with both accountKey and identity; exactly one must be specified.
  final String? sasKey;

  /// Creates a new [AzureBlobFileSystemConfiguration].
  /// [accountKey] This property is mutually exclusive with both sasKey and identity; exactly one must be specified.
  /// [accountName] The Azure Storage Account name.
  /// [blobfuseOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [containerName] The Azure Blob Storage Container name.
  /// [identityReference] This property is mutually exclusive with both accountKey and sasKey; exactly one must be specified.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  /// [sasKey] This property is mutually exclusive with both accountKey and identity; exactly one must be specified.
  AzureBlobFileSystemConfiguration({
    this.accountKey,
    required this.accountName,
    this.blobfuseOptions,
    required this.containerName,
    this.identityReference,
    required this.relativeMountPath,
    this.sasKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': accountName,
      'blobfuseOptions': ?blobfuseOptions,
      'containerName': containerName,
      'identityReference': ?identityReference == null ? null : identityReference!.toMap(),
      'relativeMountPath': relativeMountPath,
      'sasKey': ?sasKey,
    };
  }

  factory AzureBlobFileSystemConfiguration.fromMap(Map<String, dynamic> map) {
    return AzureBlobFileSystemConfiguration(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      accountName: map['accountName'] as String,
      blobfuseOptions: map['blobfuseOptions'] == null ? null : map['blobfuseOptions'] as String,
      containerName: map['containerName'] as String,
      identityReference: map['identityReference'] == null ? null : ComputeNodeIdentityReference.fromMap((map['identityReference'] as Map).cast<String, dynamic>()),
      relativeMountPath: map['relativeMountPath'] as String,
      sasKey: map['sasKey'] == null ? null : map['sasKey'] as String,
    );
  }
}

