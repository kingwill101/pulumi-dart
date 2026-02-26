import 'package:pulumi/pulumi.dart';
import 'get_layer_version_args.dart';
import 'get_layer_version_result.dart';

/// Provides details about an AWS Lambda Layer Version. Use this data source to retrieve information about a specific layer version or find the latest version compatible with your runtime and architecture requirements.
///
/// ## Example Usage
///
/// ### Get Latest Layer Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getLayerVersion({
/// layerName: "my-shared-utilities",
/// });
/// // Use the layer in a Lambda function
/// const exampleFunction = new aws.lambda.Function("example", {
/// code: new pulumi.asset.FileArchive("function.zip"),
/// name: "example_function",
/// role: lambdaRole.arn,
/// handler: "index.handler",
/// runtime: aws.lambda.Runtime.NodeJS20dX,
/// layers: [example.then(example => example.arn)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_layer_version(layer_name="my-shared-utilities")
/// # Use the layer in a Lambda function
/// example_function = aws.lambda_.Function("example",
/// code=pulumi.FileArchive("function.zip"),
/// name="example_function",
/// role=lambda_role["arn"],
/// handler="index.handler",
/// runtime=aws.lambda_.Runtime.NODE_JS20D_X,
/// layers=[example.arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "my-shared-utilities",
/// });
///
/// // Use the layer in a Lambda function
/// var exampleFunction = new Aws.Lambda.Function("example", new()
/// {
/// Code = new FileArchive("function.zip"),
/// Name = "example_function",
/// Role = lambdaRole.Arn,
/// Handler = "index.handler",
/// Runtime = Aws.Lambda.Runtime.NodeJS20dX,
/// Layers = new[]
/// {
/// example.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName: "my-shared-utilities",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Use the layer in a Lambda function
/// _, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("function.zip"),
/// Name:    pulumi.String("example_function"),
/// Role:    pulumi.Any(lambdaRole.Arn),
/// Handler: pulumi.String("index.handler"),
/// Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
/// Layers: pulumi.StringArray{
/// pulumi.String(example.Arn),
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
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
/// final var example = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("my-shared-utilities")
/// .build());
///
/// // Use the layer in a Lambda function
/// var exampleFunction = new Function("exampleFunction", FunctionArgs.builder()
/// .code(new FileArchive("function.zip"))
/// .name("example_function")
/// .role(lambdaRole.arn())
/// .handler("index.handler")
/// .runtime("nodejs20.x")
/// .layers(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use the layer in a Lambda function
/// exampleFunction:
/// type: aws:lambda:Function
/// name: example
/// properties:
/// code:
/// fn::FileArchive: function.zip
/// name: example_function
/// role: ${lambdaRole.arn}
/// handler: index.handler
/// runtime: nodejs20.x
/// layers:
/// - ${example.arn}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getLayerVersion
/// arguments:
/// layerName: my-shared-utilities
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Get Specific Layer Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.lambda.getLayerVersion({
/// layerName: "production-utilities",
/// version: 5,
/// });
/// export const layerInfo = {
/// arn: example.then(example => example.arn),
/// version: example.then(example => example.version),
/// description: example.then(example => example.description),
/// };
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambda.get_layer_version(layer_name="production-utilities",
/// version=5)
/// pulumi.export("layerInfo", {
/// "arn": example.arn,
/// "version": example.version,
/// "description": example.description,
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
/// var example = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "production-utilities",
/// Version = 5,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["layerInfo"] =
/// {
/// { "arn", example.Apply(getLayerVersionResult => getLayerVersionResult.Arn) },
/// { "version", example.Apply(getLayerVersionResult => getLayerVersionResult.Version) },
/// { "description", example.Apply(getLayerVersionResult => getLayerVersionResult.Description) },
/// },
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName: "production-utilities",
/// Version:   pulumi.IntRef(5),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("layerInfo", pulumi.Map{
/// "arn":         example.Arn,
/// "version":     example.Version,
/// "description": example.Description,
/// })
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
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
/// final var example = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("production-utilities")
/// .version(5)
/// .build());
///
/// ctx.export("layerInfo", Map.ofEntries(
/// Map.entry("arn", example.arn()),
/// Map.entry("version", example.version()),
/// Map.entry("description", example.description())
/// ));
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:lambda:getLayerVersion
/// arguments:
/// layerName: production-utilities
/// version: 5
/// outputs:
/// layerInfo:
/// arn: ${example.arn}
/// version: ${example.version}
/// description: ${example.description}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Get Latest Compatible Layer Version
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Find latest layer version compatible with Python 3.12
/// const pythonLayer = aws.lambda.getLayerVersion({
/// layerName: "python-dependencies",
/// compatibleRuntime: "python3.12",
/// });
/// // Find latest layer version compatible with ARM64 architecture
/// const armLayer = aws.lambda.getLayerVersion({
/// layerName: "optimized-libraries",
/// compatibleArchitecture: "arm64",
/// });
/// // Use both layers in a function
/// const example = new aws.lambda.Function("example", {
/// code: new pulumi.asset.FileArchive("function.zip"),
/// name: "multi_layer_function",
/// role: lambdaRole.arn,
/// handler: "app.handler",
/// runtime: aws.lambda.Runtime.Python3d12,
/// architectures: ["arm64"],
/// layers: [
/// pythonLayer.then(pythonLayer => pythonLayer.arn),
/// armLayer.then(armLayer => armLayer.arn),
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Find latest layer version compatible with Python 3.12
/// python_layer = aws.lambda.get_layer_version(layer_name="python-dependencies",
/// compatible_runtime="python3.12")
/// # Find latest layer version compatible with ARM64 architecture
/// arm_layer = aws.lambda.get_layer_version(layer_name="optimized-libraries",
/// compatible_architecture="arm64")
/// # Use both layers in a function
/// example = aws.lambda_.Function("example",
/// code=pulumi.FileArchive("function.zip"),
/// name="multi_layer_function",
/// role=lambda_role["arn"],
/// handler="app.handler",
/// runtime=aws.lambda_.Runtime.PYTHON3D12,
/// architectures=["arm64"],
/// layers=[
/// python_layer.arn,
/// arm_layer.arn,
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Find latest layer version compatible with Python 3.12
/// var pythonLayer = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "python-dependencies",
/// CompatibleRuntime = "python3.12",
/// });
///
/// // Find latest layer version compatible with ARM64 architecture
/// var armLayer = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "optimized-libraries",
/// CompatibleArchitecture = "arm64",
/// });
///
/// // Use both layers in a function
/// var example = new Aws.Lambda.Function("example", new()
/// {
/// Code = new FileArchive("function.zip"),
/// Name = "multi_layer_function",
/// Role = lambdaRole.Arn,
/// Handler = "app.handler",
/// Runtime = Aws.Lambda.Runtime.Python3d12,
/// Architectures = new[]
/// {
/// "arm64",
/// },
/// Layers = new[]
/// {
/// pythonLayer.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
/// armLayer.Apply(getLayerVersionResult => getLayerVersionResult.Arn),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Find latest layer version compatible with Python 3.12
/// pythonLayer, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName:         "python-dependencies",
/// CompatibleRuntime: pulumi.StringRef("python3.12"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Find latest layer version compatible with ARM64 architecture
/// armLayer, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName:              "optimized-libraries",
/// CompatibleArchitecture: pulumi.StringRef("arm64"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Use both layers in a function
/// _, err = lambda.NewFunction(ctx, "example", &lambda.FunctionArgs{
/// Code:    pulumi.NewFileArchive("function.zip"),
/// Name:    pulumi.String("multi_layer_function"),
/// Role:    pulumi.Any(lambdaRole.Arn),
/// Handler: pulumi.String("app.handler"),
/// Runtime: pulumi.String(lambda.RuntimePython3d12),
/// Architectures: pulumi.StringArray{
/// pulumi.String("arm64"),
/// },
/// Layers: pulumi.StringArray{
/// pulumi.String(pythonLayer.Arn),
/// pulumi.String(armLayer.Arn),
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.asset.FileArchive;
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
/// // Find latest layer version compatible with Python 3.12
/// final var pythonLayer = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("python-dependencies")
/// .compatibleRuntime("python3.12")
/// .build());
///
/// // Find latest layer version compatible with ARM64 architecture
/// final var armLayer = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("optimized-libraries")
/// .compatibleArchitecture("arm64")
/// .build());
///
/// // Use both layers in a function
/// var example = new Function("example", FunctionArgs.builder()
/// .code(new FileArchive("function.zip"))
/// .name("multi_layer_function")
/// .role(lambdaRole.arn())
/// .handler("app.handler")
/// .runtime("python3.12")
/// .architectures("arm64")
/// .layers(
/// pythonLayer.arn(),
/// armLayer.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Use both layers in a function
/// example:
/// type: aws:lambda:Function
/// properties:
/// code:
/// fn::FileArchive: function.zip
/// name: multi_layer_function
/// role: ${lambdaRole.arn}
/// handler: app.handler
/// runtime: python3.12
/// architectures:
/// - arm64
/// layers:
/// - ${pythonLayer.arn}
/// - ${armLayer.arn}
/// variables:
/// # Find latest layer version compatible with Python 3.12
/// pythonLayer:
/// fn::invoke:
/// function: aws:lambda:getLayerVersion
/// arguments:
/// layerName: python-dependencies
/// compatibleRuntime: python3.12
/// # Find latest layer version compatible with ARM64 architecture
/// armLayer:
/// fn::invoke:
/// function: aws:lambda:getLayerVersion
/// arguments:
/// layerName: optimized-libraries
/// compatibleArchitecture: arm64
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Compare Layer Versions
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Get latest version
/// const latest = aws.lambda.getLayerVersion({
/// layerName: "shared-layer",
/// });
/// // Get specific version for comparison
/// const stable = aws.lambda.getLayerVersion({
/// layerName: "shared-layer",
/// version: 3,
/// });
/// const useLatestLayer = latest.then(latest => latest.version > 5);
/// const selectedLayer = useLatestLayer ? latest.then(latest => latest.arn) : stable.then(stable => stable.arn);
/// export const selectedLayerVersion = useLatestLayer ? latest.then(latest => latest.version) : stable.then(stable => stable.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Get latest version
/// latest = aws.lambda.get_layer_version(layer_name="shared-layer")
/// # Get specific version for comparison
/// stable = aws.lambda.get_layer_version(layer_name="shared-layer",
/// version=3)
/// use_latest_layer = latest.version > 5
/// selected_layer = latest.arn if use_latest_layer else stable.arn
/// pulumi.export("selectedLayerVersion", latest.version if use_latest_layer else stable.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Get latest version
/// var latest = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "shared-layer",
/// });
///
/// // Get specific version for comparison
/// var stable = Aws.Lambda.GetLayerVersion.Invoke(new()
/// {
/// LayerName = "shared-layer",
/// Version = 3,
/// });
///
/// var useLatestLayer = latest.Apply(getLayerVersionResult => getLayerVersionResult.Version) > 5;
///
/// var selectedLayer = useLatestLayer ? latest.Apply(getLayerVersionResult => getLayerVersionResult.Arn) : stable.Apply(getLayerVersionResult => getLayerVersionResult.Arn);
///
/// return new Dictionary<string, object?>
/// {
/// ["selectedLayerVersion"] = useLatestLayer ? latest.Apply(getLayerVersionResult => getLayerVersionResult.Version) : stable.Apply(getLayerVersionResult => getLayerVersionResult.Version),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Get latest version
/// latest, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName: "shared-layer",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// // Get specific version for comparison
/// stable, err := lambda.LookupLayerVersion(ctx, &lambda.LookupLayerVersionArgs{
/// LayerName: "shared-layer",
/// Version:   pulumi.IntRef(3),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// useLatestLayer := latest.Version > 5
/// var tmp0 *string
/// if useLatestLayer {
/// tmp0 = latest.Arn
/// } else {
/// tmp0 = stable.Arn
/// }
/// _ := tmp0
/// var tmp1 *int
/// if useLatestLayer {
/// tmp1 = latest.Version
/// } else {
/// tmp1 = stable.Version
/// }
/// ctx.Export("selectedLayerVersion", tmp1)
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
/// import com.pulumi.aws.lambda.LambdaFunctions;
/// import com.pulumi.aws.lambda.inputs.GetLayerVersionArgs;
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
/// // Get latest version
/// final var latest = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("shared-layer")
/// .build());
///
/// // Get specific version for comparison
/// final var stable = LambdaFunctions.getLayerVersion(GetLayerVersionArgs.builder()
/// .layerName("shared-layer")
/// .version(3)
/// .build());
///
/// final var useLatestLayer = latest.version() > 5;
///
/// final var selectedLayer = useLatestLayer ? latest.arn() : stable.arn();
///
/// ctx.export("selectedLayerVersion", useLatestLayer ? latest.version() : stable.version());
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLayerVersionResult> getLayerVersion(
  GetLayerVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getLayerVersion:getLayerVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLayerVersionResult.fromMap(result);
}
