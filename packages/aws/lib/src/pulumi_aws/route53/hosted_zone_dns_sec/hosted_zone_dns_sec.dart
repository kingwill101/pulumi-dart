import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_zone_dns_sec_args.dart';

/// Manages Route 53 Hosted Zone Domain Name System Security Extensions (DNSSEC). For more information about managing DNSSEC in Route 53, see the [Route 53 Developer Guide](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html).
///
/// !> **WARNING:** If you disable DNSSEC signing for your hosted zone before the DNS changes have propagated, your domain could become unavailable on the internet. When you remove the DS records, you must wait until the longest TTL for the DS records that you remove has expired before you complete the step to disable DNSSEC signing. Please refer to the [Route 53 Developer Guide - Disable DNSSEC](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec-disable.html) for a detailed breakdown on the steps required to disable DNSSEC safely for a hosted zone.
///
/// > **Note:** Route53 hosted zones are global resources, and as such any `aws.kms.Key` that you use as part of a signing key needs to be located in the `us-east-1` region. In the example below, the main AWS provider declaration is for `us-east-1`, however if you are provisioning your AWS resources in a different region, you will need to specify a provider alias and use that attached to the `aws.kms.Key` resource as described in the provider alias documentation.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.route53.HostedZoneDnsSec` resources using the Route 53 Hosted Zone identifier. For example:
///
/// ```sh
/// $ pulumi import aws:route53/hostedZoneDnsSec:HostedZoneDnsSec example Z1D633PJN98FT9
/// ```
class HostedZoneDnsSec extends pulumi.CustomResource {
  /// Identifier of the Route 53 Hosted Zone.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> hostedZoneId;

  /// Hosted Zone signing status. Valid values: `SIGNING`, `NOT_SIGNING`. Defaults to `SIGNING`.
  late final pulumi.Output<String?> signingStatus;

  HostedZoneDnsSec(
    String name, {
    HostedZoneDnsSecArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/hostedZoneDnsSec:HostedZoneDnsSec',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.signingStatus = registerOutput<String?>('signingStatus');
  }
}
