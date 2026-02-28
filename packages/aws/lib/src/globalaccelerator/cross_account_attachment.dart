import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_account_attachment_args.dart';
import 'cross_account_attachment_resource.dart';

/// Resource for managing an AWS Global Accelerator Cross Account Attachment.
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
/// const example = new aws.globalaccelerator.CrossAccountAttachment("example", {name: "example-cross-account-attachment"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CrossAccountAttachment("example", name="example-cross-account-attachment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GlobalAccelerator.CrossAccountAttachment("example", new()
///     {
///         Name = "example-cross-account-attachment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := globalaccelerator.NewCrossAccountAttachment(ctx, "example", &globalaccelerator.CrossAccountAttachmentArgs{
/// 			Name: pulumi.String("example-cross-account-attachment"),
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
/// import com.pulumi.aws.globalaccelerator.CrossAccountAttachment;
/// import com.pulumi.aws.globalaccelerator.CrossAccountAttachmentArgs;
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
///         var example = new CrossAccountAttachment("example", CrossAccountAttachmentArgs.builder()
///             .name("example-cross-account-attachment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:CrossAccountAttachment
///     properties:
///       name: example-cross-account-attachment
/// ```
///
///
/// ### Usage with Optional Arguments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.globalaccelerator.CrossAccountAttachment("example", {
///     name: "example-cross-account-attachment",
///     principals: ["123456789012"],
///     resources: [{
///         endpointId: "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
///         region: "us-west-2",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.globalaccelerator.CrossAccountAttachment("example",
///     name="example-cross-account-attachment",
///     principals=["123456789012"],
///     resources=[{
///         "endpoint_id": "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
///         "region": "us-west-2",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GlobalAccelerator.CrossAccountAttachment("example", new()
///     {
///         Name = "example-cross-account-attachment",
///         Principals = new[]
///         {
///             "123456789012",
///         },
///         Resources = new[]
///         {
///             new Aws.GlobalAccelerator.Inputs.CrossAccountAttachmentResourceArgs
///             {
///                 EndpointId = "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188",
///                 Region = "us-west-2",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/globalaccelerator"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := globalaccelerator.NewCrossAccountAttachment(ctx, "example", &globalaccelerator.CrossAccountAttachmentArgs{
/// 			Name: pulumi.String("example-cross-account-attachment"),
/// 			Principals: pulumi.StringArray{
/// 				pulumi.String("123456789012"),
/// 			},
/// 			Resources: globalaccelerator.CrossAccountAttachmentResourceArray{
/// 				&globalaccelerator.CrossAccountAttachmentResourceArgs{
/// 					EndpointId: pulumi.String("arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188"),
/// 					Region:     pulumi.String("us-west-2"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.globalaccelerator.CrossAccountAttachment;
/// import com.pulumi.aws.globalaccelerator.CrossAccountAttachmentArgs;
/// import com.pulumi.aws.globalaccelerator.inputs.CrossAccountAttachmentResourceArgs;
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
///         var example = new CrossAccountAttachment("example", CrossAccountAttachmentArgs.builder()
///             .name("example-cross-account-attachment")
///             .principals("123456789012")
///             .resources(CrossAccountAttachmentResourceArgs.builder()
///                 .endpointId("arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188")
///                 .region("us-west-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:globalaccelerator:CrossAccountAttachment
///     properties:
///       name: example-cross-account-attachment
///       principals:
///         - '123456789012'
///       resources:
///         - endpointId: arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/50dc6c495c0c9188
///           region: us-west-2
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator cross-account attachment.
///
///
/// Using `pulumi import`, import Global Accelerator Cross Account Attachment using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/crossAccountAttachment:CrossAccountAttachment example arn:aws:globalaccelerator::012345678910:attachment/01234567-abcd-8910-efgh-123456789012
/// ```
class CrossAccountAttachment extends pulumi.CustomResource {
  /// ARN of the Cross Account Attachment.
  late final pulumi.Output<String> arn;
  /// Creation Time when the Cross Account Attachment.
  late final pulumi.Output<String> createdTime;
  /// Last modified time of the Cross Account Attachment.
  late final pulumi.Output<String> lastModifiedTime;
  /// Name of the Cross Account Attachment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// List of AWS account IDs that are allowed to associate resources with the accelerator.
  late final pulumi.Output<List<String>?> principals;
  /// List of resources to be associated with the accelerator.
  late final pulumi.Output<List<CrossAccountAttachmentResource>?> resources;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CrossAccountAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CrossAccountAttachment]. {@macro pulumi_globalaccelerator_cross_account_attachment_cross_account_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CrossAccountAttachment(
    String name, {
    CrossAccountAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/crossAccountAttachment:CrossAccountAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.principals = registerOutput<List<String>?>('principals');
    this.resources = registerOutput<List<CrossAccountAttachmentResource>?>('resources');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
