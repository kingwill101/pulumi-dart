// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datasync_location_fsx_lustre_location_fsx_lustre_args_doc}
/// The set of arguments for LocationFsxLustre.
/// {@endtemplate}
/// {@macro pulumi_datasync_location_fsx_lustre_location_fsx_lustre_args_doc}
class LocationFsxLustreArgs {
  /// The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  final pulumi.Input<String> fsxFilesystemArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  final pulumi.Input<List<String>> securityGroupArns;
  /// Subdirectory to perform actions as source or destination.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocationFsxLustreArgs].
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for Lustre file system.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for Lustre file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LocationFsxLustreArgs({
    required pulumi.Output<String> fsxFilesystemArn,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> securityGroupArns,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      fsxFilesystemArn = pulumi.Input.asInput<String>(fsxFilesystemArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asInput<List<String>>(securityGroupArns),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsxFilesystemArn': fsxFilesystemArn,
      'region': ?region,
      'securityGroupArns': securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
    };
  }

  factory LocationFsxLustreArgs.fromMap(Map<String, dynamic> map) {
    return LocationFsxLustreArgs(
      fsxFilesystemArn: pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

