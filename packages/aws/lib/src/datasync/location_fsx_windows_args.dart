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
    String? domain,
    required String fsxFilesystemArn,
    required String password,
    String? region,
    required List<String> securityGroupArns,
    String? subdirectory,
    Map<String, String>? tags,
    required String user,
  }) :
      domain = pulumi.Input.asOptionalInput<String>(domain),
      fsxFilesystemArn = pulumi.Input.asInput<String>(fsxFilesystemArn),
      password = pulumi.Input.asInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asInput<List<String>>(securityGroupArns),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      user = pulumi.Input.asInput<String>(user);

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
      domain: map['domain'] == null ? null : map['domain'] as String,
      fsxFilesystemArn: map['fsxFilesystemArn'] as String,
      password: map['password'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupArns: (map['securityGroupArns'] as List).cast<String>(),
      subdirectory: map['subdirectory'] == null ? null : map['subdirectory'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      user: map['user'] as String,
    );
  }
}

