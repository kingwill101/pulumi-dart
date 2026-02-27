import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_api_association_args.dart';

/// Provides an AppSync API Association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DomainNameApiAssociation` using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainNameApiAssociation:DomainNameApiAssociation example example.com
/// ```
class DomainNameApiAssociation extends pulumi.CustomResource {
  /// API ID.
  late final pulumi.Output<String> apiId;

  /// Appsync domain name.
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  DomainNameApiAssociation(
    String name, {
    DomainNameApiAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainNameApiAssociation:DomainNameApiAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
