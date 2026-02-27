import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_policy_opensearch_args.dart';

/// Allows setting policy to an OpenSearch domain while referencing domain attributes (e.g., ARN).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Domain Policy using `domain_name` prefixed with `esd-policy-`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domainPolicy:DomainPolicy example esd-policy-tf-test
/// ```
class DomainPolicyOpensearch extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain
  late final pulumi.Output<String> accessPolicies;

  /// Name of the domain.
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DomainPolicyOpensearch(
    String name, {
    DomainPolicyOpensearchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainPolicy:DomainPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
