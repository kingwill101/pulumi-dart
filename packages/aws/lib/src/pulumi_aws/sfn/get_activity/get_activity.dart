import 'package:pulumi/pulumi.dart';
import 'get_activity_args.dart';
import 'get_activity_result.dart';

/// Provides a Step Functions Activity data source
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnActivity = aws.sfn.getActivity({
/// name: "my-activity",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_activity = aws.sfn.get_activity(name="my-activity")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var sfnActivity = Aws.Sfn.GetActivity.Invoke(new()
/// {
/// Name = "my-activity",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sfn.LookupActivity(ctx, &sfn.LookupActivityArgs{
/// Name: pulumi.StringRef("my-activity"),
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
/// import com.pulumi.aws.sfn.SfnFunctions;
/// import com.pulumi.aws.sfn.inputs.GetActivityArgs;
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
/// final var sfnActivity = SfnFunctions.getActivity(GetActivityArgs.builder()
/// .name("my-activity")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// sfnActivity:
/// fn::invoke:
/// function: aws:sfn:getActivity
/// arguments:
/// name: my-activity
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetActivityResult> getActivity(
  GetActivityArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sfn/getActivity:getActivity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetActivityResult.fromMap(result);
}
