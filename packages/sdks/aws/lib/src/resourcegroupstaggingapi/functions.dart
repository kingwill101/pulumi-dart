import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_required_tags_args.dart';
import 'get_required_tags_result.dart';
import 'get_resources_args.dart';
import 'get_resources_result.dart';

/// Lists the required tags for supported resource types in an AWS account. Required tags are defined through AWS Organizations [tag policies](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html).
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
/// const example = aws.resourcegroupstaggingapi.getRequiredTags({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resourcegroupstaggingapi.get_required_tags()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ResourceGroupsTaggingApi.GetRequiredTags.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroupstaggingapi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegroupstaggingapi.GetRequiredTags(ctx, &resourcegroupstaggingapi.GetRequiredTagsArgs{}, nil)
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
/// data "aws_resourcegroupstaggingapi_getrequiredtags" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourcegroupstaggingapi.ResourcegroupstaggingapiFunctions;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetRequiredTagsArgs;
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
///         final var example = ResourcegroupstaggingapiFunctions.getRequiredTags(GetRequiredTagsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:resourcegroupstaggingapi:getRequiredTags
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcegroupstaggingapi_get_required_tags_get_required_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRequiredTagsResult> getRequiredTags(
  GetRequiredTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourcegroupstaggingapi/getRequiredTags:getRequiredTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRequiredTagsResult.fromMap(result);
}

/// Provides details about resource tagging.
///
/// ## Example Usage
///
/// ### Get All Resource Tag Mappings
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.resourcegroupstaggingapi.getResources({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.resourcegroupstaggingapi.get_resources()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ResourceGroupsTaggingApi.GetResources.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroupstaggingapi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegroupstaggingapi.GetResources(ctx, &resourcegroupstaggingapi.GetResourcesArgs{}, nil)
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
/// data "aws_resourcegroupstaggingapi_getresources" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourcegroupstaggingapi.ResourcegroupstaggingapiFunctions;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetResourcesArgs;
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
///         final var test = ResourcegroupstaggingapiFunctions.getResources(GetResourcesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:resourcegroupstaggingapi:getResources
///       arguments: {}
/// ```
///
///
/// ### Filter By Tag Key and Value
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.resourcegroupstaggingapi.getResources({
///     tagFilters: [{
///         key: "tag-key",
///         values: [
///             "tag-value-1",
///             "tag-value-2",
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.resourcegroupstaggingapi.get_resources(tag_filters=[{
///     "key": "tag-key",
///     "values": [
///         "tag-value-1",
///         "tag-value-2",
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ResourceGroupsTaggingApi.GetResources.Invoke(new()
///     {
///         TagFilters = new[]
///         {
///             new Aws.ResourceGroupsTaggingApi.Inputs.GetResourcesTagFilterInputArgs
///             {
///                 Key = "tag-key",
///                 Values = new[]
///                 {
///                     "tag-value-1",
///                     "tag-value-2",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroupstaggingapi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegroupstaggingapi.GetResources(ctx, &resourcegroupstaggingapi.GetResourcesArgs{
/// 			TagFilters: []resourcegroupstaggingapi.GetResourcesTagFilter{
/// 				{
/// 					Key: "tag-key",
/// 					Values: []string{
/// 						"tag-value-1",
/// 						"tag-value-2",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_resourcegroupstaggingapi_getresources" "test" {
///   tag_filters {
///     key    = "tag-key"
///     values = ["tag-value-1", "tag-value-2"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourcegroupstaggingapi.ResourcegroupstaggingapiFunctions;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetResourcesArgs;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetResourcesTagFilterArgs;
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
///         final var test = ResourcegroupstaggingapiFunctions.getResources(GetResourcesArgs.builder()
///             .tagFilters(GetResourcesTagFilterArgs.builder()
///                 .key("tag-key")
///                 .values(
///                     "tag-value-1",
///                     "tag-value-2")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:resourcegroupstaggingapi:getResources
///       arguments:
///         tagFilters:
///           - key: tag-key
///             values:
///               - tag-value-1
///               - tag-value-2
/// ```
///
///
/// ### Filter By Resource Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.resourcegroupstaggingapi.getResources({
///     resourceTypeFilters: ["ec2:instance"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.resourcegroupstaggingapi.get_resources(resource_type_filters=["ec2:instance"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.ResourceGroupsTaggingApi.GetResources.Invoke(new()
///     {
///         ResourceTypeFilters = new[]
///         {
///             "ec2:instance",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroupstaggingapi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resourcegroupstaggingapi.GetResources(ctx, &resourcegroupstaggingapi.GetResourcesArgs{
/// 			ResourceTypeFilters: []string{
/// 				"ec2:instance",
/// 			},
/// 		}, nil)
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
/// data "aws_resourcegroupstaggingapi_getresources" "test" {
///   resource_type_filters = ["ec2:instance"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resourcegroupstaggingapi.ResourcegroupstaggingapiFunctions;
/// import com.pulumi.aws.resourcegroupstaggingapi.inputs.GetResourcesArgs;
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
///         final var test = ResourcegroupstaggingapiFunctions.getResources(GetResourcesArgs.builder()
///             .resourceTypeFilters("ec2:instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:resourcegroupstaggingapi:getResources
///       arguments:
///         resourceTypeFilters:
///           - ec2:instance
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcegroupstaggingapi_get_resources_get_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcesResult> getResources(
  GetResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:resourcegroupstaggingapi/getResources:getResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcesResult.fromMap(result);
}
