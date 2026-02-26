import 'package:pulumi/pulumi.dart';
import 'get_ipset_args.dart';
import 'get_ipset_result.dart';

/// <span pulumi-lang-nodejs="`aws.waf.IpSet`" pulumi-lang-dotnet="`aws.waf.IpSet`" pulumi-lang-go="`waf.IpSet`" pulumi-lang-python="`waf.IpSet`" pulumi-lang-yaml="`aws.waf.IpSet`" pulumi-lang-java="`aws.waf.IpSet`">`aws.waf.IpSet`</span> Retrieves a WAF IP Set Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getIpset({
/// name: "tfWAFIPSet",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_ipset(name="tfWAFIPSet")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Waf.GetIpset.Invoke(new()
/// {
/// Name = "tfWAFIPSet",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := waf.GetIpset(ctx, &waf.GetIpsetArgs{
/// Name: "tfWAFIPSet",
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
/// import com.pulumi.aws.waf.WafFunctions;
/// import com.pulumi.aws.waf.inputs.GetIpsetArgs;
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
/// final var example = WafFunctions.getIpset(GetIpsetArgs.builder()
/// .name("tfWAFIPSet")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:waf:getIpset
/// arguments:
/// name: tfWAFIPSet
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIpsetResult> getIpset(
  GetIpsetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getIpset:getIpset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpsetResult.fromMap(result);
}
