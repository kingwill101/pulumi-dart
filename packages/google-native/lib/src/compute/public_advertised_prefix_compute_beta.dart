import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_advertised_prefix_compute_beta_args.dart';
import 'public_advertised_prefix_public_delegated_prefix_response_compute_beta.dart';

/// Creates a PublicAdvertisedPrefix in the specified project using the parameters that are included in the request.
class PublicAdvertisedPrefixComputeBeta extends pulumi.CustomResource {
  /// The version of BYOIP API.
  late final pulumi.Output<String> byoipApiVersion;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// The address to be used for reverse DNS verification.
  late final pulumi.Output<String> dnsVerificationIp;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a new PublicAdvertisedPrefix. An up-to-date fingerprint must be provided in order to update the PublicAdvertisedPrefix, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a PublicAdvertisedPrefix.
  late final pulumi.Output<String> fingerprint;

  /// The address range, in CIDR format, represented by this public advertised prefix.
  late final pulumi.Output<String> ipCidrRange;

  /// Type of the resource. Always compute#publicAdvertisedPrefix for public advertised prefixes.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Specifies how child public delegated prefix will be scoped. It could be one of following values: - `REGIONAL`: The public delegated prefix is regional only. The provisioning will take a few minutes. - `GLOBAL`: The public delegated prefix is global only. The provisioning will take ~4 weeks. - `GLOBAL_AND_REGIONAL` [output only]: The public delegated prefixes is BYOIP V1 legacy prefix. This is output only value and no longer supported in BYOIP V2.
  late final pulumi.Output<String> pdpScope;
  late final pulumi.Output<String> project;

  /// The list of public delegated prefixes that exist for this public advertised prefix.
  late final pulumi.Output<
          List<PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeBeta>>
      publicDelegatedPrefixs;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// The shared secret to be used for reverse DNS verification.
  late final pulumi.Output<String> sharedSecret;

  /// The status of the public advertised prefix. Possible values include: - `INITIAL`: RPKI validation is complete. - `PTR_CONFIGURED`: User has configured the PTR. - `VALIDATED`: Reverse DNS lookup is successful. - `REVERSE_DNS_LOOKUP_FAILED`: Reverse DNS lookup failed. - `PREFIX_CONFIGURATION_IN_PROGRESS`: The prefix is being configured. - `PREFIX_CONFIGURATION_COMPLETE`: The prefix is fully configured. - `PREFIX_REMOVAL_IN_PROGRESS`: The prefix is being removed.
  late final pulumi.Output<String> status;

  /// Creates a new [PublicAdvertisedPrefixComputeBeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicAdvertisedPrefixComputeBeta]. {@macro pulumi_compute_beta_public_advertised_prefix_compute_beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicAdvertisedPrefixComputeBeta(
    String name, {
    PublicAdvertisedPrefixComputeBetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:PublicAdvertisedPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.byoipApiVersion = registerOutput<String>('byoipApiVersion');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.dnsVerificationIp = registerOutput<String>('dnsVerificationIp');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.ipCidrRange = registerOutput<String>('ipCidrRange');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.pdpScope = registerOutput<String>('pdpScope');
    this.project = registerOutput<String>('project');
    this.publicDelegatedPrefixs = registerOutput<
            List<
                PublicAdvertisedPrefixPublicDelegatedPrefixResponseComputeBeta>>(
        'publicDelegatedPrefixs');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.sharedSecret = registerOutput<String>('sharedSecret');
    this.status = registerOutput<String>('status');
  }
}
