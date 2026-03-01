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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? fsxFilesystemArn,
    pulumi.Output<String>? password,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupArns,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? user,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      fsxFilesystemArn = pulumi.Input.asOptionalInput<String>(fsxFilesystemArn),
      password = pulumi.Input.asOptionalInput<String>(password),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asOptionalInput<List<String>>(securityGroupArns),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      fsxFilesystemArn: map['fsxFilesystemArn'] == null ? null : pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: map['securityGroupArns'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

