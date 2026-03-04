// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_identity_reference_response.dart';

/// Information used to connect to an Azure Storage Container using Blobfuse.
class AzureBlobFileSystemConfigurationResponse {
  /// This property is mutually exclusive with both sasKey and identity; exactly one must be specified.
  final pulumi.Input<String>? accountKey;

  /// The Azure Storage Account name.
  final pulumi.Input<String> accountName;

  /// These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String>? blobfuseOptions;

  /// The Azure Blob Storage Container name.
  final pulumi.Input<String> containerName;

  /// This property is mutually exclusive with both accountKey and sasKey; exactly one must be specified.
  final pulumi.Input<ComputeNodeIdentityReferenceResponse>? identityReference;

  /// All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  final pulumi.Input<String> relativeMountPath;

  /// This property is mutually exclusive with both accountKey and identity; exactly one must be specified.
  final pulumi.Input<String>? sasKey;

  /// Creates a new [AzureBlobFileSystemConfigurationResponse].
  /// [accountKey] This property is mutually exclusive with both sasKey and identity; exactly one must be specified.
  /// [accountName] The Azure Storage Account name.
  /// [blobfuseOptions] These are 'net use' options in Windows and 'mount' options in Linux.
  /// [containerName] The Azure Blob Storage Container name.
  /// [identityReference] This property is mutually exclusive with both accountKey and sasKey; exactly one must be specified.
  /// [relativeMountPath] All file systems are mounted relative to the Batch mounts directory, accessible via the AZ_BATCH_NODE_MOUNTS_DIR environment variable.
  /// [sasKey] This property is mutually exclusive with both accountKey and identity; exactly one must be specified.
  AzureBlobFileSystemConfigurationResponse({
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
      'identityReference':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeNodeIdentityReferenceResponse,
            Map<String, dynamic>
          >(identityReference, (value) => value.toMap()),
      'relativeMountPath': relativeMountPath,
      'sasKey': ?sasKey,
    };
  }

  factory AzureBlobFileSystemConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureBlobFileSystemConfigurationResponse(
      accountKey: (() {
        final guardedValue = map['accountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      blobfuseOptions: (() {
        final guardedValue = map['blobfuseOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      identityReference: (() {
        final guardedValue = map['identityReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeNodeIdentityReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      relativeMountPath: pulumi.Input.fromValue(
        map['relativeMountPath'] as String,
      ),
      sasKey: (() {
        final guardedValue = map['sasKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
