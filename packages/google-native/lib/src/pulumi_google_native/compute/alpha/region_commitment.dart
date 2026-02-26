import 'package:pulumi/pulumi.dart';
import 'commitment_resource_status_response.dart';
import 'license_resource_commitment_response.dart';
import 'region_commitment_args.dart';
import 'reservation_response.dart';
import 'resource_commitment_response.dart';

/// Creates a commitment in the specified project using the data included in the request.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class RegionCommitment extends CustomResource {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  late final Output<bool> autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  late final Output<String> category;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Commitment end time in RFC3339 text format.
  late final Output<String> endTimestamp;

  /// Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  late final Output<List<String>> existingReservations;

  /// Type of the resource. Always compute#commitment for commitments.
  late final Output<String> kind;

  /// The license specification required as part of a license commitment.
  late final Output<LicenseResourceCommitmentResponse> licenseResource;

  /// List of source commitments to be merged into a new commitment.
  late final Output<List<String>> mergeSourceCommitments;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  late final Output<String> plan;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// List of create-on-create reseravtions for this commitment.
  late final Output<List<ReservationResponse>> reservations;

  /// Status information for Commitment resource.
  late final Output<CommitmentResourceStatusResponse> resourceStatus;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  late final Output<List<ResourceCommitmentResponse>> resources;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// Source commitment to be split into a new commitment.
  late final Output<String> splitSourceCommitment;

  /// Commitment start time in RFC3339 text format.
  late final Output<String> startTimestamp;

  /// Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  late final Output<String> status;

  /// An optional, human-readable explanation of the status.
  late final Output<String> statusMessage;

  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  late final Output<String> type;

  RegionCommitment(
    String name, {
    RegionCommitmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:RegionCommitment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = Output.createUnknown<bool>();
    this.category = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.endTimestamp = Output.createUnknown<String>();
    this.existingReservations = Output.createUnknown<List<String>>();
    this.kind = Output.createUnknown<String>();
    this.licenseResource =
        Output.createUnknown<LicenseResourceCommitmentResponse>();
    this.mergeSourceCommitments = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.plan = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.reservations = Output.createUnknown<List<ReservationResponse>>();
    this.resourceStatus =
        Output.createUnknown<CommitmentResourceStatusResponse>();
    this.resources = Output.createUnknown<List<ResourceCommitmentResponse>>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.splitSourceCommitment = Output.createUnknown<String>();
    this.startTimestamp = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.statusMessage = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
