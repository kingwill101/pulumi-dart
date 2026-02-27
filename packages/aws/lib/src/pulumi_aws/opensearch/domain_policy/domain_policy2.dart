import 'package:pulumi/pulumi.dart';
import 'domain_policy_args2.dart';

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
class DomainPolicy2 extends CustomResource {
  /// IAM policy document specifying the access policies for the domain
  late final Output<String> accessPolicies;

  /// Name of the domain.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainPolicy2(
    String name, {
    DomainPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainPolicy:DomainPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
