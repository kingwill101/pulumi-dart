import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_agent_versions_args.dart';
import 'get_agent_agent_versions_result.dart';
import 'get_custom_model_args.dart';
import 'get_custom_model_result.dart';
import 'get_custom_models_args.dart';
import 'get_custom_models_result.dart';
import 'get_inference_profile_args.dart';
import 'get_inference_profile_result.dart';
import 'get_inference_profiles_args.dart';
import 'get_inference_profiles_result.dart';
import 'get_use_case_for_model_access_result.dart';

/// Data source for managing an AWS Amazon BedrockAgent Agent Versions.
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
/// const test = aws.bedrock.getAgentAgentVersions({
///     agentId: testAwsBedrockagentAgent.agentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_agent_agent_versions(agent_id=test_aws_bedrockagent_agent["agentId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetAgentAgentVersions.Invoke(new()
///     {
///         AgentId = testAwsBedrockagentAgent.AgentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.GetAgentAgentVersions(ctx, &bedrock.GetAgentAgentVersionsArgs{
/// 			AgentId: testAwsBedrockagentAgent.AgentId,
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
/// data "aws_bedrock_getagentagentversions" "test" {
///   agent_id = testAwsBedrockagentAgent.agentId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetAgentAgentVersionsArgs;
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
///         final var test = BedrockFunctions.getAgentAgentVersions(GetAgentAgentVersionsArgs.builder()
///             .agentId(testAwsBedrockagentAgent.agentId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getAgentAgentVersions
///       arguments:
///         agentId: ${testAwsBedrockagentAgent.agentId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrock_get_agent_agent_versions_get_agent_agent_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentAgentVersionsResult> getAgentAgentVersions(
  GetAgentAgentVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getAgentAgentVersions:getAgentAgentVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentAgentVersionsResult.fromMap(result);
}

/// Returns properties of a specific Amazon Bedrock custom model.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getCustomModel({
///     modelId: "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_custom_model(model_id="arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetCustomModel.Invoke(new()
///     {
///         ModelId = "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.LookupCustomModel(ctx, &bedrock.LookupCustomModelArgs{
/// 			ModelId: "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ",
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
/// data "aws_bedrock_getcustommodel" "test" {
///   model_id = "arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 "
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetCustomModelArgs;
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
///         final var test = BedrockFunctions.getCustomModel(GetCustomModelArgs.builder()
///             .modelId("arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 ")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getCustomModel
///       arguments:
///         modelId: 'arn:aws:bedrock:us-west-2:123456789012:custom-model/amazon.titan-text-express-v1:0:8k/ly16hhi765j4 '
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrock_get_custom_model_get_custom_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomModelResult> getCustomModel(
  GetCustomModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getCustomModel:getCustomModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomModelResult.fromMap(result);
}

/// Returns a list of Amazon Bedrock custom models.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getCustomModels({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_custom_models()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetCustomModels.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.GetCustomModels(ctx, &bedrock.GetCustomModelsArgs{}, nil)
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
/// data "aws_bedrock_getcustommodels" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetCustomModelsArgs;
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
///         final var test = BedrockFunctions.getCustomModels(GetCustomModelsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getCustomModels
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrock_get_custom_models_get_custom_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomModelsResult> getCustomModels(
  GetCustomModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getCustomModels:getCustomModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomModelsResult.fromMap(result);
}

/// Data source for managing an AWS Bedrock Inference Profile.
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
/// const test = aws.bedrock.getInferenceProfiles({});
/// const testGetInferenceProfile = test.then(test => aws.bedrock.getInferenceProfile({
///     inferenceProfileId: test.inferenceProfileSummaries?.[0]?.inferenceProfileId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_inference_profiles()
/// test_get_inference_profile = aws.bedrock.get_inference_profile(inference_profile_id=test.inference_profile_summaries[0].inference_profile_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetInferenceProfiles.Invoke();
///
///     var testGetInferenceProfile = Aws.Bedrock.GetInferenceProfile.Invoke(new()
///     {
///         InferenceProfileId = test.Apply(getInferenceProfilesResult => getInferenceProfilesResult.InferenceProfileSummaries[0]?.InferenceProfileId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.LookupInferenceProfile(ctx, &bedrock.LookupInferenceProfileArgs{
/// 			InferenceProfileId: test.InferenceProfileSummaries[0].InferenceProfileId,
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
/// data "aws_bedrock_getinferenceprofiles" "test" {
/// }
/// data "aws_bedrock_getinferenceprofile" "testGetInferenceProfile" {
///   inference_profile_id = data.aws_bedrock_getinferenceprofiles.test.inference_profile_summaries[0].inference_profile_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfilesArgs;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfileArgs;
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
///         final var test = BedrockFunctions.getInferenceProfiles(GetInferenceProfilesArgs.builder()
///             .build());
///
///         final var testGetInferenceProfile = BedrockFunctions.getInferenceProfile(GetInferenceProfileArgs.builder()
///             .inferenceProfileId(test.inferenceProfileSummaries()[0].inferenceProfileId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getInferenceProfiles
///       arguments: {}
///   testGetInferenceProfile:
///     fn::invoke:
///       function: aws:bedrock:getInferenceProfile
///       arguments:
///         inferenceProfileId: ${test.inferenceProfileSummaries[0].inferenceProfileId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrock_get_inference_profile_get_inference_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceProfileResult> getInferenceProfile(
  GetInferenceProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfile:getInferenceProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfileResult.fromMap(result);
}

/// Data source for managing AWS Bedrock Inference Profiles.
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
/// const test = aws.bedrock.getInferenceProfiles({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_inference_profiles()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetInferenceProfiles.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{}, nil)
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
/// data "aws_bedrock_getinferenceprofiles" "test" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfilesArgs;
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
///         final var test = BedrockFunctions.getInferenceProfiles(GetInferenceProfilesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getInferenceProfiles
///       arguments: {}
/// ```
///
///
/// ### Filter by Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getInferenceProfiles({
///     type: "APPLICATION",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_inference_profiles(type="APPLICATION")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Bedrock.GetInferenceProfiles.Invoke(new()
///     {
///         Type = "APPLICATION",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{
/// 			Type: pulumi.StringRef("APPLICATION"),
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
/// data "aws_bedrock_getinferenceprofiles" "test" {
///   type = "APPLICATION"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfilesArgs;
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
///         final var test = BedrockFunctions.getInferenceProfiles(GetInferenceProfilesArgs.builder()
///             .type("APPLICATION")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:bedrock:getInferenceProfiles
///       arguments:
///         type: APPLICATION
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrock_get_inference_profiles_get_inference_profiles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInferenceProfilesResult> getInferenceProfiles(
  GetInferenceProfilesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfiles:getInferenceProfiles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfilesResult.fromMap(result);
}

/// Provides details about an AWS Bedrock Use Case For Model Access.
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
/// const example = aws.bedrock.getUseCaseForModelAccess({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.get_use_case_for_model_access()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Bedrock.GetUseCaseForModelAccess.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.LookupUseCaseForModelAccess(ctx, map[string]interface{}{}, nil)
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
/// data "aws_bedrock_getusecaseformodelaccess" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.BedrockFunctions;
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
///         final var example = BedrockFunctions.getUseCaseForModelAccess(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrock:getUseCaseForModelAccess
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetUseCaseForModelAccessResult> getUseCaseForModelAccess(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getUseCaseForModelAccess:getUseCaseForModelAccess',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUseCaseForModelAccessResult.fromMap(result);
}
