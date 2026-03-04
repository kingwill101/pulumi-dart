// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_attachment_openzfs_configuration_file_system_identity_posix_user.dart';

class S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity {
  /// UID and GIDs of the file system POSIX user. See `posix_user` Block for details.
  final pulumi.Input<
    S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser
  >?
  posixUser;

  /// FSx for OpenZFS user identity type. Valid values: `POSIX`.
  final pulumi.Input<String> type;

  /// Creates a new [S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity].
  /// [posixUser] UID and GIDs of the file system POSIX user. See `posix_user` Block for details.
  /// [type] FSx for OpenZFS user identity type. Valid values: `POSIX`.
  S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity({
    this.posixUser,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posixUser':
          ?pulumi.Input.mapOptionalInputValue<
            S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser,
            Map<String, dynamic>
          >(posixUser, (value) => value.toMap()),
      'type': type,
    };
  }

  factory S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity.fromMap(
    Map<String, dynamic> map,
  ) {
    return S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentity(
      posixUser: (() {
        final guardedValue = map['posixUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          S3AccessPointAttachmentOpenzfsConfigurationFileSystemIdentityPosixUser.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
