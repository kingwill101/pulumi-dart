import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_args.dart';
import 'license_resource_requirements_response.dart';

/// Create a License resource in the specified project. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
class LicenseComputeAlpha extends pulumi.CustomResource {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  late final pulumi.Output<bool> chargesUseFee;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final pulumi.Output<String> description;

  /// Type of resource. Always compute#license for licenses.
  late final pulumi.Output<String> kind;

  /// The unique code used to attach this license to images, snapshots, and disks.
  late final pulumi.Output<String> licenseCode;

  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<LicenseResourceRequirementsResponse>
      resourceRequirements;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;

  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  late final pulumi.Output<bool> transferable;

  LicenseComputeAlpha(
    String name, {
    LicenseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:License',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.chargesUseFee = registerOutput<bool>('chargesUseFee');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.licenseCode = registerOutput<String>('licenseCode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.resourceRequirements =
        registerOutput<LicenseResourceRequirementsResponse>(
            'resourceRequirements');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.transferable = registerOutput<bool>('transferable');
  }
}
