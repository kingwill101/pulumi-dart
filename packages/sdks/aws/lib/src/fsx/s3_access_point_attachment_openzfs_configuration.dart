// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_openzfs_configuration_file_system_identity.dart';

class S3AccessPointAttachmentOpenzfsConfiguration {
  /// File system user identity to use for authorizing file read and write requests that are made using the S3 access point. See `file_system_identity` Block for details.
  final pulumi.Input<S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity> fileSystemIdentity;
  /// ID of the FSx for OpenZFS volume to which the S3 access point is attached.
  final pulumi.Input<String> volumeId;

  /// Creates a new [S3AccessPointAttachmentOpenzfsConfiguration].
  /// [fileSystemIdentity] File system user identity to use for authorizing file read and write requests that are made using the S3 access point. See `file_system_identity` Block for details.
  /// [volumeId] ID of the FSx for OpenZFS volume to which the S3 access point is attached.
  S3AccessPointAttachmentOpenzfsConfiguration({
    required this.fileSystemIdentity,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemIdentity': pulumi.Input.mapInputValue<S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity, Map<String, dynamic>>(fileSystemIdentity, (value) => value.toMap()),
      'volumeId': volumeId,
    };
  }

  factory S3AccessPointAttachmentOpenzfsConfiguration.fromMap(Map<String, dynamic> map) {
    return S3AccessPointAttachmentOpenzfsConfiguration(
      fileSystemIdentity: (S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity.fromMap((map['fileSystemIdentity'] as Map).cast<String, dynamic>())).input(),
      volumeId: (map['volumeId'] as String).input(),
    );
  }
}

