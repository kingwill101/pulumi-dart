import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_association_args.dart';

/// Resource for managing an AWS Service Quotas Template Association.
///
/// > Only the management account of an organization can associate Service Quota templates, and this must be done from the `us-east-1` region.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Quotas Template Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/templateAssociation:TemplateAssociation example 123456789012
/// ```
class TemplateAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Skip disassociating the quota increase template upon destruction. This will remove the resource from Terraform state, but leave the remote association in place.
  late final pulumi.Output<bool?> skipDestroy;

  /// Association status. Creating this resource will result in an `ASSOCIATED` status, and quota increase requests in the template are automatically applied to new AWS accounts in the organization.
  late final pulumi.Output<String> status;

  TemplateAssociation(
    String name, {
    TemplateAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/templateAssociation:TemplateAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.status = registerOutput<String>('status');
  }
}
