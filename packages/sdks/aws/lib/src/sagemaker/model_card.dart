import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_args.dart';
import 'model_card_security_config.dart';
import 'model_card_state.dart';
import 'model_card_timeouts.dart';

/// Manage an Amazon SageMaker Model Card.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ModelCard("example", {
///     modelCardName: "my-model-card",
///     modelCardStatus: "Draft",
///     content: `{
///   \\"business_details\\": {
///     \\"business_problem\\": \\"Quality\\"
///   },
///   \\"intended_uses\\": {
///     \\"intended_uses\\": \\"Testing\\"
///   },
///   \\"additional_information\\": {
///     \\"caveats_and_recommendations\\": \\"Use this\\"
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ModelCard("example",
///     model_card_name="my-model-card",
///     model_card_status="Draft",
///     content="""{
///   \"business_details\": {
///     \"business_problem\": \"Quality\"
///   },
///   \"intended_uses\": {
///     \"intended_uses\": \"Testing\"
///   },
///   \"additional_information\": {
///     \"caveats_and_recommendations\": \"Use this\"
///   }
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
///     var example = new Aws.Sagemaker.ModelCard("example", new()
///     {
///         ModelCardName = "my-model-card",
///         ModelCardStatus = "Draft",
///         Content = @"{
///   \""business_details\"": {
///     \""business_problem\"": \""Quality\""
///   },
///   \""intended_uses\"": {
///     \""intended_uses\"": \""Testing\""
///   },
///   \""additional_information\"": {
///     \""caveats_and_recommendations\"": \""Use this\""
///   }
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewModelCard(ctx, "example", &sagemaker.ModelCardArgs{
/// 			ModelCardName:   pulumi.String("my-model-card"),
/// 			ModelCardStatus: pulumi.String("Draft"),
/// 			Content: pulumi.String(`{
///   \"business_details\": {
///     \"business_problem\": \"Quality\"
///   },
///   \"intended_uses\": {
///     \"intended_uses\": \"Testing\"
///   },
///   \"additional_information\": {
///     \"caveats_and_recommendations\": \"Use this\"
///   }
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.ModelCard;
/// import com.pulumi.aws.sagemaker.ModelCardArgs;
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
///         var example = new ModelCard("example", ModelCardArgs.builder()
///             .modelCardName("my-model-card")
///             .modelCardStatus("Draft")
///             .content("""
/// {
///   \"business_details\": {
///     \"business_problem\": \"Quality\"
///   },
///   \"intended_uses\": {
///     \"intended_uses\": \"Testing\"
///   },
///   \"additional_information\": {
///     \"caveats_and_recommendations\": \"Use this\"
///   }
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
///     type: aws:sagemaker:ModelCard
///     properties:
///       modelCardName: my-model-card
///       modelCardStatus: Draft
///       content: |
///         {
///           \"business_details\": {
///             \"business_problem\": \"Quality\"
///           },
///           \"intended_uses\": {
///             \"intended_uses\": \"Testing\"
///           },
///           \"additional_information\": {
///             \"caveats_and_recommendations\": \"Use this\"
///           }
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import model cards using the `model_card_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCard:ModelCard example my-model-card
/// ```
class ModelCard extends pulumi.CustomResource {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  late final pulumi.Output<String> content;
  /// The Amazon Resource Name (ARN) of the model card.
  late final pulumi.Output<String> modelCardArn;
  /// Name of the model card.
  late final pulumi.Output<String> modelCardName;
  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  late final pulumi.Output<String> modelCardStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  late final pulumi.Output<ModelCardSecurityConfig?> securityConfig;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ModelCardTimeouts?> timeouts;

  /// Creates a new [ModelCard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelCard]. {@macro pulumi_sagemaker_model_card_model_card_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelCard(
    String name, {
    ModelCardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCard:ModelCard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.modelCardArn = registerOutput<String>('modelCardArn');
    this.modelCardName = registerOutput<String>('modelCardName');
    this.modelCardStatus = registerOutput<String>('modelCardStatus');
    this.region = registerOutput<String>('region');
    this.securityConfig = registerOutput<ModelCardSecurityConfig?>('securityConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ModelCardTimeouts?>('timeouts');
  }

  /// Gets an existing [ModelCard] resource's state with the given [name] and [id].
  static ModelCard get(
    String name,
    pulumi.Input<String> id, {
    ModelCardState? state,
  }) {
    return ModelCard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ModelCard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCard:ModelCard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.modelCardArn = registerOutput<String>('modelCardArn');
    this.modelCardName = registerOutput<String>('modelCardName');
    this.modelCardStatus = registerOutput<String>('modelCardStatus');
    this.region = registerOutput<String>('region');
    this.securityConfig = registerOutput<ModelCardSecurityConfig?>('securityConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ModelCardTimeouts?>('timeouts');
  }
}
