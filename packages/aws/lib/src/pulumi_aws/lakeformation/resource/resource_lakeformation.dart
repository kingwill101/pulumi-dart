import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_lakeformation_args.dart';

/// Registers a Lake Formation resource (e.g., S3 bucket) as managed by the Data Catalog. In other words, the S3 path is added to the data lake.
///
/// Choose a role that has read/write access to the chosen Amazon S3 path or use the service-linked role.
/// When you register the S3 path, the service-linked role and a new inline policy are created on your behalf.
/// Lake Formation adds the first path to the inline policy and attaches it to the service-linked role.
/// When you register subsequent paths, Lake Formation adds the path to the existing policy.
class ResourceLakeformation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> arn;

  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  late final pulumi.Output<bool> hybridAccessEnabled;

  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> lastModified;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Role that has read/write access to the resource.
  late final pulumi.Output<String> roleArn;

  /// Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  late final pulumi.Output<bool?> useServiceLinkedRole;

  /// Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  late final pulumi.Output<bool> withFederation;

  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  ///
  /// > **NOTE:** AWS does not support registering an S3 location with an IAM role and subsequently updating the S3 location registration to a service-linked role.
  late final pulumi.Output<bool> withPrivilegedAccess;

  ResourceLakeformation(
    String name, {
    ResourceLakeformationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.hybridAccessEnabled = registerOutput<bool>('hybridAccessEnabled');
    this.lastModified = registerOutput<String>('lastModified');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.useServiceLinkedRole = registerOutput<bool?>('useServiceLinkedRole');
    this.withFederation = registerOutput<bool>('withFederation');
    this.withPrivilegedAccess = registerOutput<bool>('withPrivilegedAccess');
  }
}
