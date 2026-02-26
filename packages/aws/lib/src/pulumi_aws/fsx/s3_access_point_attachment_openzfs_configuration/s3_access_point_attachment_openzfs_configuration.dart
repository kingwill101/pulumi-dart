// ignore_for_file: unused_element, unnecessary_cast

import '../s3_access_point_attachment_openzfs_configuration_file_system_identity/s3_access_point_attachment_openzfs_configuration_file_system_identity.dart';

class S3AccessPointAttachmentOpenzfsConfiguration {
  /// File system user identity to use for authorizing file read and write requests that are made using the S3 access point. See <span pulumi-lang-nodejs="`fileSystemIdentity`" pulumi-lang-dotnet="`FileSystemIdentity`" pulumi-lang-go="`fileSystemIdentity`" pulumi-lang-python="`file_system_identity`" pulumi-lang-yaml="`fileSystemIdentity`" pulumi-lang-java="`fileSystemIdentity`">`file_system_identity`</span> Block for details.
  final S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity
      fileSystemIdentity;

  /// ID of the FSx for OpenZFS volume to which the S3 access point is attached.
  final String volumeId;

  S3AccessPointAttachmentOpenzfsConfiguration({
    required this.fileSystemIdentity,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemIdentity'] = fileSystemIdentity.toMap();
    map['volumeId'] = volumeId;
    return map;
  }

  factory S3AccessPointAttachmentOpenzfsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return S3AccessPointAttachmentOpenzfsConfiguration(
      fileSystemIdentity:
          S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity.fromMap(
              (map['fileSystemIdentity'] as Map).cast<String, dynamic>()),
      volumeId: map['volumeId'] as String,
    );
  }
}
