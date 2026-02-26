import 'package:pulumi/pulumi.dart';
import 'get_inference_profiles_args.dart';
import 'get_inference_profiles_result.dart';

/// Data source for managing AWS Bedrock Inference Profiles.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var test = Aws.Bedrock.GetInferenceProfiles.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{}, nil)
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
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfilesArgs;
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
/// final var test = BedrockFunctions.getInferenceProfiles(GetInferenceProfilesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:bedrock:getInferenceProfiles
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter by Type
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.bedrock.getInferenceProfiles({
/// type: "APPLICATION",
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
/// var test = Aws.Bedrock.GetInferenceProfiles.Invoke(new()
/// {
/// Type = "APPLICATION",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{
/// Type: pulumi.StringRef("APPLICATION"),
/// }, nil)
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
/// import com.pulumi.aws.bedrock.BedrockFunctions;
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfilesArgs;
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
/// final var test = BedrockFunctions.getInferenceProfiles(GetInferenceProfilesArgs.builder()
/// .type("APPLICATION")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:bedrock:getInferenceProfiles
/// arguments:
/// type: APPLICATION
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInferenceProfilesResult> getInferenceProfiles(
  GetInferenceProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfiles:getInferenceProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfilesResult.fromMap(result);
}
