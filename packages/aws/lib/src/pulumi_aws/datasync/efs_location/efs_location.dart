import 'package:pulumi/pulumi.dart' as pulumi;
import '../efs_location_ec2_config/efs_location_ec2_config.dart';
import 'efs_location_args.dart';

/// Manages an AWS DataSync EFS Location.
///
/// > **NOTE:** The EFS File System must have a mounted EFS Mount Target before creating this resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync EFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.EfsLocation` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/efsLocation:EfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class EfsLocation extends pulumi.CustomResource {
  /// Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.
  late final pulumi.Output<String?> accessPointArn;

  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// Configuration block containing EC2 configurations for connecting to the EFS File System.
  late final pulumi.Output<EfsLocationEc2Config> ec2Config;

  /// Amazon Resource Name (ARN) of EFS File System.
  late final pulumi.Output<String> efsFileSystemArn;

  /// Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.
  late final pulumi.Output<String?> fileSystemAccessRoleArn;

  /// Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are `NONE` and `TLS1_2`.
  late final pulumi.Output<String?> inTransitEncryption;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Subdirectory to perform actions as source or destination. Default `/`.
  late final pulumi.Output<String?> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  EfsLocation(
    String name, {
    EfsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/efsLocation:EfsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPointArn = registerOutput<String?>('accessPointArn');
    this.arn = registerOutput<String>('arn');
    this.ec2Config = registerOutput<EfsLocationEc2Config>('ec2Config');
    this.efsFileSystemArn = registerOutput<String>('efsFileSystemArn');
    this.fileSystemAccessRoleArn =
        registerOutput<String?>('fileSystemAccessRoleArn');
    this.inTransitEncryption = registerOutput<String?>('inTransitEncryption');
    this.region = registerOutput<String>('region');
    this.subdirectory = registerOutput<String?>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
