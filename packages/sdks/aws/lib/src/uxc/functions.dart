import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_services_result.dart';

/// Use this data source to retrieve the list of AWS service identifiers available for use with the `aws.uxc.AccountCustomizations` resource's `visibleServices` attribute.
///
/// &gt; **Note:** This data source operates globally and always queries the `us-east-1` region regardless of the provider region configuration.
///
/// ## Example Usage
///
/// ### List All Available Services
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.uxc.getServices({});
/// export const availableServices = example.then(example => example.services);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.uxc.get_services()
/// pulumi.export("availableServices", example.services)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Uxc.GetServices.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["availableServices"] = example.Apply(getServicesResult => getServicesResult.Services),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/uxc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := uxc.GetServices(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("availableServices", example.Services)
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
/// data "aws_uxc_getservices" "example" {
/// }
///
/// output "availableServices" {
///   value = data.aws_uxc_getservices.example.services
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.uxc.UxcFunctions;
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
///         final var example = UxcFunctions.getServices(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("availableServices", example.services());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:uxc:getServices
///       arguments: {}
/// outputs:
///   availableServices: ${example.services}
/// ```
///
///
/// ### Use with Account Customizations
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.uxc.getServices({});
/// const exampleAccountCustomizations = new aws.uxc.AccountCustomizations("example", {visibleServices: example.then(example => example.services)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.uxc.get_services()
/// example_account_customizations = aws.uxc.AccountCustomizations("example", visible_services=example.services)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Uxc.GetServices.Invoke();
///
///     var exampleAccountCustomizations = new Aws.Uxc.AccountCustomizations("example", new()
///     {
///         VisibleServices = example.Apply(getServicesResult => getServicesResult.Services),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/uxc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := uxc.GetServices(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = uxc.NewAccountCustomizations(ctx, "example", &uxc.AccountCustomizationsArgs{
/// 			VisibleServices: toPulumiStringArray(example.Services),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
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
/// data "aws_uxc_getservices" "example" {
/// }
///
/// resource "aws_uxc_accountcustomizations" "example" {
///   visible_services = data.aws_uxc_getservices.example.services
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.uxc.UxcFunctions;
/// import com.pulumi.aws.uxc.AccountCustomizations;
/// import com.pulumi.aws.uxc.AccountCustomizationsArgs;
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
///         final var example = UxcFunctions.getServices(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var exampleAccountCustomizations = new AccountCustomizations("exampleAccountCustomizations", AccountCustomizationsArgs.builder()
///             .visibleServices(example.services())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountCustomizations:
///     type: aws:uxc:AccountCustomizations
///     name: example
///     properties:
///       visibleServices: ${example.services}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:uxc:getServices
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetServicesResult> getServices(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:uxc/getServices:getServices',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServicesResult.fromMap(result);
}

pulumi.Output<GetServicesResult> getServicesOutput(
  {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:uxc/getServices:getServices',
    const <String, pulumi.Input<dynamic>>{},
    options: options,
  ).apply(GetServicesResult.fromMap);
}
