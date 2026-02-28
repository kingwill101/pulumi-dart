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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.TagOptionResourceAssociation("example", {
///     resourceId: "prod-dnigbtea24ste",
///     tagOptionId: "tag-pjtvyakdlyo3m",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.TagOptionResourceAssociation("example",
///     resource_id="prod-dnigbtea24ste",
///     tag_option_id="tag-pjtvyakdlyo3m")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.TagOptionResourceAssociation("example", new()
///     {
///         ResourceId = "prod-dnigbtea24ste",
///         TagOptionId = "tag-pjtvyakdlyo3m",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewTagOptionResourceAssociation(ctx, "example", &servicecatalog.TagOptionResourceAssociationArgs{
/// 			ResourceId:  pulumi.String("prod-dnigbtea24ste"),
/// 			TagOptionId: pulumi.String("tag-pjtvyakdlyo3m"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.TagOptionResourceAssociation;
/// import com.pulumi.aws.servicecatalog.TagOptionResourceAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new TagOptionResourceAssociation("example", TagOptionResourceAssociationArgs.builder()
///             .resourceId("prod-dnigbtea24ste")
///             .tagOptionId("tag-pjtvyakdlyo3m")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:TagOptionResourceAssociation
///     properties:
///       resourceId: prod-dnigbtea24ste
///       tagOptionId: tag-pjtvyakdlyo3m
/// ```
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

  /// Creates a new [TagOptionResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagOptionResourceAssociation]. {@macro pulumi_servicecatalog_tag_option_resource_association_tag_option_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
