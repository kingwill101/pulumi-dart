import 'package:pulumi/pulumi.dart';
import 'domain_identity_args.dart';

/// Provides an SES domain identity resource
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Route53 Record
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SES domain identities using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/domainIdentity:DomainIdentity example example.com
/// ```
class DomainIdentity extends CustomResource {
  /// The ARN of the domain identity.
  late final Output<String> arn;

  /// The domain name to assign to SES
  late final Output<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf. The domain identity will be in state "verification pending" until this is done. See the With Route53 Record example for how this might be achieved when the domain is hosted in Route 53 and managed by this provider.  Find out more about verifying domains in Amazon SES in the [AWS SES docs](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html).
  late final Output<String> verificationToken;

  DomainIdentity(
    String name, {
    DomainIdentityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/domainIdentity:DomainIdentity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domain = registerOutput<String>('domain');
    this.region = registerOutput<String>('region');
    this.verificationToken = registerOutput<String>('verificationToken');
  }
}
