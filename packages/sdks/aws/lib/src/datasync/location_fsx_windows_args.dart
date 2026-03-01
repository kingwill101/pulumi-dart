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
    pulumi.Output<String>? domain,
    required pulumi.Output<String> fsxFilesystemArn,
    required pulumi.Output<String> password,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> securityGroupArns,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> user,
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
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      fsxFilesystemArn: pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      user: pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

