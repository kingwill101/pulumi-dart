// ignore_for_file: unused_element, unnecessary_cast

import '../s3_access_point_attachment_openzfs_configuration_file_system_identity_posix_user/s3_access_point_attachment_openzfs_configuration_file_system_identity_posix_user.dart';

class S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity {
  /// UID and GIDs of the file system POSIX user. See `posix_user` Block for details.
  final S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser?
      posixUser;

  /// FSx for OpenZFS user identity type. Valid values: `POSIX`.
  final String type;

  S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity({
    this.posixUser,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final posixUserValue = posixUser;
    if (posixUserValue != null) {
      map['posixUser'] = posixUserValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity.fromMap(
      Map<String, dynamic> map) {
    return S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity(
      posixUser: map['posixUser'] == null
          ? null
          : S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser
              .fromMap((map['posixUser'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
