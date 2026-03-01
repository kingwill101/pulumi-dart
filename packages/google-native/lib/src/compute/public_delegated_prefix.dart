import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_args.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix_response.dart';

/// Creates a PublicDelegatedPrefix in the specified project in the given region using the parameters that are included in the request.
class PublicDelegatedPrefix extends pulumi.CustomResource {
  /// The allocatable prefix length supported by this public delegated prefix. This field is optional and cannot be set for prefixes in DELEGATION mode. It cannot be set for IPv4 prefixes either, and it always defaults to 32.
  late final pulumi.Output<int> allocatablePrefixLength;

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

  /// The public delegated prefix mode for IPv6 only.
  late final pulumi.Output<String> mode;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  late final pulumi.Output<String> parentPrefix;
  late final pulumi.Output<String> project;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  late final pulumi.Output<
    List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse>
  >
  publicDelegatedSubPrefixs;
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  late final pulumi.Output<String> status;

  /// Creates a new [PublicDelegatedPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicDelegatedPrefix]. {@macro pulumi_compute_alpha_public_delegated_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicDelegatedPrefix(
    String name, {
    PublicDelegatedPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:compute/alpha:PublicDelegatedPrefix',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.allocatablePrefixLength = registerOutput<int>(
      'allocatablePrefixLength',
    );
    this.byoipApiVersion = registerOutput<String>('byoipApiVersion');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.isLiveMigration = registerOutput<bool>('isLiveMigration');
    this.kind = registerOutput<String>('kind');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.parentPrefix = registerOutput<String>('parentPrefix');
    this.project = registerOutput<String>('project');
    this.publicDelegatedSubPrefixs =
        registerOutput<
          List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse>
        >('publicDelegatedSubPrefixs');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.status = registerOutput<String>('status');
  }
}
