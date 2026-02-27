import 'package:pulumi/pulumi.dart' as pulumi;
import 'ca_pool_args.dart';
import 'issuance_policy_response.dart';
import 'publishing_options_response.dart';

/// Create a CaPool.
/// Auto-naming is currently not supported for this resource.
class CaPool extends pulumi.CustomResource {
  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> caPoolId;

  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  late final pulumi.Output<IssuancePolicyResponse> issuancePolicy;

  /// Optional. Labels with user-defined metadata.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  late final pulumi.Output<PublishingOptionsResponse> publishingOptions;

  /// Optional. An ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Immutable. The Tier of this CaPool.
  late final pulumi.Output<String> tier;

  CaPool(
    String name, {
    CaPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:privateca/v1:CaPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.caPoolId = registerOutput<String>('caPoolId');
    this.issuancePolicy =
        registerOutput<IssuancePolicyResponse>('issuancePolicy');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.publishingOptions =
        registerOutput<PublishingOptionsResponse>('publishingOptions');
    this.requestId = registerOutput<String?>('requestId');
    this.tier = registerOutput<String>('tier');
  }
}
