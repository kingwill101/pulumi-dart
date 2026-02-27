import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_verified_access_trust_provider/instance_verified_access_trust_provider.dart';
import 'instance_verifiedaccess_args.dart';

/// Resource for managing a Verified Access Instance.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With `fips_enabled`
///
///
///
/// ### With `cidr_endpoints_custom_subdomain`
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instances using the  `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instance:Instance example vai-1234567890abcdef0
/// ```
class InstanceVerifiedaccess extends pulumi.CustomResource {
  /// The custom subdomain for the CIDR endpoints.
  late final pulumi.Output<String?> cidrEndpointsCustomSubdomain;

  /// The time that the Verified Access Instance was created.
  late final pulumi.Output<String> creationTime;

  /// A description for the AWS Verified Access Instance.
  late final pulumi.Output<String?> description;

  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  late final pulumi.Output<bool?> fipsEnabled;

  /// The time that the Verified Access Instance was last updated.
  late final pulumi.Output<String> lastUpdatedTime;
  late final pulumi.Output<List<String>> nameServers;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// One or more blocks of providing information about the AWS Verified Access Trust Providers. See verified_access_trust_providers below for details.One or more blocks
  late final pulumi.Output<List<InstanceVerifiedAccessTrustProvider>>
      verifiedAccessTrustProviders;

  InstanceVerifiedaccess(
    String name, {
    InstanceVerifiedaccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrEndpointsCustomSubdomain =
        registerOutput<String?>('cidrEndpointsCustomSubdomain');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String?>('description');
    this.fipsEnabled = registerOutput<bool?>('fipsEnabled');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.nameServers = registerOutput<List<String>>('nameServers');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.verifiedAccessTrustProviders =
        registerOutput<List<InstanceVerifiedAccessTrustProvider>>(
            'verifiedAccessTrustProviders');
  }
}
