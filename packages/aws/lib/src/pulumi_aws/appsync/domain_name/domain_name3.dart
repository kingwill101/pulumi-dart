import 'package:pulumi/pulumi.dart';
import 'domain_name_args3.dart';

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
class DomainName3 extends CustomResource {
  /// Domain name that AppSync provides.
  late final Output<String> appsyncDomainName;

  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  late final Output<String> certificateArn;

  /// A description of the Domain Name.
  late final Output<String?> description;

  /// Domain name.
  late final Output<String> domainName;

  /// ID of your Amazon Route 53 hosted zone.
  late final Output<String> hostedZoneId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainName3(
    String name, {
    DomainNameArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainName:DomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appsyncDomainName = registerOutput<String>('appsyncDomainName');
    this.certificateArn = registerOutput<String>('certificateArn');
    this.description = registerOutput<String?>('description');
    this.domainName = registerOutput<String>('domainName');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.region = registerOutput<String>('region');
  }
}
