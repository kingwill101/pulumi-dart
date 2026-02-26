import 'package:pulumi/pulumi.dart';
import 'license_args.dart';
import 'license_resource_requirements_response.dart';

/// Create a License resource in the specified project. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
class License4 extends CustomResource {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  late final Output<bool> chargesUseFee;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final Output<String> description;

  /// Type of resource. Always compute#license for licenses.
  late final Output<String> kind;

  /// The unique code used to attach this license to images, snapshots, and disks.
  late final Output<String> licenseCode;

  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  late final Output<String> name;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;
  late final Output<LicenseResourceRequirementsResponse> resourceRequirements;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  late final Output<bool> transferable;

  License4(
    String name, {
    LicenseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:License',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chargesUseFee = Output.createUnknown<bool>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.licenseCode = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.resourceRequirements =
        Output.createUnknown<LicenseResourceRequirementsResponse>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.transferable = Output.createUnknown<bool>();
  }
}
