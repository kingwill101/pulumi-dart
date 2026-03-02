// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocationFsxLustre resources.
class LocationFsxLustreState {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// The time that the FSx for Lustre location was created.
  final pulumi.Input<String>? creationTime;
  /// The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  final pulumi.Input<String>? fsxFilesystemArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  final pulumi.Input<List<String>>? securityGroupArns;
  /// Subdirectory to perform actions as source or destination.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The URL of the FSx for Lustre location that was described.
  final pulumi.Input<String>? uri;

  /// Creates a new [LocationFsxLustreState].
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [creationTime] The time that the FSx for Lustre location was created.
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] The URL of the FSx for Lustre location that was described.
  LocationFsxLustreState({
    this.arn,
    this.creationTime,
    this.fsxFilesystemArn,
    this.region,
    this.securityGroupArns,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'fsxFilesystemArn': ?fsxFilesystemArn,
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory LocationFsxLustreState.fromMap(Map<String, dynamic> map) {
    return LocationFsxLustreState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      creationTime: map['creationTime'] == null ? null : ((map['creationTime'] as String).input()).input(),
      fsxFilesystemArn: map['fsxFilesystemArn'] == null ? null : ((map['fsxFilesystemArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupArns: map['securityGroupArns'] == null ? null : (((map['securityGroupArns'] as List).cast<String>()).input()).input(),
      subdirectory: map['subdirectory'] == null ? null : ((map['subdirectory'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      uri: map['uri'] == null ? null : ((map['uri'] as String).input()).input(),
    );
  }
}

