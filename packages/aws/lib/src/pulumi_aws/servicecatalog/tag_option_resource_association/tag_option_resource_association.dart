import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_option_resource_association_args.dart';

/// Manages a Service Catalog Tag Option Resource Association.
///
/// > **Tip:** A "resource" is either a Service Catalog portfolio or product.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.TagOptionResourceAssociation` using the tag option ID and resource ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/tagOptionResourceAssociation:TagOptionResourceAssociation example tag-pjtvyakdlyo3m:prod-dnigbtea24ste
/// ```
class TagOptionResourceAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the resource.
  late final pulumi.Output<String> resourceArn;

  /// Creation time of the resource.
  late final pulumi.Output<String> resourceCreatedTime;

  /// Description of the resource.
  late final pulumi.Output<String> resourceDescription;

  /// Resource identifier.
  late final pulumi.Output<String> resourceId;

  /// Description of the resource.
  late final pulumi.Output<String> resourceName;

  /// Tag Option identifier.
  late final pulumi.Output<String> tagOptionId;

  TagOptionResourceAssociation(
    String name, {
    TagOptionResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/tagOptionResourceAssociation:TagOptionResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.resourceCreatedTime = registerOutput<String>('resourceCreatedTime');
    this.resourceDescription = registerOutput<String>('resourceDescription');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceName = registerOutput<String>('resourceName');
    this.tagOptionId = registerOutput<String>('tagOptionId');
  }
}
