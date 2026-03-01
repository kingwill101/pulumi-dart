// ignore_for_file: unused_element, unnecessary_cast


class PoolStartTaskResourceFile {
  /// The storage container name in the auto storage account.
  final String? autoStorageContainerName;
  /// The blob prefix to use when downloading blobs from an Azure Storage container. Only the blobs whose names begin with the specified prefix will be downloaded. The property is valid only when `auto_storage_container_name` or `storage_container_url` is used. This prefix can be a partial filename or a subdirectory. If a prefix is not specified, all the files in the container will be downloaded.
  final String? blobPrefix;
  /// The file permission mode represented as a string in octal format (e.g. `"0644"`). This property applies only to files being downloaded to Linux compute nodes. It will be ignored if it is specified for a `resource_file` which will be downloaded to a Windows node. If this property is not specified for a Linux node, then a default value of 0770 is applied to the file.
  final String? fileMode;
  /// The location on the compute node to which to download the file, relative to the task's working directory. If the `http_url` property is specified, the `file_path` is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the `auto_storage_container_name` or `storage_container_url` property is specified, `file_path` is optional and is the directory to download the files to. In the case where `file_path` is used as a directory, any directory structure already associated with the input data will be retained in full and appended to the specified filePath directory. The specified relative path cannot break out of the task's working directory (for example by using '..').
  final String? filePath;
  /// The URL of the file to download. If the URL is Azure Blob Storage, it must be readable using anonymous access; that is, the Batch service does not present any credentials when downloading the blob. There are two ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read permissions on the blob, or set the ACL for the blob or its container to allow public access.
  final String? httpUrl;
  /// The URL of the blob container within Azure Blob Storage. This URL must be readable and listable using anonymous access; that is, the Batch service does not present any credentials when downloading the blob. There are two ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read and list permissions on the blob, or set the ACL for the blob or its container to allow public access.
  final String? storageContainerUrl;
  /// An identity reference from pool's user assigned managed identity list.
  ///
  /// > **Note:** Exactly one of `auto_storage_container_name`, `storage_container_url` and `auto_user` must be specified.
  final String? userAssignedIdentityId;

  /// Creates a new [PoolStartTaskResourceFile].
  /// [autoStorageContainerName] The storage container name in the auto storage account.
  /// [blobPrefix] The blob prefix to use when downloading blobs from an Azure Storage container. Only the blobs whose names begin with the specified prefix will be downloaded. The property is valid only when `auto_storage_container_name` or `storage_container_url` is used. This prefix can be a partial filename or a subdirectory. If a prefix is not specified, all the files in the container will be downloaded.
  /// [fileMode] The file permission mode represented as a string in octal format (e.g. `"0644"`). This property applies only to files being downloaded to Linux compute nodes. It will be ignored if it is specified for a `resource_file` which will be downloaded to a Windows node. If this property is not specified for a Linux node, then a default value of 0770 is applied to the file.
  /// [filePath] The location on the compute node to which to download the file, relative to the task's working directory. If the `http_url` property is specified, the `file_path` is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the `auto_storage_container_name` or `storage_container_url` property is specified, `file_path` is optional and is the directory to download the files to. In the case where `file_path` is used as a directory, any directory structure already associated with the input data will be retained in full and appended to the specified filePath directory. The specified relative path cannot break out of the task's working directory (for example by using '..').
  /// [httpUrl] The URL of the file to download. If the URL is Azure Blob Storage, it must be readable using anonymous access; that is, the Batch service does not present any credentials when downloading the blob. There are two ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read permissions on the blob, or set the ACL for the blob or its container to allow public access.
  /// [storageContainerUrl] The URL of the blob container within Azure Blob Storage. This URL must be readable and listable using anonymous access; that is, the Batch service does not present any credentials when downloading the blob. There are two ways to get such a URL for a blob in Azure storage: include a Shared Access Signature (SAS) granting read and list permissions on the blob, or set the ACL for the blob or its container to allow public access.
  /// [userAssignedIdentityId] An identity reference from pool's user assigned managed identity list.
  PoolStartTaskResourceFile({
    this.autoStorageContainerName,
    this.blobPrefix,
    this.fileMode,
    this.filePath,
    this.httpUrl,
    this.storageContainerUrl,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStorageContainerName': ?autoStorageContainerName,
      'blobPrefix': ?blobPrefix,
      'fileMode': ?fileMode,
      'filePath': ?filePath,
      'httpUrl': ?httpUrl,
      'storageContainerUrl': ?storageContainerUrl,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory PoolStartTaskResourceFile.fromMap(Map<String, dynamic> map) {
    return PoolStartTaskResourceFile(
      autoStorageContainerName: map['autoStorageContainerName'] == null ? null : map['autoStorageContainerName'] as String,
      blobPrefix: map['blobPrefix'] == null ? null : map['blobPrefix'] as String,
      fileMode: map['fileMode'] == null ? null : map['fileMode'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      httpUrl: map['httpUrl'] == null ? null : map['httpUrl'] as String,
      storageContainerUrl: map['storageContainerUrl'] == null ? null : map['storageContainerUrl'] as String,
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : map['userAssignedIdentityId'] as String,
    );
  }
}

