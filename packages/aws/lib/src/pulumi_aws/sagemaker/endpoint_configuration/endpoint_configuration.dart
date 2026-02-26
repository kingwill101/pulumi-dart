import 'package:pulumi/pulumi.dart';
import '../endpoint_configuration_async_inference_config/endpoint_configuration_async_inference_config.dart';
import '../endpoint_configuration_data_capture_config/endpoint_configuration_data_capture_config.dart';
import '../endpoint_configuration_production_variant/endpoint_configuration_production_variant.dart';
import '../endpoint_configuration_shadow_production_variant/endpoint_configuration_shadow_production_variant.dart';
import 'endpoint_configuration_args.dart';

/// Provides a SageMaker AI endpoint configuration resource.
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
/// const ec = new aws.sagemaker.EndpointConfiguration("ec", {
/// name: "my-endpoint-config",
/// productionVariants: [{
/// variantName: "variant-1",
/// modelName: m.name,
/// initialInstanceCount: 1,
/// instanceType: "ml.t2.medium",
/// }],
/// tags: {
/// Name: "foo",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec = aws.sagemaker.EndpointConfiguration("ec",
/// name="my-endpoint-config",
/// production_variants=[{
/// "variant_name": "variant-1",
/// "model_name": m["name"],
/// "initial_instance_count": 1,
/// "instance_type": "ml.t2.medium",
/// }],
/// tags={
/// "Name": "foo",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ec = new Aws.Sagemaker.EndpointConfiguration("ec", new()
/// {
/// Name = "my-endpoint-config",
/// ProductionVariants = new[]
/// {
/// new Aws.Sagemaker.Inputs.EndpointConfigurationProductionVariantArgs
/// {
/// VariantName = "variant-1",
/// ModelName = m.Name,
/// InitialInstanceCount = 1,
/// InstanceType = "ml.t2.medium",
/// },
/// },
/// Tags =
/// {
/// { "Name", "foo" },
/// },
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
/// _, err := sagemaker.NewEndpointConfiguration(ctx, "ec", &sagemaker.EndpointConfigurationArgs{
/// Name: pulumi.String("my-endpoint-config"),
/// ProductionVariants: sagemaker.EndpointConfigurationProductionVariantArray{
/// &sagemaker.EndpointConfigurationProductionVariantArgs{
/// VariantName:          pulumi.String("variant-1"),
/// ModelName:            pulumi.Any(m.Name),
/// InitialInstanceCount: pulumi.Int(1),
/// InstanceType:         pulumi.String("ml.t2.medium"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("foo"),
/// },
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
/// import com.pulumi.aws.sagemaker.EndpointConfiguration;
/// import com.pulumi.aws.sagemaker.EndpointConfigurationArgs;
/// import com.pulumi.aws.sagemaker.inputs.EndpointConfigurationProductionVariantArgs;
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
/// var ec = new EndpointConfiguration("ec", EndpointConfigurationArgs.builder()
/// .name("my-endpoint-config")
/// .productionVariants(EndpointConfigurationProductionVariantArgs.builder()
/// .variantName("variant-1")
/// .modelName(m.name())
/// .initialInstanceCount(1)
/// .instanceType("ml.t2.medium")
/// .build())
/// .tags(Map.of("Name", "foo"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ec:
/// type: aws:sagemaker:EndpointConfiguration
/// properties:
/// name: my-endpoint-config
/// productionVariants:
/// - variantName: variant-1
/// modelName: ${m.name}
/// initialInstanceCount: 1
/// instanceType: ml.t2.medium
/// tags:
/// Name: foo
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import endpoint configurations using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpointConfiguration:EndpointConfiguration test_endpoint_config endpoint-config-foo
/// ```
class EndpointConfiguration extends CustomResource {
  /// ARN assigned by AWS to this endpoint configuration.
  late final Output<String> arn;

  /// How an endpoint performs asynchronous inference.
  late final Output<EndpointConfigurationAsyncInferenceConfig?>
      asyncInferenceConfig;

  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  late final Output<EndpointConfigurationDataCaptureConfig?> dataCaptureConfig;

  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when <span pulumi-lang-nodejs="`modelName`" pulumi-lang-dotnet="`ModelName`" pulumi-lang-go="`modelName`" pulumi-lang-python="`model_name`" pulumi-lang-yaml="`modelName`" pulumi-lang-java="`modelName`">`model_name`</span> is not specified in <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span> to support Inference Components.
  late final Output<String?> executionRoleArn;

  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  late final Output<String?> kmsKeyArn;

  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// List each model that you want to host at this endpoint. See below.
  late final Output<List<EndpointConfigurationProductionVariant>>
      productionVariants;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span>. If you use this field, you can only specify one variant for <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span> and one variant for <span pulumi-lang-nodejs="`shadowProductionVariants`" pulumi-lang-dotnet="`ShadowProductionVariants`" pulumi-lang-go="`shadowProductionVariants`" pulumi-lang-python="`shadow_production_variants`" pulumi-lang-yaml="`shadowProductionVariants`" pulumi-lang-java="`shadowProductionVariants`">`shadow_production_variants`</span>. See below (same arguments as <span pulumi-lang-nodejs="`productionVariants`" pulumi-lang-dotnet="`ProductionVariants`" pulumi-lang-go="`productionVariants`" pulumi-lang-python="`production_variants`" pulumi-lang-yaml="`productionVariants`" pulumi-lang-java="`productionVariants`">`production_variants`</span>).
  late final Output<List<EndpointConfigurationShadowProductionVariant>?>
      shadowProductionVariants;

  /// Mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  EndpointConfiguration(
    String name, {
    EndpointConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.asyncInferenceConfig =
        registerOutput<EndpointConfigurationAsyncInferenceConfig?>(
            'asyncInferenceConfig');
    this.dataCaptureConfig =
        registerOutput<EndpointConfigurationDataCaptureConfig?>(
            'dataCaptureConfig');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.productionVariants =
        registerOutput<List<EndpointConfigurationProductionVariant>>(
            'productionVariants');
    this.region = registerOutput<String>('region');
    this.shadowProductionVariants =
        registerOutput<List<EndpointConfigurationShadowProductionVariant>?>(
            'shadowProductionVariants');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
