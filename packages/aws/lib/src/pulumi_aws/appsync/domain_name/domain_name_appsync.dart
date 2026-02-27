import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_appsync_args.dart';

/// Provides an AppSync Domain Name.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DomainName` using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainName:DomainName example example.com
/// ```
class DomainNameAppsync extends pulumi.CustomResource {
  /// Domain name that AppSync provides.
  late final pulumi.Output<String> appsyncDomainName;

  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  late final pulumi.Output<String> certificateArn;

  /// A description of the Domain Name.
  late final pulumi.Output<String?> description;

  /// Domain name.
  late final pulumi.Output<String> domainName;

  /// ID of your Amazon Route 53 hosted zone.
  late final pulumi.Output<String> hostedZoneId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DomainNameAppsync(
    String name, {
    DomainNameAppsyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainName:DomainName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appsyncDomainName = registerOutput<String>('appsyncDomainName');
    this.certificateArn = registerOutput<String>('certificateArn');
    this.description = registerOutput<String?>('description');
    this.domainName = registerOutput<String>('domainName');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.region = registerOutput<String>('region');
  }
}
