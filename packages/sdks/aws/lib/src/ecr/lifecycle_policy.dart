import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_args.dart';
import 'lifecycle_policy_state.dart';

/// Manages an ECR repository lifecycle policy.
///
/// &gt; **NOTE:** Only one `aws.ecr.LifecyclePolicy` resource can be used with the same ECR repository. To apply multiple rules, they must be combined in the `policy` JSON.
///
/// &gt; **NOTE:** The AWS ECR API seems to reorder rules based on `rulePriority`. If you define multiple rules that are not sorted in ascending `rulePriority` order in the this provider code, the resource will be flagged for recreation every deployment.
///
/// ## Example Usage
///
/// ### Policy on Untagged Images
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
///     repository: example.name,
///     policy: `{
///   \\"rules\\": [
///     {
///       \\"rulePriority\\": 1,
///       \\"description\\": \\"Expire images older than 14 days\\",
///       \\"selection\\": {
///         \\"tagStatus\\": \\"untagged\\",
///         \\"countType\\": \\"sinceImagePushed\\",
///         \\"countUnit\\": \\"days\\",
///         \\"countNumber\\": 14
///       },
///       \\"action\\": {
///         \\"type\\": \\"expire\\"
///       }
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
///     repository=example.name,
///     policy="""{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecr.Repository("example", new()
///     {
///         Name = "example-repo",
///     });
///
///     var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
///     {
///         Repository = example.Name,
///         Policy = @"{
///   \""rules\"": [
///     {
///       \""rulePriority\"": 1,
///       \""description\"": \""Expire images older than 14 days\"",
///       \""selection\"": {
///         \""tagStatus\"": \""untagged\"",
///         \""countType\"": \""sinceImagePushed\"",
///         \""countUnit\"": \""days\"",
///         \""countNumber\"": 14
///       },
///       \""action\"": {
///         \""type\"": \""expire\""
///       }
///     }
///   ]
/// }
/// ",
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
/// 		example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// 			Name: pulumi.String("example-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// 			Repository: example.Name,
/// 			Policy: pulumi.Any(`{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// `),
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
/// resource "aws_ecr_repository" "example" {
///   name = "example-repo"
/// }
/// resource "aws_ecr_lifecyclepolicy" "example" {
///   repository = aws_ecr_repository.example.name
///   policy     = "{\n  \\\"rules\\\": [\n    {\n      \\\"rulePriority\\\": 1,\n      \\\"description\\\": \\\"Expire images older than 14 days\\\",\n      \\\"selection\\\": {\n        \\\"tagStatus\\\": \\\"untagged\\\",\n        \\\"countType\\\": \\\"sinceImagePushed\\\",\n        \\\"countUnit\\\": \\\"days\\\",\n        \\\"countNumber\\\": 14\n      },\n      \\\"action\\\": {\n        \\\"type\\\": \\\"expire\\\"\n      }\n    }\n  ]\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
///         var example = new Repository("example", RepositoryArgs.builder()
///             .name("example-repo")
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .repository(example.name())
///             .policy("""
/// {
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Expire images older than 14 days\",
///       \"selection\": {
///         \"tagStatus\": \"untagged\",
///         \"countType\": \"sinceImagePushed\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 14
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecr:Repository
///     properties:
///       name: example-repo
///   exampleLifecyclePolicy:
///     type: aws:ecr:LifecyclePolicy
///     name: example
///     properties:
///       repository: ${example.name}
///       policy: |
///         {
///           \"rules\": [
///             {
///               \"rulePriority\": 1,
///               \"description\": \"Expire images older than 14 days\",
///               \"selection\": {
///                 \"tagStatus\": \"untagged\",
///                 \"countType\": \"sinceImagePushed\",
///                 \"countUnit\": \"days\",
///                 \"countNumber\": 14
///               },
///               \"action\": {
///                 \"type\": \"expire\"
///               }
///             }
///           ]
///         }
/// ```
///
///
/// ### Policy on Tagged Images
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
///     repository: example.name,
///     policy: `{
///   \\"rules\\": [
///     {
///       \\"rulePriority\\": 1,
///       \\"description\\": \\"Keep last 30 images\\",
///       \\"selection\\": {
///         \\"tagStatus\\": \\"tagged\\",
///         \\"tagPrefixList\\": [\\"v\\"],
///         \\"countType\\": \\"imageCountMoreThan\\",
///         \\"countNumber\\": 30
///       },
///       \\"action\\": {
///         \\"type\\": \\"expire\\"
///       }
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
///     repository=example.name,
///     policy="""{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Keep last 30 images\",
///       \"selection\": {
///         \"tagStatus\": \"tagged\",
///         \"tagPrefixList\": [\"v\"],
///         \"countType\": \"imageCountMoreThan\",
///         \"countNumber\": 30
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecr.Repository("example", new()
///     {
///         Name = "example-repo",
///     });
///
///     var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
///     {
///         Repository = example.Name,
///         Policy = @"{
///   \""rules\"": [
///     {
///       \""rulePriority\"": 1,
///       \""description\"": \""Keep last 30 images\"",
///       \""selection\"": {
///         \""tagStatus\"": \""tagged\"",
///         \""tagPrefixList\"": [\""v\""],
///         \""countType\"": \""imageCountMoreThan\"",
///         \""countNumber\"": 30
///       },
///       \""action\"": {
///         \""type\"": \""expire\""
///       }
///     }
///   ]
/// }
/// ",
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
/// 		example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// 			Name: pulumi.String("example-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// 			Repository: example.Name,
/// 			Policy: pulumi.Any(`{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Keep last 30 images\",
///       \"selection\": {
///         \"tagStatus\": \"tagged\",
///         \"tagPrefixList\": [\"v\"],
///         \"countType\": \"imageCountMoreThan\",
///         \"countNumber\": 30
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// `),
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
/// resource "aws_ecr_repository" "example" {
///   name = "example-repo"
/// }
/// resource "aws_ecr_lifecyclepolicy" "example" {
///   repository = aws_ecr_repository.example.name
///   policy     = "{\n  \\\"rules\\\": [\n    {\n      \\\"rulePriority\\\": 1,\n      \\\"description\\\": \\\"Keep last 30 images\\\",\n      \\\"selection\\\": {\n        \\\"tagStatus\\\": \\\"tagged\\\",\n        \\\"tagPrefixList\\\": [\\\"v\\\"],\n        \\\"countType\\\": \\\"imageCountMoreThan\\\",\n        \\\"countNumber\\\": 30\n      },\n      \\\"action\\\": {\n        \\\"type\\\": \\\"expire\\\"\n      }\n    }\n  ]\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
///         var example = new Repository("example", RepositoryArgs.builder()
///             .name("example-repo")
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .repository(example.name())
///             .policy("""
/// {
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Keep last 30 images\",
///       \"selection\": {
///         \"tagStatus\": \"tagged\",
///         \"tagPrefixList\": [\"v\"],
///         \"countType\": \"imageCountMoreThan\",
///         \"countNumber\": 30
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecr:Repository
///     properties:
///       name: example-repo
///   exampleLifecyclePolicy:
///     type: aws:ecr:LifecyclePolicy
///     name: example
///     properties:
///       repository: ${example.name}
///       policy: |
///         {
///           \"rules\": [
///             {
///               \"rulePriority\": 1,
///               \"description\": \"Keep last 30 images\",
///               \"selection\": {
///                 \"tagStatus\": \"tagged\",
///                 \"tagPrefixList\": [\"v\"],
///                 \"countType\": \"imageCountMoreThan\",
///                 \"countNumber\": 30
///               },
///               \"action\": {
///                 \"type\": \"expire\"
///               }
///             }
///           ]
///         }
/// ```
///
///
/// ### Policy to Archive and Delete
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ecr.Repository("example", {name: "example-repo"});
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
///     repository: example.name,
///     policy: `{
///   \\"rules\\": [
///     {
///       \\"rulePriority\\": 1,
///       \\"description\\": \\"Archive images not pulled in 90 days\\",
///       \\"selection\\": {
///         \\"tagStatus\\": \\"any\\",
///         \\"countType\\": \\"sinceImagePulled\\",
///         \\"countUnit\\": \\"days\\",
///         \\"countNumber\\": 90
///       },
///       \\"action\\": {
///         \\"type\\": \\"transition\\",
///         \\"targetStorageClass\\": \\"archive\\"
///       }
///     },
///     {
///       \\"rulePriority\\": 2,
///       \\"description\\": \\"Delete images archived for more than 365 days\\",
///       \\"selection\\": {
///         \\"tagStatus\\": \\"any\\",
///         \\"storageClass\\": \\"archive\\",
///         \\"countType\\": \\"sinceImageTransitioned\\",
///         \\"countUnit\\": \\"days\\",
///         \\"countNumber\\": 365
///       },
///       \\"action\\": {
///         \\"type\\": \\"expire\\"
///       }
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.Repository("example", name="example-repo")
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
///     repository=example.name,
///     policy="""{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Archive images not pulled in 90 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"countType\": \"sinceImagePulled\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 90
///       },
///       \"action\": {
///         \"type\": \"transition\",
///         \"targetStorageClass\": \"archive\"
///       }
///     },
///     {
///       \"rulePriority\": 2,
///       \"description\": \"Delete images archived for more than 365 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"storageClass\": \"archive\",
///         \"countType\": \"sinceImageTransitioned\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 365
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ecr.Repository("example", new()
///     {
///         Name = "example-repo",
///     });
///
///     var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
///     {
///         Repository = example.Name,
///         Policy = @"{
///   \""rules\"": [
///     {
///       \""rulePriority\"": 1,
///       \""description\"": \""Archive images not pulled in 90 days\"",
///       \""selection\"": {
///         \""tagStatus\"": \""any\"",
///         \""countType\"": \""sinceImagePulled\"",
///         \""countUnit\"": \""days\"",
///         \""countNumber\"": 90
///       },
///       \""action\"": {
///         \""type\"": \""transition\"",
///         \""targetStorageClass\"": \""archive\""
///       }
///     },
///     {
///       \""rulePriority\"": 2,
///       \""description\"": \""Delete images archived for more than 365 days\"",
///       \""selection\"": {
///         \""tagStatus\"": \""any\"",
///         \""storageClass\"": \""archive\"",
///         \""countType\"": \""sinceImageTransitioned\"",
///         \""countUnit\"": \""days\"",
///         \""countNumber\"": 365
///       },
///       \""action\"": {
///         \""type\"": \""expire\""
///       }
///     }
///   ]
/// }
/// ",
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
/// 		example, err := ecr.NewRepository(ctx, "example", &ecr.RepositoryArgs{
/// 			Name: pulumi.String("example-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// 			Repository: example.Name,
/// 			Policy: pulumi.Any(`{
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Archive images not pulled in 90 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"countType\": \"sinceImagePulled\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 90
///       },
///       \"action\": {
///         \"type\": \"transition\",
///         \"targetStorageClass\": \"archive\"
///       }
///     },
///     {
///       \"rulePriority\": 2,
///       \"description\": \"Delete images archived for more than 365 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"storageClass\": \"archive\",
///         \"countType\": \"sinceImageTransitioned\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 365
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
/// `),
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
/// resource "aws_ecr_repository" "example" {
///   name = "example-repo"
/// }
/// resource "aws_ecr_lifecyclepolicy" "example" {
///   repository = aws_ecr_repository.example.name
///   policy     = "{\n  \\\"rules\\\": [\n    {\n      \\\"rulePriority\\\": 1,\n      \\\"description\\\": \\\"Archive images not pulled in 90 days\\\",\n      \\\"selection\\\": {\n        \\\"tagStatus\\\": \\\"any\\\",\n        \\\"countType\\\": \\\"sinceImagePulled\\\",\n        \\\"countUnit\\\": \\\"days\\\",\n        \\\"countNumber\\\": 90\n      },\n      \\\"action\\\": {\n        \\\"type\\\": \\\"transition\\\",\n        \\\"targetStorageClass\\\": \\\"archive\\\"\n      }\n    },\n    {\n      \\\"rulePriority\\\": 2,\n      \\\"description\\\": \\\"Delete images archived for more than 365 days\\\",\n      \\\"selection\\\": {\n        \\\"tagStatus\\\": \\\"any\\\",\n        \\\"storageClass\\\": \\\"archive\\\",\n        \\\"countType\\\": \\\"sinceImageTransitioned\\\",\n        \\\"countUnit\\\": \\\"days\\\",\n        \\\"countNumber\\\": 365\n      },\n      \\\"action\\\": {\n        \\\"type\\\": \\\"expire\\\"\n      }\n    }\n  ]\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ecr.Repository;
/// import com.pulumi.aws.ecr.RepositoryArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
///         var example = new Repository("example", RepositoryArgs.builder()
///             .name("example-repo")
///             .build());
///
///         var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
///             .repository(example.name())
///             .policy("""
/// {
///   \"rules\": [
///     {
///       \"rulePriority\": 1,
///       \"description\": \"Archive images not pulled in 90 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"countType\": \"sinceImagePulled\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 90
///       },
///       \"action\": {
///         \"type\": \"transition\",
///         \"targetStorageClass\": \"archive\"
///       }
///     },
///     {
///       \"rulePriority\": 2,
///       \"description\": \"Delete images archived for more than 365 days\",
///       \"selection\": {
///         \"tagStatus\": \"any\",
///         \"storageClass\": \"archive\",
///         \"countType\": \"sinceImageTransitioned\",
///         \"countUnit\": \"days\",
///         \"countNumber\": 365
///       },
///       \"action\": {
///         \"type\": \"expire\"
///       }
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ecr:Repository
///     properties:
///       name: example-repo
///   exampleLifecyclePolicy:
///     type: aws:ecr:LifecyclePolicy
///     name: example
///     properties:
///       repository: ${example.name}
///       policy: |
///         {
///           \"rules\": [
///             {
///               \"rulePriority\": 1,
///               \"description\": \"Archive images not pulled in 90 days\",
///               \"selection\": {
///                 \"tagStatus\": \"any\",
///                 \"countType\": \"sinceImagePulled\",
///                 \"countUnit\": \"days\",
///                 \"countNumber\": 90
///               },
///               \"action\": {
///                 \"type\": \"transition\",
///                 \"targetStorageClass\": \"archive\"
///               }
///             },
///             {
///               \"rulePriority\": 2,
///               \"description\": \"Delete images archived for more than 365 days\",
///               \"selection\": {
///                 \"tagStatus\": \"any\",
///                 \"storageClass\": \"archive\",
///                 \"countType\": \"sinceImageTransitioned\",
///                 \"countUnit\": \"days\",
///                 \"countNumber\": 365
///               },
///               \"action\": {
///                 \"type\": \"expire\"
///               }
///             }
///           ]
///         }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `repository` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Lifecycle Policy using the name of the repository. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/lifecyclePolicy:LifecyclePolicy example tf-example
/// ```
class LifecyclePolicy extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `policy` argument.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;
  /// Name of the repository to apply the policy.
  late final pulumi.Output<String> repository;

  /// Creates a new [LifecyclePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecyclePolicy]. {@macro pulumi_ecr_lifecycle_policy_lifecycle_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecyclePolicy(
    String name, {
    LifecyclePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repository = registerOutput<String>('repository');
  }

  /// Gets an existing [LifecyclePolicy] resource's state with the given [name] and [id].
  static LifecyclePolicy get(
    String name,
    pulumi.Input<String> id, {
    LifecyclePolicyState? state,
  }) {
    return LifecyclePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LifecyclePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/lifecyclePolicy:LifecyclePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryId = registerOutput<String>('registryId');
    repository = registerOutput<String>('repository');
  }
}
