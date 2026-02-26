import 'package:pulumi/pulumi.dart';
import 'get_log_view_iam_policy_args.dart';
import 'get_log_view_iam_policy_result.dart';

/// Retrieves the current IAM policy data for logview
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.logging.getLogViewIamPolicy({
/// parent: loggingLogView.parent,
/// location: loggingLogView.location,
/// bucket: loggingLogView.bucket,
/// name: loggingLogView.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.logging.get_log_view_iam_policy(parent=logging_log_view["parent"],
/// location=logging_log_view["location"],
/// bucket=logging_log_view["bucket"],
/// name=logging_log_view["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Logging.GetLogViewIamPolicy.Invoke(new()
/// {
/// Parent = loggingLogView.Parent,
/// Location = loggingLogView.Location,
/// Bucket = loggingLogView.Bucket,
/// Name = loggingLogView.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := logging.LookupLogViewIamPolicy(ctx, &logging.LookupLogViewIamPolicyArgs{
/// Parent:   loggingLogView.Parent,
/// Location: pulumi.StringRef(loggingLogView.Location),
/// Bucket:   loggingLogView.Bucket,
/// Name:     loggingLogView.Name,
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
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetLogViewIamPolicyArgs;
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
/// final var policy = LoggingFunctions.getLogViewIamPolicy(GetLogViewIamPolicyArgs.builder()
/// .parent(loggingLogView.parent())
/// .location(loggingLogView.location())
/// .bucket(loggingLogView.bucket())
/// .name(loggingLogView.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:logging:getLogViewIamPolicy
/// arguments:
/// parent: ${loggingLogView.parent}
/// location: ${loggingLogView.location}
/// bucket: ${loggingLogView.bucket}
/// name: ${loggingLogView.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLogViewIamPolicyResult> getLogViewIamPolicy(
  GetLogViewIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getLogViewIamPolicy:getLogViewIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogViewIamPolicyResult.fromMap(result);
}
