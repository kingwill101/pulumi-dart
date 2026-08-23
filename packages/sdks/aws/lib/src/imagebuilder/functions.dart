import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_component_args.dart';
import 'get_component_result.dart';
import 'get_components_args.dart';
import 'get_components_result.dart';
import 'get_container_recipe_args.dart';
import 'get_container_recipe_result.dart';
import 'get_container_recipes_args.dart';
import 'get_container_recipes_result.dart';
import 'get_distribution_configuration_args.dart';
import 'get_distribution_configuration_result.dart';
import 'get_distribution_configurations_args.dart';
import 'get_distribution_configurations_result.dart';
import 'get_image_args.dart';
import 'get_image_pipeline_args.dart';
import 'get_image_pipeline_result.dart';
import 'get_image_pipelines_args.dart';
import 'get_image_pipelines_result.dart';
import 'get_image_recipe_args.dart';
import 'get_image_recipe_result.dart';
import 'get_image_recipes_args.dart';
import 'get_image_recipes_result.dart';
import 'get_image_result.dart';
import 'get_infrastructure_configuration_args.dart';
import 'get_infrastructure_configuration_result.dart';
import 'get_infrastructure_configurations_args.dart';
import 'get_infrastructure_configurations_result.dart';

/// Provides details about an Image Builder Component.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getComponent({
///     arn: "arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_component(arn="arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetComponent.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupComponent(ctx, &imagebuilder.LookupComponentArgs{
/// 			Arn: "arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0",
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
/// data "aws_imagebuilder_getcomponent" "example" {
///   arn = "arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetComponentArgs;
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
///         final var example = ImagebuilderFunctions.getComponent(GetComponentArgs.builder()
///             .arn("arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getComponent
///       arguments:
///         arn: arn:aws:imagebuilder:us-west-2:aws:component/amazon-cloudwatch-agent-linux/1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_component_get_component_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentResult> getComponent(
  GetComponentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getComponent:getComponent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Components matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getComponents({
///     owner: "Self",
///     filters: [{
///         name: "platform",
///         values: ["Linux"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_components(owner="Self",
///     filters=[{
///         "name": "platform",
///         "values": ["Linux"],
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
///     var example = Aws.ImageBuilder.GetComponents.Invoke(new()
///     {
///         Owner = "Self",
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetComponentsFilterInputArgs
///             {
///                 Name = "platform",
///                 Values = new[]
///                 {
///                     "Linux",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetComponents(ctx, &imagebuilder.GetComponentsArgs{
/// 			Owner: pulumi.StringRef("Self"),
/// 			Filters: []imagebuilder.GetComponentsFilter{
/// 				{
/// 					Name: "platform",
/// 					Values: []string{
/// 						"Linux",
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
/// data "aws_imagebuilder_getcomponents" "example" {
///   owner = "Self"
///   filters {
///     name   = "platform"
///     values = ["Linux"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetComponentsArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetComponentsFilterArgs;
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
///         final var example = ImagebuilderFunctions.getComponents(GetComponentsArgs.builder()
///             .owner("Self")
///             .filters(GetComponentsFilterArgs.builder()
///                 .name("platform")
///                 .values("Linux")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getComponents
///       arguments:
///         owner: Self
///         filters:
///           - name: platform
///             values:
///               - Linux
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_components_get_components_args_doc}
/// [options] Invoke options controlling this call.
Future<GetComponentsResult> getComponents(
  GetComponentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getComponents:getComponents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComponentsResult.fromMap(result);
}

/// Provides details about an Image builder Container Recipe.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getContainerRecipe({
///     arn: "arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_container_recipe(arn="arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetContainerRecipe.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupContainerRecipe(ctx, &imagebuilder.LookupContainerRecipeArgs{
/// 			Arn: "arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0",
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
/// data "aws_imagebuilder_getcontainerrecipe" "example" {
///   arn = "arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetContainerRecipeArgs;
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
///         final var example = ImagebuilderFunctions.getContainerRecipe(GetContainerRecipeArgs.builder()
///             .arn("arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getContainerRecipe
///       arguments:
///         arn: arn:aws:imagebuilder:us-east-1:aws:container-recipe/example/1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_container_recipe_get_container_recipe_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerRecipeResult> getContainerRecipe(
  GetContainerRecipeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getContainerRecipe:getContainerRecipe',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRecipeResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Container Recipes matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getContainerRecipes({
///     owner: "Self",
///     filters: [{
///         name: "platform",
///         values: ["Linux"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_container_recipes(owner="Self",
///     filters=[{
///         "name": "platform",
///         "values": ["Linux"],
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
///     var example = Aws.ImageBuilder.GetContainerRecipes.Invoke(new()
///     {
///         Owner = "Self",
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetContainerRecipesFilterInputArgs
///             {
///                 Name = "platform",
///                 Values = new[]
///                 {
///                     "Linux",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetContainerRecipes(ctx, &imagebuilder.GetContainerRecipesArgs{
/// 			Owner: pulumi.StringRef("Self"),
/// 			Filters: []imagebuilder.GetContainerRecipesFilter{
/// 				{
/// 					Name: "platform",
/// 					Values: []string{
/// 						"Linux",
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
/// data "aws_imagebuilder_getcontainerrecipes" "example" {
///   owner = "Self"
///   filters {
///     name   = "platform"
///     values = ["Linux"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetContainerRecipesArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetContainerRecipesFilterArgs;
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
///         final var example = ImagebuilderFunctions.getContainerRecipes(GetContainerRecipesArgs.builder()
///             .owner("Self")
///             .filters(GetContainerRecipesFilterArgs.builder()
///                 .name("platform")
///                 .values("Linux")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getContainerRecipes
///       arguments:
///         owner: Self
///         filters:
///           - name: platform
///             values:
///               - Linux
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_container_recipes_get_container_recipes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerRecipesResult> getContainerRecipes(
  GetContainerRecipesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getContainerRecipes:getContainerRecipes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerRecipesResult.fromMap(result);
}

/// Provides details about an Image Builder Distribution Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getDistributionConfiguration({
///     arn: "arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_distribution_configuration(arn="arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetDistributionConfiguration.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupDistributionConfiguration(ctx, &imagebuilder.LookupDistributionConfigurationArgs{
/// 			Arn: "arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example",
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
/// data "aws_imagebuilder_getdistributionconfiguration" "example" {
///   arn = "arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetDistributionConfigurationArgs;
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
///         final var example = ImagebuilderFunctions.getDistributionConfiguration(GetDistributionConfigurationArgs.builder()
///             .arn("arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getDistributionConfiguration
///       arguments:
///         arn: arn:aws:imagebuilder:us-west-2:aws:distribution-configuration/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_distribution_configuration_get_distribution_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDistributionConfigurationResult> getDistributionConfiguration(
  GetDistributionConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfiguration:getDistributionConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Distribution Configurations matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getDistributionConfigurations({
///     filters: [{
///         name: "name",
///         values: ["example"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_distribution_configurations(filters=[{
///     "name": "name",
///     "values": ["example"],
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
///     var example = Aws.ImageBuilder.GetDistributionConfigurations.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetDistributionConfigurationsFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetDistributionConfigurations(ctx, &imagebuilder.GetDistributionConfigurationsArgs{
/// 			Filters: []imagebuilder.GetDistributionConfigurationsFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"example",
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
/// data "aws_imagebuilder_getdistributionconfigurations" "example" {
///   filters {
///     name   = "name"
///     values = ["example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetDistributionConfigurationsArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetDistributionConfigurationsFilterArgs;
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
///         final var example = ImagebuilderFunctions.getDistributionConfigurations(GetDistributionConfigurationsArgs.builder()
///             .filters(GetDistributionConfigurationsFilterArgs.builder()
///                 .name("name")
///                 .values("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getDistributionConfigurations
///       arguments:
///         filters:
///           - name: name
///             values:
///               - example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_distribution_configurations_get_distribution_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDistributionConfigurationsResult> getDistributionConfigurations(
  GetDistributionConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getDistributionConfigurations:getDistributionConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionConfigurationsResult.fromMap(result);
}

/// Provides details about an Image Builder Image.
///
/// ## Example Usage
///
/// ### Latest
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImage({
///     arn: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image(arn="arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetImage.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupImage(ctx, &imagebuilder.LookupImageArgs{
/// 			Arn: "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x",
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
/// data "aws_imagebuilder_getimage" "example" {
///   arn = "arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImageArgs;
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
///         final var example = ImagebuilderFunctions.getImage(GetImageArgs.builder()
///             .arn("arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getImage
///       arguments:
///         arn: arn:aws:imagebuilder:us-west-2:aws:image/amazon-linux-2-x86/x.x.x
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Provides details about an Image Builder Image Pipeline.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImagePipeline({
///     arn: "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_pipeline(arn="arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetImagePipeline.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupImagePipeline(ctx, &imagebuilder.LookupImagePipelineArgs{
/// 			Arn: "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example",
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
/// data "aws_imagebuilder_getimagepipeline" "example" {
///   arn = "arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImagePipelineArgs;
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
///         final var example = ImagebuilderFunctions.getImagePipeline(GetImagePipelineArgs.builder()
///             .arn("arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getImagePipeline
///       arguments:
///         arn: arn:aws:imagebuilder:us-west-2:aws:image-pipeline/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_image_pipeline_get_image_pipeline_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagePipelineResult> getImagePipeline(
  GetImagePipelineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipeline:getImagePipeline',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagePipelineResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Image Pipelines matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImagePipelines({
///     filters: [{
///         name: "name",
///         values: ["example"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_pipelines(filters=[{
///     "name": "name",
///     "values": ["example"],
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
///     var example = Aws.ImageBuilder.GetImagePipelines.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetImagePipelinesFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetImagePipelines(ctx, &imagebuilder.GetImagePipelinesArgs{
/// 			Filters: []imagebuilder.GetImagePipelinesFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"example",
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
/// data "aws_imagebuilder_getimagepipelines" "example" {
///   filters {
///     name   = "name"
///     values = ["example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImagePipelinesArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetImagePipelinesFilterArgs;
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
///         final var example = ImagebuilderFunctions.getImagePipelines(GetImagePipelinesArgs.builder()
///             .filters(GetImagePipelinesFilterArgs.builder()
///                 .name("name")
///                 .values("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getImagePipelines
///       arguments:
///         filters:
///           - name: name
///             values:
///               - example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_image_pipelines_get_image_pipelines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagePipelinesResult> getImagePipelines(
  GetImagePipelinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImagePipelines:getImagePipelines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagePipelinesResult.fromMap(result);
}

/// Provides details about an Image Builder Image Recipe.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImageRecipe({
///     arn: "arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_recipe(arn="arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetImageRecipe.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupImageRecipe(ctx, &imagebuilder.LookupImageRecipeArgs{
/// 			Arn: "arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0",
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
/// data "aws_imagebuilder_getimagerecipe" "example" {
///   arn = "arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImageRecipeArgs;
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
///         final var example = ImagebuilderFunctions.getImageRecipe(GetImageRecipeArgs.builder()
///             .arn("arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getImageRecipe
///       arguments:
///         arn: arn:aws:imagebuilder:us-east-1:aws:image-recipe/example/1.0.0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_image_recipe_get_image_recipe_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageRecipeResult> getImageRecipe(
  GetImageRecipeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImageRecipe:getImageRecipe',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageRecipeResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Image Recipes matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getImageRecipes({
///     owner: "Self",
///     filters: [{
///         name: "platform",
///         values: ["Linux"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_image_recipes(owner="Self",
///     filters=[{
///         "name": "platform",
///         "values": ["Linux"],
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
///     var example = Aws.ImageBuilder.GetImageRecipes.Invoke(new()
///     {
///         Owner = "Self",
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetImageRecipesFilterInputArgs
///             {
///                 Name = "platform",
///                 Values = new[]
///                 {
///                     "Linux",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetImageRecipes(ctx, &imagebuilder.GetImageRecipesArgs{
/// 			Owner: pulumi.StringRef("Self"),
/// 			Filters: []imagebuilder.GetImageRecipesFilter{
/// 				{
/// 					Name: "platform",
/// 					Values: []string{
/// 						"Linux",
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
/// data "aws_imagebuilder_getimagerecipes" "example" {
///   owner = "Self"
///   filters {
///     name   = "platform"
///     values = ["Linux"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetImageRecipesArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetImageRecipesFilterArgs;
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
///         final var example = ImagebuilderFunctions.getImageRecipes(GetImageRecipesArgs.builder()
///             .owner("Self")
///             .filters(GetImageRecipesFilterArgs.builder()
///                 .name("platform")
///                 .values("Linux")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getImageRecipes
///       arguments:
///         owner: Self
///         filters:
///           - name: platform
///             values:
///               - Linux
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_image_recipes_get_image_recipes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageRecipesResult> getImageRecipes(
  GetImageRecipesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getImageRecipes:getImageRecipes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageRecipesResult.fromMap(result);
}

/// Provides details about an Image Builder Infrastructure Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getInfrastructureConfiguration({
///     arn: "arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_infrastructure_configuration(arn="arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.ImageBuilder.GetInfrastructureConfiguration.Invoke(new()
///     {
///         Arn = "arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.LookupInfrastructureConfiguration(ctx, &imagebuilder.LookupInfrastructureConfigurationArgs{
/// 			Arn: "arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example",
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
/// data "aws_imagebuilder_getinfrastructureconfiguration" "example" {
///   arn = "arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetInfrastructureConfigurationArgs;
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
///         final var example = ImagebuilderFunctions.getInfrastructureConfiguration(GetInfrastructureConfigurationArgs.builder()
///             .arn("arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getInfrastructureConfiguration
///       arguments:
///         arn: arn:aws:imagebuilder:us-west-2:aws:infrastructure-configuration/example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_infrastructure_configuration_get_infrastructure_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInfrastructureConfigurationResult> getInfrastructureConfiguration(
  GetInfrastructureConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getInfrastructureConfiguration:getInfrastructureConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInfrastructureConfigurationResult.fromMap(result);
}

/// Use this data source to get the ARNs and names of Image Builder Infrastructure Configurations matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.imagebuilder.getInfrastructureConfigurations({
///     filters: [{
///         name: "name",
///         values: ["example"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.get_infrastructure_configurations(filters=[{
///     "name": "name",
///     "values": ["example"],
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
///     var example = Aws.ImageBuilder.GetInfrastructureConfigurations.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.ImageBuilder.Inputs.GetInfrastructureConfigurationsFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.GetInfrastructureConfigurations(ctx, &imagebuilder.GetInfrastructureConfigurationsArgs{
/// 			Filters: []imagebuilder.GetInfrastructureConfigurationsFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"example",
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
/// data "aws_imagebuilder_getinfrastructureconfigurations" "example" {
///   filters {
///     name   = "name"
///     values = ["example"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.imagebuilder.ImagebuilderFunctions;
/// import com.pulumi.aws.imagebuilder.inputs.GetInfrastructureConfigurationsArgs;
/// import com.pulumi.aws.imagebuilder.inputs.GetInfrastructureConfigurationsFilterArgs;
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
///         final var example = ImagebuilderFunctions.getInfrastructureConfigurations(GetInfrastructureConfigurationsArgs.builder()
///             .filters(GetInfrastructureConfigurationsFilterArgs.builder()
///                 .name("name")
///                 .values("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:imagebuilder:getInfrastructureConfigurations
///       arguments:
///         filters:
///           - name: name
///             values:
///               - example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_imagebuilder_get_infrastructure_configurations_get_infrastructure_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInfrastructureConfigurationsResult> getInfrastructureConfigurations(
  GetInfrastructureConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:imagebuilder/getInfrastructureConfigurations:getInfrastructureConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInfrastructureConfigurationsResult.fromMap(result);
}
