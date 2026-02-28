import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authorization_token_args.dart';
import 'get_authorization_token_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_lifecycle_policy_document_args.dart';
import 'get_lifecycle_policy_document_result.dart';
import 'get_pull_through_cache_rule_args.dart';
import 'get_pull_through_cache_rule_result.dart';
import 'get_repositories_args.dart';
import 'get_repositories_result.dart';
import 'get_repository_args.dart';
import 'get_repository_creation_template_args.dart';
import 'get_repository_creation_template_result.dart';
import 'get_repository_result.dart';

/// The ECR Authorization Token data source allows the authorization token, proxy endpoint, token expiration date, user name and password to be retrieved for an ECR repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const token = aws.ecr.getAuthorizationToken({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// token = aws.ecr.get_authorization_token()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var token = Aws.Ecr.GetAuthorizationToken.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.GetAuthorizationToken(ctx, &ecr.GetAuthorizationTokenArgs{}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetAuthorizationTokenArgs;
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
///         final var token = EcrFunctions.getAuthorizationToken(GetAuthorizationTokenArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   token:
///     fn::invoke:
///       function: aws:ecr:getAuthorizationToken
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_authorization_token_get_authorization_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizationTokenResult> getAuthorizationToken(
  GetAuthorizationTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getAuthorizationToken:getAuthorizationToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationTokenResult.fromMap(result);
}

/// The ECR Image data source allows the details of an image with a particular tag or digest to be retrieved.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const serviceImage = aws.ecr.getImage({
///     repositoryName: "my/service",
///     imageTag: "latest",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// service_image = aws.ecr.get_image(repository_name="my/service",
///     image_tag="latest")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceImage = Aws.Ecr.GetImage.Invoke(new()
///     {
///         RepositoryName = "my/service",
///         ImageTag = "latest",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.GetImage(ctx, &ecr.GetImageArgs{
/// 			RepositoryName: "my/service",
/// 			ImageTag:       pulumi.StringRef("latest"),
/// 		}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetImageArgs;
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
///         final var serviceImage = EcrFunctions.getImage(GetImageArgs.builder()
///             .repositoryName("my/service")
///             .imageTag("latest")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   serviceImage:
///     fn::invoke:
///       function: aws:ecr:getImage
///       arguments:
///         repositoryName: my/service
///         imageTag: latest
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// The ECR Images data source allows the list of images in a specified repository to be retrieved.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getImages({
///     repositoryName: "my-repository",
/// });
/// export const imageDigests = example.then(example => .filter(img => img.imageDigest != null).map(img => (img.imageDigest)));
/// export const imageTags = example.then(example => .filter(img => img.imageTag != null).map(img => (img.imageTag)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_images(repository_name="my-repository")
/// pulumi.export("imageDigests", [img.image_digest for img in example.image_ids if img.image_digest != None])
/// pulumi.export("imageTags", [img.image_tag for img in example.image_ids if img.image_tag != None])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecr.GetImages.Invoke(new()
///     {
///         RepositoryName = "my-repository",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageDigests"] = .Where(img => img.ImageDigest != null).Select(img =>
///         {
///             return img.ImageDigest;
///         }).ToList(),
///         ["imageTags"] = .Where(img => img.ImageTag != null).Select(img =>
///         {
///             return img.ImageTag;
///         }).ToList(),
///     };
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Generates an ECR lifecycle policy document in JSON format. Can be used with resources such as the `aws.ecr.LifecyclePolicy` resource.
///
/// > For more information about building AWS ECR lifecycle policy documents, see the [AWS ECR Lifecycle Policy Document Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getLifecyclePolicyDocument({
///     rules: [{
///         priority: 1,
///         description: "This is a test.",
///         selection: {
///             tagStatus: "tagged",
///             tagPrefixLists: ["prod"],
///             countType: "imageCountMoreThan",
///             countNumber: 100,
///         },
///     }],
/// });
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
///     repository: exampleAwsEcrRepository.name,
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_lifecycle_policy_document(rules=[{
///     "priority": 1,
///     "description": "This is a test.",
///     "selection": {
///         "tag_status": "tagged",
///         "tag_prefix_lists": ["prod"],
///         "count_type": "imageCountMoreThan",
///         "count_number": 100,
///     },
/// }])
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
///     repository=example_aws_ecr_repository["name"],
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecr.GetLifecyclePolicyDocument.Invoke(new()
///     {
///         Rules = new[]
///         {
///             new Aws.Ecr.Inputs.GetLifecyclePolicyDocumentRuleInputArgs
///             {
///                 Priority = 1,
///                 Description = "This is a test.",
///                 Selection = new Aws.Ecr.Inputs.GetLifecyclePolicyDocumentRuleSelectionInputArgs
///                 {
///                     TagStatus = "tagged",
///                     TagPrefixLists = new[]
///                     {
///                         "prod",
///                     },
///                     CountType = "imageCountMoreThan",
///                     CountNumber = 100,
///                 },
///             },
///         },
///     });
///
///     var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
///     {
///         Repository = exampleAwsEcrRepository.Name,
///         Policy = example.Apply(getLifecyclePolicyDocumentResult => getLifecyclePolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ecr.GetLifecyclePolicyDocument(ctx, &ecr.GetLifecyclePolicyDocumentArgs{
/// 			Rules: []ecr.GetLifecyclePolicyDocumentRule{
/// 				{
/// 					Priority:    1,
/// 					Description: pulumi.StringRef("This is a test."),
/// 					Selection: {
/// 						TagStatus: "tagged",
/// 						TagPrefixLists: []string{
/// 							"prod",
/// 						},
/// 						CountType:   "imageCountMoreThan",
/// 						CountNumber: 100,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// 			Repository: pulumi.Any(exampleAwsEcrRepository.Name),
/// 			Policy:     pulumi.String(example.Json),
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetLifecyclePolicyDocumentArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
///         final var example = EcrFunctions.getLifecyclePolicyDocument(GetLifecyclePolicyDocumentArgs.builder()
///             .rules(GetLifecyclePolicyDocumentRuleArgs.builder()
///                 .priority(1)
///                 .description("This is a test.")
///                 .selection(GetLifecyclePolicyDocumentRuleSelectionArgs.builder()
///                     .tagStatus("tagged")
///                     .tagPrefixLists("prod")
///                     .countType("imageCountMoreThan")
///                     .countNumber(100)
///                     .build())
///                 .build())
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .repository(exampleAwsEcrRepository.name())
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLifecyclePolicy:
///     type: aws:ecr:LifecyclePolicy
///     name: example
///     properties:
///       repository: ${exampleAwsEcrRepository.name}
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ecr:getLifecyclePolicyDocument
///       arguments:
///         rules:
///           - priority: 1
///             description: This is a test.
///             selection:
///               tagStatus: tagged
///               tagPrefixLists:
///                 - prod
///               countType: imageCountMoreThan
///               countNumber: 100
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_lifecycle_policy_document_get_lifecycle_policy_document_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLifecyclePolicyDocumentResult> getLifecyclePolicyDocument(
  GetLifecyclePolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getLifecyclePolicyDocument:getLifecyclePolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLifecyclePolicyDocumentResult.fromMap(result);
}

/// The ECR Pull Through Cache Rule data source allows the upstream registry URL and registry ID to be retrieved for a Pull Through Cache Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ecrPublic = aws.ecr.getPullThroughCacheRule({
///     ecrRepositoryPrefix: "ecr-public",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ecr_public = aws.ecr.get_pull_through_cache_rule(ecr_repository_prefix="ecr-public")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ecrPublic = Aws.Ecr.GetPullThroughCacheRule.Invoke(new()
///     {
///         EcrRepositoryPrefix = "ecr-public",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.LookupPullThroughCacheRule(ctx, &ecr.LookupPullThroughCacheRuleArgs{
/// 			EcrRepositoryPrefix: "ecr-public",
/// 		}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetPullThroughCacheRuleArgs;
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
///         final var ecrPublic = EcrFunctions.getPullThroughCacheRule(GetPullThroughCacheRuleArgs.builder()
///             .ecrRepositoryPrefix("ecr-public")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ecrPublic:
///     fn::invoke:
///       function: aws:ecr:getPullThroughCacheRule
///       arguments:
///         ecrRepositoryPrefix: ecr-public
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_pull_through_cache_rule_get_pull_through_cache_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPullThroughCacheRuleResult> getPullThroughCacheRule(
  GetPullThroughCacheRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getPullThroughCacheRule:getPullThroughCacheRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPullThroughCacheRuleResult.fromMap(result);
}

/// Data source for providing information on AWS ECR (Elastic Container Registry) Repositories.
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
/// const example = aws.ecr.getRepositories({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_repositories()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecr.GetRepositories.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.GetRepositories(ctx, &ecr.GetRepositoriesArgs{}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetRepositoriesArgs;
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
///         final var example = EcrFunctions.getRepositories(GetRepositoriesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ecr:getRepositories
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_repositories_get_repositories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoriesResult> getRepositories(
  GetRepositoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositories:getRepositories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoriesResult.fromMap(result);
}

/// The ECR Repository data source allows the ARN, Repository URI and Registry ID to be retrieved for an ECR repository.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const service = aws.ecr.getRepository({
///     name: "ecr-repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// service = aws.ecr.get_repository(name="ecr-repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = Aws.Ecr.GetRepository.Invoke(new()
///     {
///         Name = "ecr-repository",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.LookupRepository(ctx, &ecr.LookupRepositoryArgs{
/// 			Name: "ecr-repository",
/// 		}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetRepositoryArgs;
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
///         final var service = EcrFunctions.getRepository(GetRepositoryArgs.builder()
///             .name("ecr-repository")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   service:
///     fn::invoke:
///       function: aws:ecr:getRepository
///       arguments:
///         name: ecr-repository
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_repository_get_repository_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}

/// The ECR Repository Creation Template data source allows the template details to be retrieved for a Repository Creation Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getRepositoryCreationTemplate({
///     prefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_repository_creation_template(prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ecr.GetRepositoryCreationTemplate.Invoke(new()
///     {
///         Prefix = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecr.LookupRepositoryCreationTemplate(ctx, &ecr.LookupRepositoryCreationTemplateArgs{
/// 			Prefix: "example",
/// 		}, nil)
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetRepositoryCreationTemplateArgs;
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
///         final var example = EcrFunctions.getRepositoryCreationTemplate(GetRepositoryCreationTemplateArgs.builder()
///             .prefix("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ecr:getRepositoryCreationTemplate
///       arguments:
///         prefix: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecr_get_repository_creation_template_get_repository_creation_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRepositoryCreationTemplateResult> getRepositoryCreationTemplate(
  GetRepositoryCreationTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getRepositoryCreationTemplate:getRepositoryCreationTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryCreationTemplateResult.fromMap(result);
}
