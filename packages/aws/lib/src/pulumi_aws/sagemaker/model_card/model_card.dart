import 'package:pulumi/pulumi.dart';
import '../model_card_security_config/model_card_security_config.dart';
import '../model_card_timeouts/model_card_timeouts.dart';
import 'model_card_args.dart';

/// Manage an Amazon SageMaker Model Card.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ModelCard("example", {
/// modelCardName: "my-model-card",
/// modelCardStatus: "Draft",
/// content: `{
/// \\"business_details\\": {
/// \\"business_problem\\": \\"Quality\\"
/// },
/// \\"intended_uses\\": {
/// \\"intended_uses\\": \\"Testing\\"
/// },
/// \\"additional_information\\": {
/// \\"caveats_and_recommendations\\": \\"Use this\\"
/// }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ModelCard("example",
/// model_card_name="my-model-card",
/// model_card_status="Draft",
/// content="""{
/// \"business_details\": {
/// \"business_problem\": \"Quality\"
/// },
/// \"intended_uses\": {
/// \"intended_uses\": \"Testing\"
/// },
/// \"additional_information\": {
/// \"caveats_and_recommendations\": \"Use this\"
/// }
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
/// var example = new Aws.Sagemaker.ModelCard("example", new()
/// {
/// ModelCardName = "my-model-card",
/// ModelCardStatus = "Draft",
/// Content = @"{
/// \""business_details\"": {
/// \""business_problem\"": \""Quality\""
/// },
/// \""intended_uses\"": {
/// \""intended_uses\"": \""Testing\""
/// },
/// \""additional_information\"": {
/// \""caveats_and_recommendations\"": \""Use this\""
/// }
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewModelCard(ctx, "example", &sagemaker.ModelCardArgs{
/// ModelCardName:   pulumi.String("my-model-card"),
/// ModelCardStatus: pulumi.String("Draft"),
/// Content: pulumi.String(`{
/// \"business_details\": {
/// \"business_problem\": \"Quality\"
/// },
/// \"intended_uses\": {
/// \"intended_uses\": \"Testing\"
/// },
/// \"additional_information\": {
/// \"caveats_and_recommendations\": \"Use this\"
/// }
/// }
/// `),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ModelCard("example", ModelCardArgs.builder()
/// .modelCardName("my-model-card")
/// .modelCardStatus("Draft")
/// .content("""
/// {
/// \"business_details\": {
/// \"business_problem\": \"Quality\"
/// },
/// \"intended_uses\": {
/// \"intended_uses\": \"Testing\"
/// },
/// \"additional_information\": {
/// \"caveats_and_recommendations\": \"Use this\"
/// }
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:ModelCard
/// properties:
/// modelCardName: my-model-card
/// modelCardStatus: Draft
/// content: |
/// {
/// \"business_details\": {
/// \"business_problem\": \"Quality\"
/// },
/// \"intended_uses\": {
/// \"intended_uses\": \"Testing\"
/// },
/// \"additional_information\": {
/// \"caveats_and_recommendations\": \"Use this\"
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import model cards using the <span pulumi-lang-nodejs="`modelCardName`" pulumi-lang-dotnet="`ModelCardName`" pulumi-lang-go="`modelCardName`" pulumi-lang-python="`model_card_name`" pulumi-lang-yaml="`modelCardName`" pulumi-lang-java="`modelCardName`">`model_card_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCard:ModelCard example my-model-card
/// ```
class ModelCard extends CustomResource {
  /// Content of the model card in [model card JSON schema](https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html#model-cards-json-schema).
  late final Output<String> content;

  /// The Amazon Resource Name (ARN) of the model card.
  late final Output<String> modelCardArn;

  /// Name of the model card.
  late final Output<String> modelCardName;

  /// Approval status of the model card. Valid values: `Draft`, `PendingReview`, `Approved`, `Archived`.
  late final Output<String> modelCardStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// KMS key to encrypt, decrypt, and re-encrypt model card content. Fields are documented below.
  late final Output<ModelCardSecurityConfig?> securityConfig;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ModelCardTimeouts?> timeouts;

  ModelCard(
    String name, {
    ModelCardArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCard:ModelCard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.modelCardArn = registerOutput<String>('modelCardArn');
    this.modelCardName = registerOutput<String>('modelCardName');
    this.modelCardStatus = registerOutput<String>('modelCardStatus');
    this.region = registerOutput<String>('region');
    this.securityConfig =
        registerOutput<ModelCardSecurityConfig?>('securityConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ModelCardTimeouts?>('timeouts');
  }
}
