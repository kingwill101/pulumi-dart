import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_lightsail_args.dart';

/// Manages a Lightsail domain for DNS management. Use this resource to manage DNS records for a domain that you have already registered with a domain registrar.
///
/// > **Note:** You cannot register a new domain name using Lightsail. Register your domain using Amazon Route 53 or another domain name registrar before using this resource.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail) for more details.
class DomainLightsail extends pulumi.CustomResource {
  /// ARN of the Lightsail domain.
  late final pulumi.Output<String> arn;

  /// Name of the Lightsail domain to manage.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DomainLightsail(
    String name, {
    DomainLightsailArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
