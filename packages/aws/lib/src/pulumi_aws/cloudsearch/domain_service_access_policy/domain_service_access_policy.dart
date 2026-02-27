import 'package:pulumi/pulumi.dart';
import 'domain_service_access_policy_args.dart';

/// Provides an CloudSearch domain service access policy resource.
///
/// The provider waits for the domain service access policy to become `Active` when applying a configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudSearch domain service access policies using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:cloudsearch/domainServiceAccessPolicy:DomainServiceAccessPolicy example example-domain
/// ```
class DomainServiceAccessPolicy extends CustomResource {
  /// The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  late final Output<String> accessPolicy;

  /// The CloudSearch domain name the policy applies to.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainServiceAccessPolicy(
    String name, {
    DomainServiceAccessPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudsearch/domainServiceAccessPolicy:DomainServiceAccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicy = registerOutput<String>('accessPolicy');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
