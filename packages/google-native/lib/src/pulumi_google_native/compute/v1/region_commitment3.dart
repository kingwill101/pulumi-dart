import 'package:pulumi/pulumi.dart';
import 'license_resource_commitment_response3.dart';
import 'region_commitment_args3.dart';
import 'reservation_response3.dart';
import 'resource_commitment_response3.dart';

/// Creates a commitment in the specified project using the data included in the request.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class RegionCommitment3 extends CustomResource {
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

  /// Type of the resource. Always compute#commitment for commitments.
  late final Output<String> kind;

  /// The license specification required as part of a license commitment.
  late final Output<LicenseResourceCommitmentResponse3> licenseResource;

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
  late final Output<List<ReservationResponse3>> reservations;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  late final Output<List<ResourceCommitmentResponse3>> resources;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

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

  RegionCommitment3(
    String name, {
    RegionCommitmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionCommitment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.category = registerOutput<String>('category');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.endTimestamp = registerOutput<String>('endTimestamp');
    this.kind = registerOutput<String>('kind');
    this.licenseResource =
        registerOutput<LicenseResourceCommitmentResponse3>('licenseResource');
    this.mergeSourceCommitments =
        registerOutput<List<String>>('mergeSourceCommitments');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<String>('plan');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.reservations =
        registerOutput<List<ReservationResponse3>>('reservations');
    this.resources =
        registerOutput<List<ResourceCommitmentResponse3>>('resources');
    this.selfLink = registerOutput<String>('selfLink');
    this.splitSourceCommitment =
        registerOutput<String>('splitSourceCommitment');
    this.startTimestamp = registerOutput<String>('startTimestamp');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.type = registerOutput<String>('type');
  }
}
