// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_identity_reference_response.dart';

/// A single file or multiple files to be downloaded to a compute node.
class ResourceFileResponse {
  /// The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified.
  final pulumi.Input<String?>? autoStorageContainerName;
  /// The property is valid only when autoStorageContainerName or storageContainerUrl is used. This prefix can be a partial filename or a subdirectory. If a prefix is not specified, all the files in the container will be downloaded.
  final pulumi.Input<String?>? blobPrefix;
  /// This property applies only to files being downloaded to Linux compute nodes. It will be ignored if it is specified for a resourceFile which will be downloaded to a Windows node. If this property is not specified for a Linux node, then a default value of 0770 is applied to the file.
  final pulumi.Input<String?>? fileMode;
  /// If the httpUrl property is specified, the filePath is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the autoStorageContainerName or storageContainerUrl property is specified, filePath is optional and is the directory to download the files to. In the case where filePath is used as a directory, any directory structure already associated with the input data will be retained in full and appended to the specified filePath directory. The specified relative path cannot break out of the task's working directory (for example by using '..').
  final pulumi.Input<String?>? filePath;
  /// The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified. If the URL points to Azure Blob Storage, it must be readable from compute nodes. There are three ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read permissions on the blob, use a managed identity with read permission, or set the ACL for the blob or its container to allow public access.
  final pulumi.Input<String?>? httpUrl;
  /// The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  final pulumi.Input<ComputeNodeIdentityReferenceResponse?>? identityReference;
  /// The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified. This URL must be readable and listable from compute nodes. There are three ways to get such a URL for a container in Azure storage: include a Shared Access Signature (SAS) granting read and list permissions on the container, use a managed identity with read and list permissions, or set the ACL for the container to allow public access.
  final pulumi.Input<String?>? storageContainerUrl;

  /// Creates a new [ResourceFileResponse].
  /// [autoStorageContainerName] The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified.
  /// [blobPrefix] The property is valid only when autoStorageContainerName or storageContainerUrl is used. This prefix can be a partial filename or a subdirectory. If a prefix is not specified, all the files in the container will be downloaded.
  /// [fileMode] This property applies only to files being downloaded to Linux compute nodes. It will be ignored if it is specified for a resourceFile which will be downloaded to a Windows node. If this property is not specified for a Linux node, then a default value of 0770 is applied to the file.
  /// [filePath] If the httpUrl property is specified, the filePath is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the autoStorageContainerName or storageContainerUrl property is specified, filePath is optional and is the directory to download the files to. In the case where filePath is used as a directory, any directory structure already associated with the input data will be retained in full and appended to the specified filePath directory. The specified relative path cannot break out of the task's working directory (for example by using '..').
  /// [httpUrl] The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified. If the URL points to Azure Blob Storage, it must be readable from compute nodes. There are three ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read permissions on the blob, use a managed identity with read permission, or set the ACL for the blob or its container to allow public access.
  /// [identityReference] The reference to a user assigned identity associated with the Batch pool which a compute node will use.
  /// [storageContainerUrl] The autoStorageContainerName, storageContainerUrl and httpUrl properties are mutually exclusive and one of them must be specified. This URL must be readable and listable from compute nodes. There are three ways to get such a URL for a container in Azure storage: include a Shared Access Signature (SAS) granting read and list permissions on the container, use a managed identity with read and list permissions, or set the ACL for the container to allow public access.
  const ResourceFileResponse({
    this.autoStorageContainerName,
    this.blobPrefix,
    this.fileMode,
    this.filePath,
    this.httpUrl,
    this.identityReference,
    this.storageContainerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStorageContainerName': ?autoStorageContainerName,
      'blobPrefix': ?blobPrefix,
      'fileMode': ?fileMode,
      'filePath': ?filePath,
      'httpUrl': ?httpUrl,
      'identityReference': ?pulumi.Input.mapOptionalInputValue<ComputeNodeIdentityReferenceResponse, Map<String, dynamic>>(identityReference, (value) => value.toMap()),
      'storageContainerUrl': ?storageContainerUrl,
    };
  }

  factory ResourceFileResponse.fromMap(Map<String, dynamic> map) {
    return ResourceFileResponse(
      autoStorageContainerName: (() { final guardedValue = map['autoStorageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blobPrefix: (() { final guardedValue = map['blobPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileMode: (() { final guardedValue = map['fileMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpUrl: (() { final guardedValue = map['httpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityReference: (() { final guardedValue = map['identityReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeNodeIdentityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageContainerUrl: (() { final guardedValue = map['storageContainerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
