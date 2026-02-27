import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_access_association_args.dart';

/// Creates a domain name access association resource between an access association source and a private custom domain name.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the API Gateway domain name access association.
///
///
/// Using `pulumi import`, import API Gateway domain name acces associations as using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation example arn:aws:apigateway:us-west-2:123456789012:/domainnameaccessassociations/domainname/12qmzgp2.9m7ilski.test+hykg7a12e7/vpcesource/vpce-05de3f8f82740a748
/// ```
class DomainNameAccessAssociation extends pulumi.CustomResource {
  /// The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  late final pulumi.Output<String> accessAssociationSource;

  /// The type of the domain name access association source. Valid values are `VPCE`.
  late final pulumi.Output<String> accessAssociationSourceType;

  /// ARN of the domain name access association.
  late final pulumi.Output<String> arn;

  /// The ARN of the domain name.
  late final pulumi.Output<String> domainNameArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DomainNameAccessAssociation(
    String name, {
    DomainNameAccessAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessAssociationSource =
        registerOutput<String>('accessAssociationSource');
    this.accessAssociationSourceType =
        registerOutput<String>('accessAssociationSourceType');
    this.arn = registerOutput<String>('arn');
    this.domainNameArn = registerOutput<String>('domainNameArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
