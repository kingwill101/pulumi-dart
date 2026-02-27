import 'package:pulumi/pulumi.dart';
import 'domain_args6.dart';

/// Manages a Lightsail domain for DNS management. Use this resource to manage DNS records for a domain that you have already registered with a domain registrar.
///
/// > **Note:** You cannot register a new domain name using Lightsail. Register your domain using Amazon Route 53 or another domain name registrar before using this resource.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
class Domain6 extends CustomResource {
  /// ARN of the Lightsail domain.
  late final Output<String> arn;

  /// Name of the Lightsail domain to manage.
  ///
  /// The following arguments are optional:
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Domain6(
    String name, {
    DomainArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
