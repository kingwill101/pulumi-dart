// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LocationFsxWindows.
class LocationFsxWindowsArgs {
  /// The name of the Windows domain that the FSx for Windows server belongs to.
  final Input<String>? domain;

  /// The Amazon Resource Name (ARN) for the FSx for Windows file system.
  final Input<String> fsxFilesystemArn;

  /// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  final Input<String> password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  final Input<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination.
  final Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The user who has the permissions to access files and folders in the FSx for Windows file system.
  final Input<String> user;

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
      domain: Input.asOptionalInput<String>(map['domain']),
      fsxFilesystemArn: Input.asInput<String>(map['fsxFilesystemArn']),
      password: Input.asInput<String>(map['password']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupArns: Input.asInput<List<String>>(map['securityGroupArns']),
      subdirectory: Input.asOptionalInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      user: Input.asInput<String>(map['user']),
    );
  }
}
