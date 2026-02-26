import 'package:pulumi/pulumi.dart';
import 'public_delegated_prefix_args3.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix_response3.dart';

/// Creates a PublicDelegatedPrefix in the specified project in the given region using the parameters that are included in the request.
class PublicDelegatedPrefix3 extends CustomResource {
  /// The version of BYOIP API.
  late final Output<String> byoipApiVersion;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicDelegatedPrefix. An up-to-date fingerprint must be provided in order to update the PublicDelegatedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicDelegatedPrefix.
  late final Output<String> fingerprint;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  late final Output<String> ipCidrRange;

  /// If true, the prefix will be live migrated.
  late final Output<bool> isLiveMigration;

  /// Type of the resource. Always compute#publicDelegatedPrefix for public delegated prefixes.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  late final Output<String> parentPrefix;
  late final Output<String> project;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  late final Output<
          List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3>>
      publicDelegatedSubPrefixs;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// The status of the public delegated prefix, which can be one of following values: - `INITIALIZING` The public delegated prefix is being initialized and addresses cannot be created yet. - `READY_TO_ANNOUNCE` The public delegated prefix is a live migration prefix and is active. - `ANNOUNCED` The public delegated prefix is active. - `DELETING` The public delegated prefix is being deprovsioned.
  late final Output<String> status;

  PublicDelegatedPrefix3(
    String name, {
    PublicDelegatedPrefixArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:PublicDelegatedPrefix',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.byoipApiVersion = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.fingerprint = Output.createUnknown<String>();
    this.ipCidrRange = Output.createUnknown<String>();
    this.isLiveMigration = Output.createUnknown<bool>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parentPrefix = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.publicDelegatedSubPrefixs = Output.createUnknown<
        List<PublicDelegatedPrefixPublicDelegatedSubPrefixResponse3>>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
