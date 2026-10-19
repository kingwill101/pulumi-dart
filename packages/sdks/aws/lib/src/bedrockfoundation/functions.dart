import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_agreement_offers_args.dart';
import 'get_model_agreement_offers_result.dart';
import 'get_model_args.dart';
import 'get_model_result.dart';
import 'get_models_args.dart';
import 'get_models_result.dart';

/// Provides details about an AWS Bedrock Foundation Model.
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
/// const example = aws.bedrockfoundation.getModels({});
/// const exampleGetModel = example.then(example => aws.bedrockfoundation.getModel({
///     modelId: example.modelSummaries?.[0]?.modelId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_models()
/// example_get_model = aws.bedrockfoundation.get_model(model_id=example.model_summaries[0].model_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.BedrockFoundation.GetModels.Invoke();
///
///     var exampleGetModel = Aws.BedrockFoundation.GetModel.Invoke(new()
///     {
///         ModelId = example.Apply(getModelsResult => getModelsResult.ModelSummaries[0]?.ModelId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrockfoundation.GetModels(ctx, &bedrockfoundation.GetModelsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrockfoundation.GetModel(ctx, &bedrockfoundation.GetModelArgs{
/// 			ModelId: example.ModelSummaries[0].ModelId,
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
/// data "aws_bedrockfoundation_getmodels" "example" {
/// }
/// data "aws_bedrockfoundation_getmodel" "exampleGetModel" {
///   model_id = data.aws_bedrockfoundation_getmodels.example.model_summaries[0].model_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelsArgs;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelArgs;
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
///         final var example = BedrockfoundationFunctions.getModels(GetModelsArgs.builder()
///             .build());
///
///         final var exampleGetModel = BedrockfoundationFunctions.getModel(GetModelArgs.builder()
///             .modelId(example.modelSummaries()[0].modelId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModels
///       arguments: {}
///   exampleGetModel:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModel
///       arguments:
///         modelId: ${example.modelSummaries[0].modelId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrockfoundation_get_model_get_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelResult> getModel(
  GetModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModel:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelResult.fromMap(result);
}

pulumi.Output<GetModelResult> getModelOutput(
  GetModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModel:getModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelResult.fromMap);
}

/// Provides details about AWS Bedrock Foundation Model Agreement Offers.
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
/// const example = aws.bedrockfoundation.getModels({});
/// const exampleGetModelAgreementOffers = example.then(example => aws.bedrockfoundation.getModelAgreementOffers({
///     modelId: example.modelSummaries?.[0]?.modelId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_models()
/// example_get_model_agreement_offers = aws.bedrockfoundation.get_model_agreement_offers(model_id=example.model_summaries[0].model_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.BedrockFoundation.GetModels.Invoke();
///
///     var exampleGetModelAgreementOffers = Aws.BedrockFoundation.GetModelAgreementOffers.Invoke(new()
///     {
///         ModelId = example.Apply(getModelsResult => getModelsResult.ModelSummaries[0]?.ModelId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrockfoundation.GetModels(ctx, &bedrockfoundation.GetModelsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrockfoundation.GetModelAgreementOffers(ctx, &bedrockfoundation.GetModelAgreementOffersArgs{
/// 			ModelId: example.ModelSummaries[0].ModelId,
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
/// data "aws_bedrockfoundation_getmodels" "example" {
/// }
/// data "aws_bedrockfoundation_getmodelagreementoffers" "exampleGetModelAgreementOffers" {
///   model_id = data.aws_bedrockfoundation_getmodels.example.model_summaries[0].model_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelsArgs;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelAgreementOffersArgs;
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
///         final var example = BedrockfoundationFunctions.getModels(GetModelsArgs.builder()
///             .build());
///
///         final var exampleGetModelAgreementOffers = BedrockfoundationFunctions.getModelAgreementOffers(GetModelAgreementOffersArgs.builder()
///             .modelId(example.modelSummaries()[0].modelId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModels
///       arguments: {}
///   exampleGetModelAgreementOffers:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModelAgreementOffers
///       arguments:
///         modelId: ${example.modelSummaries[0].modelId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrockfoundation_get_model_agreement_offers_get_model_agreement_offers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelAgreementOffersResult> getModelAgreementOffers(
  GetModelAgreementOffersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModelAgreementOffers:getModelAgreementOffers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelAgreementOffersResult.fromMap(result);
}

pulumi.Output<GetModelAgreementOffersResult> getModelAgreementOffersOutput(
  GetModelAgreementOffersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModelAgreementOffers:getModelAgreementOffers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelAgreementOffersResult.fromMap);
}

/// Provides details about AWS Bedrock Foundation Models.
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
/// const example = aws.bedrockfoundation.getModels({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_models()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.BedrockFoundation.GetModels.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrockfoundation.GetModels(ctx, &bedrockfoundation.GetModelsArgs{}, nil)
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
/// data "aws_bedrockfoundation_getmodels" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelsArgs;
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
///         final var example = BedrockfoundationFunctions.getModels(GetModelsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModels
///       arguments: {}
/// ```
///
///
/// ### Filter by Inference Type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.bedrockfoundation.getModels({
///     byInferenceType: "ON_DEMAND",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_models(by_inference_type="ON_DEMAND")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.BedrockFoundation.GetModels.Invoke(new()
///     {
///         ByInferenceType = "ON_DEMAND",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrockfoundation.GetModels(ctx, &bedrockfoundation.GetModelsArgs{
/// 			ByInferenceType: pulumi.StringRef("ON_DEMAND"),
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
/// data "aws_bedrockfoundation_getmodels" "example" {
///   by_inference_type = "ON_DEMAND"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelsArgs;
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
///         final var example = BedrockfoundationFunctions.getModels(GetModelsArgs.builder()
///             .byInferenceType("ON_DEMAND")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModels
///       arguments:
///         byInferenceType: ON_DEMAND
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bedrockfoundation_get_models_get_models_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModelsResult> getModels(
  GetModelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModels:getModels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelsResult.fromMap(result);
}

pulumi.Output<GetModelsResult> getModelsOutput(
  GetModelsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:bedrockfoundation/getModels:getModels',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModelsResult.fromMap);
}
