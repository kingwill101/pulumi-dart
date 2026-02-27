import 'package:pulumi/pulumi.dart';
import '../identity_provider_config_oidc/identity_provider_config_oidc.dart';
import 'identity_provider_config_args.dart';

/// Manages an EKS Identity Provider Configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Identity Provider Configurations using the `cluster_name` and `identity_provider_config_name` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/identityProviderConfig:IdentityProviderConfig my_identity_provider_config my_cluster:my_identity_provider_config
/// ```
class IdentityProviderConfig extends CustomResource {
  /// Amazon Resource Name (ARN) of the EKS Identity Provider Configuration.
  late final Output<String> arn;

  /// Name of the EKS Cluster.
  late final Output<String> clusterName;

  /// Nested attribute containing [OpenID Connect](https://openid.net/connect/) identity provider information for the cluster. Detailed below.
  late final Output<IdentityProviderConfigOidc> oidc;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the EKS Identity Provider Configuration.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  IdentityProviderConfig(
    String name, {
    IdentityProviderConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/identityProviderConfig:IdentityProviderConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterName = registerOutput<String>('clusterName');
    this.oidc = registerOutput<IdentityProviderConfigOidc>('oidc');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
