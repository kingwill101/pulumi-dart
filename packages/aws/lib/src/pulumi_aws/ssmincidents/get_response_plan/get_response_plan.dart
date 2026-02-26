import 'package:pulumi/pulumi.dart';
import 'get_response_plan_args.dart';
import 'get_response_plan_result.dart';

/// Use this data source to manage a response plan in AWS Systems Manager Incident Manager.
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
/// const example = new aws.ssmincidents.ResponsePlan("example", {arn: "exampleARN"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmincidents.ResponsePlan("example", arn="exampleARN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsmIncidents.ResponsePlan("example", new()
/// {
/// Arn = "exampleARN",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmincidents.NewResponsePlan(ctx, "example", &ssmincidents.ResponsePlanArgs{
/// Arn: "exampleARN",
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
/// import com.pulumi.aws.ssmincidents.ResponsePlan;
/// import com.pulumi.aws.ssmincidents.ResponsePlanArgs;
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
/// var example = new ResponsePlan("example", ResponsePlanArgs.builder()
/// .arn("exampleARN")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssmincidents:ResponsePlan
/// properties:
/// arn: exampleARN
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResponsePlanResult> getResponsePlan(
  GetResponsePlanArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getResponsePlan:getResponsePlan',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResponsePlanResult.fromMap(result);
}
