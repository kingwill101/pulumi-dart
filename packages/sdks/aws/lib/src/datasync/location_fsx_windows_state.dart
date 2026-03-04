// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocationFsxWindows resources.
class LocationFsxWindowsState {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;

  /// The time that the FSx for Windows location was created.
  final pulumi.Input<String>? creationTime;

  /// The name of the Windows domain that the FSx for Windows server belongs to.
  final pulumi.Input<String>? domain;

  /// The Amazon Resource Name (ARN) for the FSx for Windows file system.
  final pulumi.Input<String>? fsxFilesystemArn;

  /// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  final pulumi.Input<String>? password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  final pulumi.Input<List<String>>? securityGroupArns;

  /// Subdirectory to perform actions as source or destination.
  final pulumi.Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The URL of the FSx for Windows location that was described.
  final pulumi.Input<String>? uri;

  /// The user who has the permissions to access files and folders in the FSx for Windows file system.
  final pulumi.Input<String>? user;

  /// Creates a new [LocationFsxWindowsState].
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [creationTime] The time that the FSx for Windows location was created.
  /// [domain] The name of the Windows domain that the FSx for Windows server belongs to.
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for Windows file system.
  /// [password] The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Windows file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] The URL of the FSx for Windows location that was described.
  /// [user] The user who has the permissions to access files and folders in the FSx for Windows file system.
  LocationFsxWindowsState({
    this.arn,
    this.creationTime,
    this.domain,
    this.fsxFilesystemArn,
    this.password,
    this.region,
    this.securityGroupArns,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'domain': ?domain,
      'fsxFilesystemArn': ?fsxFilesystemArn,
      'password': ?password,
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
      'user': ?user,
    };
  }

  factory LocationFsxWindowsState.fromMap(Map<String, dynamic> map) {
    return LocationFsxWindowsState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      creationTime: (() {
        final guardedValue = map['creationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fsxFilesystemArn: (() {
        final guardedValue = map['fsxFilesystemArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupArns: (() {
        final guardedValue = map['securityGroupArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subdirectory: (() {
        final guardedValue = map['subdirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
