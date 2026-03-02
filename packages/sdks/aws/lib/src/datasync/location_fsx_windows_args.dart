// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datasync_location_fsx_windows_location_fsx_windows_args_doc}
/// The set of arguments for LocationFsxWindows.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_fsx_windows_location_fsx_windows_args_doc}
class LocationFsxWindowsArgs {
  /// The name of the Windows domain that the FSx for Windows server belongs to.
  final pulumi.Input<String>? domain;
  /// The Amazon Resource Name (ARN) for the FSx for Windows file system.
  final pulumi.Input<String> fsxFilesystemArn;
  /// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  final pulumi.Input<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  final pulumi.Input<List<String>> securityGroupArns;
  /// Subdirectory to perform actions as source or destination.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user who has the permissions to access files and folders in the FSx for Windows file system.
  final pulumi.Input<String> user;

  /// Creates a new [LocationFsxWindowsArgs].
  /// [domain] The name of the Windows domain that the FSx for Windows server belongs to.
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for Windows file system.
  /// [password] The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [user] The user who has the permissions to access files and folders in the FSx for Windows file system.
  LocationFsxWindowsArgs({
    this.domain,
    required this.fsxFilesystemArn,
    required this.password,
    this.region,
    required this.securityGroupArns,
    this.subdirectory,
    this.tags,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'fsxFilesystemArn': fsxFilesystemArn,
      'password': password,
      'region': ?region,
      'securityGroupArns': securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'user': user,
    };
  }

  factory LocationFsxWindowsArgs.fromMap(Map<String, dynamic> map) {
    return LocationFsxWindowsArgs(
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      fsxFilesystemArn: (map['fsxFilesystemArn'] as String).input(),
      password: (map['password'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupArns: ((map['securityGroupArns'] as List).cast<String>()).input(),
      subdirectory: map['subdirectory'] == null ? null : ((map['subdirectory'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      user: (map['user'] as String).input(),
    );
  }
}

