import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_public_delegated_prefix_compute_v1_args.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix_response_compute_v1.dart';

/// Creates a global PublicDelegatedPrefix in the specified project using the parameters that are included in the request.
class GlobalPublicDelegatedPrefixComputeV1 extends pulumi.CustomResource {
  /// The version of BYOIP API.
  late final pulumi.Output<String> byoipApiVersion;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  late final pulumi.Output<String> fingerprint;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  late final pulumi.Output<String> ipCidrRange;

  /// If true, the prefix will be live migrated.
  late final pulumi.Output<bool> isLiveMigration;

  /// Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  late final pulumi.Output<String> parentPrefix;
  late final pulumi.Output<String> project;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  late final pulumi.Output<
    List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1>
  >
  publicDelegatedSubPrefixs;

  /// URL of the region where the public delegated prefix resides. This field applies only to the region resource. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  late final pulumi.Output<String> status;

  /// Creates a new [GlobalPublicDelegatedPrefixComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalPublicDelegatedPrefixComputeV1]. {@macro pulumi_compute_v1_global_public_delegated_prefix_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalPublicDelegatedPrefixComputeV1(
    String name, {
    GlobalPublicDelegatedPrefixComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/v1:GlobalPublicDelegatedPrefix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.byoipApiVersion = registerOutput<String>('byoipApiVersion');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.isLiveMigration = registerOutput<bool>('isLiveMigration');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.parentPrefix = registerOutput<String>('parentPrefix');
    this.project = registerOutput<String>('project');
    this.publicDelegatedSubPrefixs =
        registerOutput<
          List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponseComputeV1>
        >('publicDelegatedSubPrefixs');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.status = registerOutput<String>('status');
  }
}
