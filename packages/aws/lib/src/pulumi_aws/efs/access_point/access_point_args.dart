// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../access_point_posix_user/access_point_posix_user.dart';
import '../access_point_root_directory/access_point_root_directory.dart';

/// The set of arguments for AccessPoint.
class AccessPointArgs {
  /// ID of the file system for which the access point is intended.
  final pulumi.Input<String> fileSystemId;

  /// Operating system user and group applied to all file system requests made using the access point. Detailed below.
  final pulumi.Input<AccessPointPosixUser>? posixUser;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Directory on the Amazon EFS file system that the access point provides access to. Detailed below.
  final pulumi.Input<AccessPointRootDirectory>? rootDirectory;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  AccessPointArgs({
    required this.fileSystemId,
    this.posixUser,
    this.region,
    this.rootDirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    final posixUserValue = posixUser;
    if (posixUserValue != null) {
      map['posixUser'] = pulumi.Input.mapOptionalInputValue<
          AccessPointPosixUser,
          Map<String, dynamic>>(posixUserValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootDirectoryValue = rootDirectory;
    if (rootDirectoryValue != null) {
      map['rootDirectory'] = pulumi.Input.mapOptionalInputValue<
          AccessPointRootDirectory,
          Map<String, dynamic>>(rootDirectoryValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs(
      fileSystemId: pulumi.Input.asInput<String>(map['fileSystemId']),
      posixUser:
          pulumi.Input.asOptionalInput<AccessPointPosixUser>(map['posixUser']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rootDirectory: pulumi.Input.asOptionalInput<AccessPointRootDirectory>(
          map['rootDirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
