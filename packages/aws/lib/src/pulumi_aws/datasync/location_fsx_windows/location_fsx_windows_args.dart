// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LocationFsxWindows.
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
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    map['fsxFilesystemArn'] = fsxFilesystemArn;
    map['password'] = password;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupArns'] = securityGroupArns;
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['user'] = user;
    return map;
  }

  factory LocationFsxWindowsArgs.fromMap(Map<String, dynamic> map) {
    return LocationFsxWindowsArgs(
      domain: pulumi.Input.asOptionalInput<String>(map['domain']),
      fsxFilesystemArn: pulumi.Input.asInput<String>(map['fsxFilesystemArn']),
      password: pulumi.Input.asInput<String>(map['password']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupArns:
          pulumi.Input.asInput<List<String>>(map['securityGroupArns']),
      subdirectory: pulumi.Input.asOptionalInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
