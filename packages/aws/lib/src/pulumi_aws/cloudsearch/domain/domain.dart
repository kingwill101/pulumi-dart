import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_endpoint_options/domain_endpoint_options.dart';
import '../domain_index_field/domain_index_field.dart';
import '../domain_scaling_parameters/domain_scaling_parameters.dart';
import 'domain_args.dart';

/// Provides an CloudSearch domain resource.
///
/// The provider waits for the domain to become `Active` when applying a configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudSearch Domains using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudsearch/domain:Domain example example-domain
/// ```
class Domain extends pulumi.CustomResource {
  /// The domain's ARN.
  late final pulumi.Output<String> arn;

  /// The service endpoint for updating documents in a search domain.
  late final pulumi.Output<String> documentServiceEndpoint;

  /// An internally generated unique identifier for the domain.
  late final pulumi.Output<String> domainId;

  /// Domain endpoint options. Documented below.
  late final pulumi.Output<DomainEndpointOptions> endpointOptions;

  /// The index fields for documents added to the domain. Documented below.
  late final pulumi.Output<List<DomainIndexField>?> indexFields;

  /// Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  late final pulumi.Output<bool> multiAz;

  /// The name of the CloudSearch domain.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Domain scaling parameters. Documented below.
  late final pulumi.Output<DomainScalingParameters> scalingParameters;

  /// The service endpoint for requesting search results from a search domain.
  late final pulumi.Output<String> searchServiceEndpoint;

  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudsearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.documentServiceEndpoint =
        registerOutput<String>('documentServiceEndpoint');
    this.domainId = registerOutput<String>('domainId');
    this.endpointOptions =
        registerOutput<DomainEndpointOptions>('endpointOptions');
    this.indexFields = registerOutput<List<DomainIndexField>?>('indexFields');
    this.multiAz = registerOutput<bool>('multiAz');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scalingParameters =
        registerOutput<DomainScalingParameters>('scalingParameters');
    this.searchServiceEndpoint =
        registerOutput<String>('searchServiceEndpoint');
  }
}
