import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_key_args.dart';
import 'usage_plan_key_state.dart';

/// Provides an API Gateway Usage Plan Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.apigateway.RestApi("test", {name: "MyDemoAPI"});
/// // ...
/// const myusageplan = new aws.apigateway.UsagePlan("myusageplan", {
///     apiStages: [{
///         apiId: test.id,
///         stage: foo.stageName,
///     }],
///     name: "my_usage_plan",
/// });
/// const mykey = new aws.apigateway.ApiKey("mykey", {name: "my_key"});
/// const main = new aws.apigateway.UsagePlanKey("main", {
///     keyId: mykey.id,
///     keyType: "API_KEY",
///     usagePlanId: myusageplan.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.apigateway.RestApi("test", name="MyDemoAPI")
/// # ...
/// myusageplan = aws.apigateway.UsagePlan("myusageplan",
///     api_stages=[{
///         "api_id": test.id,
///         "stage": foo["stageName"],
///     }],
///     name="my_usage_plan")
/// mykey = aws.apigateway.ApiKey("mykey", name="my_key")
/// main = aws.apigateway.UsagePlanKey("main",
///     key_id=mykey.id,
///     key_type="API_KEY",
///     usage_plan_id=myusageplan.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.ApiGateway.RestApi("test", new()
///     {
///         Name = "MyDemoAPI",
///     });
///
///     // ...
///     var myusageplan = new Aws.ApiGateway.UsagePlan("myusageplan", new()
///     {
///         ApiStages = new[]
///         {
///             new Aws.ApiGateway.Inputs.UsagePlanApiStageArgs
///             {
///                 ApiId = test.Id,
///                 Stage = foo.StageName,
///             },
///         },
///         Name = "my_usage_plan",
///     });
///
///     var mykey = new Aws.ApiGateway.ApiKey("mykey", new()
///     {
///         Name = "my_key",
///     });
///
///     var main = new Aws.ApiGateway.UsagePlanKey("main", new()
///     {
///         KeyId = mykey.Id,
///         KeyType = "API_KEY",
///         UsagePlanId = myusageplan.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := apigateway.NewRestApi(ctx, "test", &apigateway.RestApiArgs{
/// 			Name: pulumi.String("MyDemoAPI"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ...
/// 		myusageplan, err := apigateway.NewUsagePlan(ctx, "myusageplan", &apigateway.UsagePlanArgs{
/// 			ApiStages: apigateway.UsagePlanApiStageArray{
/// 				&apigateway.UsagePlanApiStageArgs{
/// 					ApiId: test.ID().ToIDOutput().ToStringOutput(),
/// 					Stage: pulumi.Any(foo.StageName),
/// 				},
/// 			},
/// 			Name: pulumi.String("my_usage_plan"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mykey, err := apigateway.NewApiKey(ctx, "mykey", &apigateway.ApiKeyArgs{
/// 			Name: pulumi.String("my_key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewUsagePlanKey(ctx, "main", &apigateway.UsagePlanKeyArgs{
/// 			KeyId:       mykey.ID().ToIDOutput().ToStringOutput(),
/// 			KeyType:     pulumi.String("API_KEY"),
/// 			UsagePlanId: myusageplan.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_apigateway_restapi" "test" {
///   name = "MyDemoAPI"
/// }
/// # ...
/// resource "aws_apigateway_usageplan" "myusageplan" {
///   api_stages {
///     api_id = aws_apigateway_restapi.test.id
///     stage  = foo.stageName
///   }
///   name = "my_usage_plan"
/// }
/// resource "aws_apigateway_apikey" "mykey" {
///   name = "my_key"
/// }
/// resource "aws_apigateway_usageplankey" "main" {
///   key_id        = aws_apigateway_apikey.mykey.id
///   key_type      = "API_KEY"
///   usage_plan_id = aws_apigateway_usageplan.myusageplan.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.apigateway.RestApiArgs;
/// import com.pulumi.aws.apigateway.UsagePlan;
/// import com.pulumi.aws.apigateway.UsagePlanArgs;
/// import com.pulumi.aws.apigateway.inputs.UsagePlanApiStageArgs;
/// import com.pulumi.aws.apigateway.ApiKey;
/// import com.pulumi.aws.apigateway.ApiKeyArgs;
/// import com.pulumi.aws.apigateway.UsagePlanKey;
/// import com.pulumi.aws.apigateway.UsagePlanKeyArgs;
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
///         var test = new RestApi("test", RestApiArgs.builder()
///             .name("MyDemoAPI")
///             .build());
///
///         // ...
///         var myusageplan = new UsagePlan("myusageplan", UsagePlanArgs.builder()
///             .apiStages(UsagePlanApiStageArgs.builder()
///                 .apiId(test.id())
///                 .stage(foo.stageName())
///                 .build())
///             .name("my_usage_plan")
///             .build());
///
///         var mykey = new ApiKey("mykey", ApiKeyArgs.builder()
///             .name("my_key")
///             .build());
///
///         var main = new UsagePlanKey("main", UsagePlanKeyArgs.builder()
///             .keyId(mykey.id())
///             .keyType("API_KEY")
///             .usagePlanId(myusageplan.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:apigateway:RestApi
///     properties:
///       name: MyDemoAPI
///   # ...
///   myusageplan:
///     type: aws:apigateway:UsagePlan
///     properties:
///       apiStages:
///         - apiId: ${test.id}
///           stage: ${foo.stageName}
///       name: my_usage_plan
///   mykey:
///     type: aws:apigateway:ApiKey
///     properties:
///       name: my_key
///   main:
///     type: aws:apigateway:UsagePlanKey
///     properties:
///       keyId: ${mykey.id}
///       keyType: API_KEY
///       usagePlanId: ${myusageplan.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Usage Plan Key using the `USAGE-PLAN-ID/USAGE-PLAN-KEY-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/usagePlanKey:UsagePlanKey key 12345abcde/zzz
/// ```
class UsagePlanKey extends pulumi.CustomResource {
  /// Identifier of the API key resource.
  late final pulumi.Output<String> keyId;
  /// Type of the API key resource. Currently, the valid key type is API_KEY.
  late final pulumi.Output<String> keyType;
  /// Name of a usage plan key.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Id of the usage plan resource representing to associate the key to.
  late final pulumi.Output<String> usagePlanId;
  /// Value of a usage plan key.
  late final pulumi.Output<String> value;

  /// Creates a new [UsagePlanKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsagePlanKey]. {@macro pulumi_apigateway_usage_plan_key_usage_plan_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsagePlanKey(
    String name, {
    UsagePlanKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlanKey:UsagePlanKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    keyId = registerOutput<String>('keyId');
    keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    usagePlanId = registerOutput<String>('usagePlanId');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [UsagePlanKey] resource's state with the given [name] and [id].
  static UsagePlanKey get(
    String name,
    pulumi.Input<String> id, {
    UsagePlanKeyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UsagePlanKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UsagePlanKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlanKey:UsagePlanKey',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    keyId = registerOutput<String>('keyId');
    keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    usagePlanId = registerOutput<String>('usagePlanId');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [UsagePlanKey] resource.
  UsagePlanKey.reference(String urn)
    : super(
        'aws:apigateway/usagePlanKey:UsagePlanKey',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    keyId = registerOutput<String>('keyId');
    keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    usagePlanId = registerOutput<String>('usagePlanId');
    value = registerOutput<String>('value');
  }
}
