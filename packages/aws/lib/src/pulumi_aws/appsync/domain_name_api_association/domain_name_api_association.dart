import 'package:pulumi/pulumi.dart';
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
class DomainNameApiAssociation extends CustomResource {
  /// API ID.
  late final Output<String> apiId;

  /// Appsync domain name.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainNameApiAssociation(
    String name, {
    DomainNameApiAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainNameApiAssociation:DomainNameApiAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
