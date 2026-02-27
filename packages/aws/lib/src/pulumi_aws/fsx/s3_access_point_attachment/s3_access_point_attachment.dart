import 'package:pulumi/pulumi.dart' as pulumi;
import '../s3_access_point_attachment_openzfs_configuration/s3_access_point_attachment_openzfs_configuration.dart';
import '../s3_access_point_attachment_s3_access_point/s3_access_point_attachment_s3_access_point.dart';
import '../s3_access_point_attachment_timeouts/s3_access_point_attachment_timeouts.dart';
import 's3_access_point_attachment_args.dart';

/// Manages an Amazon FSx S3 Access Point attachment.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx S3 Access Point attachments using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/s3AccessPointAttachment:S3AccessPointAttachment example example-attachment
/// ```
class S3AccessPointAttachment extends pulumi.CustomResource {
  /// Name of the S3 access point.
  late final pulumi.Output<String> name;

  /// Configuration to use when creating and attaching an S3 access point to an FSx for OpenZFS volume. See `openzfs_configuration` Block for details.
  late final pulumi.Output<S3AccessPointAttachmentOpenzfsConfiguration>
      openzfsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// S3 access point configuration. See `s3_access_point` Block for details.
  late final pulumi.Output<S3AccessPointAttachmentS3AccessPoint?> s3AccessPoint;

  /// S3 access point's alias.
  late final pulumi.Output<String> s3AccessPointAlias;

  /// S3 access point's ARN.
  late final pulumi.Output<String> s3AccessPointArn;
  late final pulumi.Output<S3AccessPointAttachmentTimeouts?> timeouts;

  /// Type of S3 access point. Valid values: `OpenZFS`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  S3AccessPointAttachment(
    String name, {
    S3AccessPointAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/s3AccessPointAttachment:S3AccessPointAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.openzfsConfiguration =
        registerOutput<S3AccessPointAttachmentOpenzfsConfiguration>(
            'openzfsConfiguration');
    this.region = registerOutput<String>('region');
    this.s3AccessPoint =
        registerOutput<S3AccessPointAttachmentS3AccessPoint?>('s3AccessPoint');
    this.s3AccessPointAlias = registerOutput<String>('s3AccessPointAlias');
    this.s3AccessPointArn = registerOutput<String>('s3AccessPointArn');
    this.timeouts =
        registerOutput<S3AccessPointAttachmentTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
