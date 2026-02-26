import 'package:pulumi/pulumi.dart';
import 'get_inference_profile_args.dart';
import 'get_inference_profile_result.dart';

/// Data source for managing an AWS Bedrock Inference Profile.
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
/// const testGetInferenceProfile = test.then(test => aws.bedrock.getInferenceProfile({
/// inferenceProfileId: test.inferenceProfileSummaries?.[0]?.inferenceProfileId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.bedrock.get_inference_profiles()
/// test_get_inference_profile = aws.bedrock.get_inference_profile(inference_profile_id=test.inference_profile_summaries[0].inference_profile_id)
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
/// var testGetInferenceProfile = Aws.Bedrock.GetInferenceProfile.Invoke(new()
/// {
/// InferenceProfileId = test.Apply(getInferenceProfilesResult => getInferenceProfilesResult.InferenceProfileSummaries[0]?.InferenceProfileId),
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
/// test, err := bedrock.GetInferenceProfiles(ctx, &bedrock.GetInferenceProfilesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.LookupInferenceProfile(ctx, &bedrock.LookupInferenceProfileArgs{
/// InferenceProfileId: test.InferenceProfileSummaries[0].InferenceProfileId,
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
/// import com.pulumi.aws.bedrock.inputs.GetInferenceProfileArgs;
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
/// final var testGetInferenceProfile = BedrockFunctions.getInferenceProfile(GetInferenceProfileArgs.builder()
/// .inferenceProfileId(test.inferenceProfileSummaries()[0].inferenceProfileId())
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
/// testGetInferenceProfile:
/// fn::invoke:
/// function: aws:bedrock:getInferenceProfile
/// arguments:
/// inferenceProfileId: ${test.inferenceProfileSummaries[0].inferenceProfileId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInferenceProfileResult> getInferenceProfile(
  GetInferenceProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:bedrock/getInferenceProfile:getInferenceProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInferenceProfileResult.fromMap(result);
}
