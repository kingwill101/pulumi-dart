import 'package:pulumi/pulumi.dart';
import 'get_ip_set_args.dart';
import 'get_ip_set_result.dart';

/// Retrieves the summary of a WAFv2 IP Set.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafv2.getIpSet({
/// name: "some-ip-set",
/// scope: "REGIONAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.get_ip_set(name="some-ip-set",
/// scope="REGIONAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.WafV2.GetIpSet.Invoke(new()
/// {
/// Name = "some-ip-set",
/// Scope = "REGIONAL",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafv2.LookupIpSet(ctx, &wafv2.LookupIpSetArgs{
/// Name:  "some-ip-set",
/// Scope: "REGIONAL",
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
/// import com.pulumi.aws.wafv2.Wafv2Functions;
/// import com.pulumi.aws.wafv2.inputs.GetIpSetArgs;
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
/// final var example = Wafv2Functions.getIpSet(GetIpSetArgs.builder()
/// .name("some-ip-set")
/// .scope("REGIONAL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:wafv2:getIpSet
/// arguments:
/// name: some-ip-set
/// scope: REGIONAL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIpSetResult> getIpSet(
  GetIpSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafv2/getIpSet:getIpSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpSetResult.fromMap(result);
}
