import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_args.dart';
import 'endpoint_configuration_async_inference_config.dart';
import 'endpoint_configuration_data_capture_config.dart';
import 'endpoint_configuration_state.dart';

/// Provides a SageMaker AI endpoint configuration resource.
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
/// const ec = new aws.sagemaker.EndpointConfiguration("ec", {
///     name: "my-endpoint-config",
///     productionVariants: [{
///         variantName: "variant-1",
///         modelName: m.name,
///         initialInstanceCount: 1,
///         instanceType: "ml.t2.medium",
///     }],
///     tags: {
///         Name: "foo",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ec = aws.sagemaker.EndpointConfiguration("ec",
///     name="my-endpoint-config",
///     production_variants=[{
///         "variant_name": "variant-1",
///         "model_name": m["name"],
///         "initial_instance_count": 1,
///         "instance_type": "ml.t2.medium",
///     }],
///     tags={
///         "Name": "foo",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ec = new Aws.Sagemaker.EndpointConfiguration("ec", new()
///     {
///         Name = "my-endpoint-config",
///         ProductionVariants = new[]
///         {
///             new Aws.Sagemaker.Inputs.EndpointConfigurationProductionVariantArgs
///             {
///                 VariantName = "variant-1",
///                 ModelName = m.Name,
///                 InitialInstanceCount = 1,
///                 InstanceType = "ml.t2.medium",
///             },
///         },
///         Tags =
///         {
///             { "Name", "foo" },
///         },
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
/// 		_, err := sagemaker.NewEndpointConfiguration(ctx, "ec", &sagemaker.EndpointConfigurationArgs{
/// 			Name: pulumi.String("my-endpoint-config"),
/// 			ProductionVariants: sagemaker.EndpointConfigurationProductionVariantArray{
/// 				&sagemaker.EndpointConfigurationProductionVariantArgs{
/// 					VariantName:          pulumi.String("variant-1"),
/// 					ModelName:            pulumi.Any(m.Name),
/// 					InitialInstanceCount: pulumi.Int(1),
/// 					InstanceType:         pulumi.String("ml.t2.medium"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("foo"),
/// 			},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var ec = new EndpointConfiguration("ec", EndpointConfigurationArgs.builder()
///             .name("my-endpoint-config")
///             .productionVariants(EndpointConfigurationProductionVariantArgs.builder()
///                 .variantName("variant-1")
///                 .modelName(m.name())
///                 .initialInstanceCount(1)
///                 .instanceType("ml.t2.medium")
///                 .build())
///             .tags(Map.of("Name", "foo"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ec:
///     type: aws:sagemaker:EndpointConfiguration
///     properties:
///       name: my-endpoint-config
///       productionVariants:
///         - variantName: variant-1
///           modelName: ${m.name}
///           initialInstanceCount: 1
///           instanceType: ml.t2.medium
///       tags:
///         Name: foo
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoint configurations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/endpointConfiguration:EndpointConfiguration test_endpoint_config endpoint-config-foo
/// ```
class EndpointConfiguration extends pulumi.CustomResource {
  /// ARN assigned by AWS to this endpoint configuration.
  late final pulumi.Output<String> arn;

  /// How an endpoint performs asynchronous inference.
  late final pulumi.Output<EndpointConfigurationAsyncInferenceConfig?>
  asyncInferenceConfig;

  /// Parameters to capture input/output of SageMaker AI models endpoints. Fields are documented below.
  late final pulumi.Output<EndpointConfigurationDataCaptureConfig?>
  dataCaptureConfig;

  /// ARN of an IAM role that SageMaker AI can assume to perform actions on your behalf. Required when `model_name` is not specified in `production_variants` to support Inference Components.
  late final pulumi.Output<String?> executionRoleArn;

  /// ARN of a AWS KMS key that SageMaker AI uses to encrypt data on the storage volume attached to the ML compute instance that hosts the endpoint.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Name of the endpoint configuration. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Unique endpoint configuration name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// List each model that you want to host at this endpoint. See below.
  late final pulumi.Output<List<Map<String, dynamic>>> productionVariants;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Models that you want to host at this endpoint in shadow mode with production traffic replicated from the model specified on `production_variants`. If you use this field, you can only specify one variant for `production_variants` and one variant for `shadow_production_variants`. See below (same arguments as `production_variants`).
  late final pulumi.Output<List<Map<String, dynamic>>?>
  shadowProductionVariants;

  /// Mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EndpointConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointConfiguration]. {@macro pulumi_sagemaker_endpoint_configuration_endpoint_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointConfiguration(
    String name, {
    EndpointConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    asyncInferenceConfig =
        registerOutput<EndpointConfigurationAsyncInferenceConfig?>(
          'asyncInferenceConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EndpointConfigurationAsyncInferenceConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dataCaptureConfig = registerOutput<EndpointConfigurationDataCaptureConfig?>(
      'dataCaptureConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointConfigurationDataCaptureConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    productionVariants = registerOutput<List<Map<String, dynamic>>>(
      'productionVariants',
    );
    region = registerOutput<String>('region');
    shadowProductionVariants = registerOutput<List<Map<String, dynamic>>?>(
      'shadowProductionVariants',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [EndpointConfiguration] resource's state with the given [name] and [id].
  static EndpointConfiguration get(
    String name,
    pulumi.Input<String> id, {
    EndpointConfigurationState? state,
  }) {
    return EndpointConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/endpointConfiguration:EndpointConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    asyncInferenceConfig =
        registerOutput<EndpointConfigurationAsyncInferenceConfig?>(
          'asyncInferenceConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EndpointConfigurationAsyncInferenceConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dataCaptureConfig = registerOutput<EndpointConfigurationDataCaptureConfig?>(
      'dataCaptureConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointConfigurationDataCaptureConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    productionVariants = registerOutput<List<Map<String, dynamic>>>(
      'productionVariants',
    );
    region = registerOutput<String>('region');
    shadowProductionVariants = registerOutput<List<Map<String, dynamic>>?>(
      'shadowProductionVariants',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
