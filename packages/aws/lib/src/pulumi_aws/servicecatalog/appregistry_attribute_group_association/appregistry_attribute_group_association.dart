import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_attribute_group_association_args.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Attribute Group Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog AppRegistry Attribute Group Association using `application_id` and `attribute_group_id` arguments separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryAttributeGroupAssociation:AppregistryAttributeGroupAssociation example 12456778723424sdffsdfsdq34,12234t3564dsfsdf34asff4ww3
/// ```
class AppregistryAttributeGroupAssociation extends pulumi.CustomResource {
  /// ID of the application.
  late final pulumi.Output<String> applicationId;

  /// ID of the attribute group to associate with the application.
  late final pulumi.Output<String> attributeGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AppregistryAttributeGroupAssociation(
    String name, {
    AppregistryAttributeGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/appregistryAttributeGroupAssociation:AppregistryAttributeGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributeGroupId = registerOutput<String>('attributeGroupId');
    this.region = registerOutput<String>('region');
  }
}
