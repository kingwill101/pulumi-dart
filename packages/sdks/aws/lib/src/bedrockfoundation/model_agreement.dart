import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_agreement_args.dart';
import 'model_agreement_state.dart';
import 'model_agreement_timeouts.dart';

/// Manages an AWS Bedrock Foundation Model Agreement.
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
/// const example = aws.bedrockfoundation.getModelAgreementOffers({
///     modelId: "eu.anthropic.claude-opus-4-5-20251101-v1:0",
///     offerType: "PUBLIC",
/// });
/// const exampleModelAgreement = new aws.bedrockfoundation.ModelAgreement("example", {
///     modelId: example.then(example => example.modelId),
///     offerToken: example.then(example => example.offers?.[0]?.offerToken),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_model_agreement_offers(model_id="eu.anthropic.claude-opus-4-5-20251101-v1:0",
///     offer_type="PUBLIC")
/// example_model_agreement = aws.bedrockfoundation.ModelAgreement("example",
///     model_id=example.model_id,
///     offer_token=example.offers[0].offer_token)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.BedrockFoundation.GetModelAgreementOffers.Invoke(new()
///     {
///         ModelId = "eu.anthropic.claude-opus-4-5-20251101-v1:0",
///         OfferType = "PUBLIC",
///     });
///
///     var exampleModelAgreement = new Aws.BedrockFoundation.ModelAgreement("example", new()
///     {
///         ModelId = example.Apply(getModelAgreementOffersResult => getModelAgreementOffersResult.ModelId),
///         OfferToken = example.Apply(getModelAgreementOffersResult => getModelAgreementOffersResult.Offers[0]?.OfferToken),
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
/// 		example, err := bedrockfoundation.GetModelAgreementOffers(ctx, &bedrockfoundation.GetModelAgreementOffersArgs{
/// 			ModelId:   "eu.anthropic.claude-opus-4-5-20251101-v1:0",
/// 			OfferType: pulumi.StringRef("PUBLIC"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrockfoundation.NewModelAgreement(ctx, "example", &bedrockfoundation.ModelAgreementArgs{
/// 			ModelId:    pulumi.String(example.ModelId),
/// 			OfferToken: pulumi.String(example.Offers[0].OfferToken),
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
/// data "aws_bedrockfoundation_getmodelagreementoffers" "example" {
///   model_id   = "eu.anthropic.claude-opus-4-5-20251101-v1:0"
///   offer_type = "PUBLIC"
/// }
///
/// resource "aws_bedrockfoundation_modelagreement" "example" {
///   model_id    = data.aws_bedrockfoundation_getmodelagreementoffers.example.model_id
///   offer_token = data.aws_bedrockfoundation_getmodelagreementoffers.example.offers[0].offer_token
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelAgreementOffersArgs;
/// import com.pulumi.aws.bedrockfoundation.ModelAgreement;
/// import com.pulumi.aws.bedrockfoundation.ModelAgreementArgs;
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
///         final var example = BedrockfoundationFunctions.getModelAgreementOffers(GetModelAgreementOffersArgs.builder()
///             .modelId("eu.anthropic.claude-opus-4-5-20251101-v1:0")
///             .offerType("PUBLIC")
///             .build());
///
///         var exampleModelAgreement = new ModelAgreement("exampleModelAgreement", ModelAgreementArgs.builder()
///             .modelId(example.modelId())
///             .offerToken(example.offers()[0].offerToken())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleModelAgreement:
///     type: aws:bedrockfoundation:ModelAgreement
///     name: example
///     properties:
///       modelId: ${example.modelId}
///       offerToken: ${example.offers[0].offerToken}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModelAgreementOffers
///       arguments:
///         modelId: eu.anthropic.claude-opus-4-5-20251101-v1:0
///         offerType: PUBLIC
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `modelId` - Model ID argument of the Foundation Model Agreement.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock Foundation Model Agreement using the `modelId`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockfoundation/modelAgreement:ModelAgreement example eu.anthropic.claude-opus-4-5-20251101-v1:0
/// ```
class ModelAgreement extends pulumi.CustomResource {
  /// Model ID for the access request.
  late final pulumi.Output<String> modelId;
  /// Offer token encapsulates information for an offer.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> offerToken;
  /// Region where this action should be [run](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<ModelAgreementTimeouts?> timeouts;

  /// Creates a new [ModelAgreement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelAgreement]. {@macro pulumi_bedrockfoundation_model_agreement_model_agreement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelAgreement(
    String name, {
    ModelAgreementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockfoundation/modelAgreement:ModelAgreement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    modelId = registerOutput<String>('modelId');
    offerToken = registerOutput<String>('offerToken');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ModelAgreementTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModelAgreementTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ModelAgreement] resource's state with the given [name] and [id].
  static ModelAgreement get(
    String name,
    pulumi.Input<String> id, {
    ModelAgreementState? state,
  }) {
    return ModelAgreement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ModelAgreement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockfoundation/modelAgreement:ModelAgreement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    modelId = registerOutput<String>('modelId');
    offerToken = registerOutput<String>('offerToken');
    region = registerOutput<String>('region');
    timeouts = registerOutput<ModelAgreementTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModelAgreementTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
