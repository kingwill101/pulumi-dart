import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_content_reference_args.dart';
import 'hub_content_reference_state.dart';
import 'hub_content_reference_timeouts.dart';

/// Manages a SageMaker AI Hub Content Reference resource. A hub content reference copies a model from the SageMaker JumpStart public hub into a private hub so that it is accessible to users in that hub.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Hub("example", {
///     hubName: "example",
///     hubDescription: "example",
/// });
/// const exampleHubContentReference = new aws.sagemaker.HubContentReference("example", {
///     hubName: example.hubName,
///     hubContentName: "example-llama",
///     sagemakerPublicHubContentArn: "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Hub("example",
///     hub_name="example",
///     hub_description="example")
/// example_hub_content_reference = aws.sagemaker.HubContentReference("example",
///     hub_name=example.hub_name,
///     hub_content_name="example-llama",
///     sagemaker_public_hub_content_arn="arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Hub("example", new()
///     {
///         HubName = "example",
///         HubDescription = "example",
///     });
///
///     var exampleHubContentReference = new Aws.Sagemaker.HubContentReference("example", new()
///     {
///         HubName = example.HubName,
///         HubContentName = "example-llama",
///         SagemakerPublicHubContentArn = "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.NewHub(ctx, "example", &sagemaker.HubArgs{
/// 			HubName:        pulumi.String("example"),
/// 			HubDescription: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewHubContentReference(ctx, "example", &sagemaker.HubContentReferenceArgs{
/// 			HubName:                      example.HubName,
/// 			HubContentName:               pulumi.String("example-llama"),
/// 			SagemakerPublicHubContentArn: pulumi.String("arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_hub" "example" {
///   hub_name        = "example"
///   hub_description = "example"
/// }
/// resource "aws_sagemaker_hubcontentreference" "example" {
///   hub_name                         = aws_sagemaker_hub.example.hub_name
///   hub_content_name                 = "example-llama"
///   sagemaker_public_hub_content_arn = "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.Hub;
/// import com.pulumi.aws.sagemaker.HubArgs;
/// import com.pulumi.aws.sagemaker.HubContentReference;
/// import com.pulumi.aws.sagemaker.HubContentReferenceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Hub("example", HubArgs.builder()
///             .hubName("example")
///             .hubDescription("example")
///             .build());
///
///         var exampleHubContentReference = new HubContentReference("exampleHubContentReference", HubContentReferenceArgs.builder()
///             .hubName(example.hubName())
///             .hubContentName("example-llama")
///             .sagemakerPublicHubContentArn("arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Hub
///     properties:
///       hubName: example
///       hubDescription: example
///   exampleHubContentReference:
///     type: aws:sagemaker:HubContentReference
///     name: example
///     properties:
///       hubName: ${example.hubName}
///       hubContentName: example-llama
///       sagemakerPublicHubContentArn: arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct
/// ```
///
///
/// ### With minimum version
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.HubContentReference("example", {
///     hubName: exampleAwsSagemakerHub.hubName,
///     hubContentName: "example-llama",
///     sagemakerPublicHubContentArn: "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct",
///     minVersion: "1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.HubContentReference("example",
///     hub_name=example_aws_sagemaker_hub["hubName"],
///     hub_content_name="example-llama",
///     sagemaker_public_hub_content_arn="arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct",
///     min_version="1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.HubContentReference("example", new()
///     {
///         HubName = exampleAwsSagemakerHub.HubName,
///         HubContentName = "example-llama",
///         SagemakerPublicHubContentArn = "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct",
///         MinVersion = "1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewHubContentReference(ctx, "example", &sagemaker.HubContentReferenceArgs{
/// 			HubName:                      pulumi.Any(exampleAwsSagemakerHub.HubName),
/// 			HubContentName:               pulumi.String("example-llama"),
/// 			SagemakerPublicHubContentArn: pulumi.String("arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct"),
/// 			MinVersion:                   pulumi.String("1.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sagemaker_hubcontentreference" "example" {
///   hub_name                         = exampleAwsSagemakerHub.hubName
///   hub_content_name                 = "example-llama"
///   sagemaker_public_hub_content_arn = "arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct"
///   min_version                      = "1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.HubContentReference;
/// import com.pulumi.aws.sagemaker.HubContentReferenceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new HubContentReference("example", HubContentReferenceArgs.builder()
///             .hubName(exampleAwsSagemakerHub.hubName())
///             .hubContentName("example-llama")
///             .sagemakerPublicHubContentArn("arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct")
///             .minVersion("1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:HubContentReference
///     properties:
///       hubName: ${exampleAwsSagemakerHub.hubName}
///       hubContentName: example-llama
///       sagemakerPublicHubContentArn: arn:aws:sagemaker:us-east-1:aws:hub-content/SageMakerPublicHub/Model/meta-textgeneration-llama-3-1-8b-instruct
///       minVersion: 1.0.0
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `hubContentName` - (String) Name of the hub content reference.
/// * `hubName` - (String) Name of the private SageMaker Hub.
///
/// #### Optional
///
/// * `accountId` - (String) AWS account where this resource is managed.
/// * `region` - (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI Hub Content References using `hub_name,hub_content_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/hubContentReference:HubContentReference example my-hub,my-content-reference
/// ```
class HubContentReference extends pulumi.CustomResource {
  /// ARN of the private SageMaker Hub that contains the content reference.
  late final pulumi.Output<String> hubArn;
  /// ARN of the hub content reference (without version suffix). The minVersion is stripped off from the end of this ARN to make it usable to list tags.
  late final pulumi.Output<String> hubContentArn;
  /// Name of the hub content reference.
  late final pulumi.Output<String> hubContentName;
  /// Status of the hub content reference. Valid values include `Available`, `Importing`, `Deleting`, `ImportFailed`, `DeleteFailed`.
  late final pulumi.Output<String> hubContentStatus;
  /// Version of the hub content reference.
  late final pulumi.Output<String> hubContentVersion;
  /// Name of the private SageMaker Hub to add the content reference to.
  late final pulumi.Output<String> hubName;
  /// Minimum version of the hub content to reference. Use `"1.0.0"` to support all versions. Changing this value to an empty string forces replacement of the resource.
  late final pulumi.Output<String?> minVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the public SageMaker JumpStart hub content to reference. The ARN must not include a version suffix.
  late final pulumi.Output<String> sagemakerPublicHubContentArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<HubContentReferenceTimeouts?> timeouts;

  /// Creates a new [HubContentReference].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HubContentReference]. {@macro pulumi_sagemaker_hub_content_reference_hub_content_reference_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HubContentReference(
    String name, {
    HubContentReferenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hubContentReference:HubContentReference',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    hubArn = registerOutput<String>('hubArn');
    hubContentArn = registerOutput<String>('hubContentArn');
    hubContentName = registerOutput<String>('hubContentName');
    hubContentStatus = registerOutput<String>('hubContentStatus');
    hubContentVersion = registerOutput<String>('hubContentVersion');
    hubName = registerOutput<String>('hubName');
    minVersion = registerOutput<String?>('minVersion');
    region = registerOutput<String>('region');
    sagemakerPublicHubContentArn = registerOutput<String>('sagemakerPublicHubContentArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HubContentReferenceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubContentReferenceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [HubContentReference] resource's state with the given [name] and [id].
  static HubContentReference get(
    String name,
    pulumi.Input<String> id, {
    HubContentReferenceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HubContentReference._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HubContentReference._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/hubContentReference:HubContentReference',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hubArn = registerOutput<String>('hubArn');
    hubContentArn = registerOutput<String>('hubContentArn');
    hubContentName = registerOutput<String>('hubContentName');
    hubContentStatus = registerOutput<String>('hubContentStatus');
    hubContentVersion = registerOutput<String>('hubContentVersion');
    hubName = registerOutput<String>('hubName');
    minVersion = registerOutput<String?>('minVersion');
    region = registerOutput<String>('region');
    sagemakerPublicHubContentArn = registerOutput<String>('sagemakerPublicHubContentArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HubContentReferenceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubContentReferenceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [HubContentReference] resource.
  HubContentReference.reference(String urn)
    : super(
        'aws:sagemaker/hubContentReference:HubContentReference',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    hubArn = registerOutput<String>('hubArn');
    hubContentArn = registerOutput<String>('hubContentArn');
    hubContentName = registerOutput<String>('hubContentName');
    hubContentStatus = registerOutput<String>('hubContentStatus');
    hubContentVersion = registerOutput<String>('hubContentVersion');
    hubName = registerOutput<String>('hubName');
    minVersion = registerOutput<String?>('minVersion');
    region = registerOutput<String>('region');
    sagemakerPublicHubContentArn = registerOutput<String>('sagemakerPublicHubContentArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<HubContentReferenceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HubContentReferenceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
