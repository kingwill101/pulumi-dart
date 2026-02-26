import 'package:pulumi/pulumi.dart';
import 'get_web_acl_args.dart';
import 'get_web_acl_result.dart';

/// <span pulumi-lang-nodejs="`aws.waf.WebAcl`" pulumi-lang-dotnet="`aws.waf.WebAcl`" pulumi-lang-go="`waf.WebAcl`" pulumi-lang-python="`waf.WebAcl`" pulumi-lang-yaml="`aws.waf.WebAcl`" pulumi-lang-java="`aws.waf.WebAcl`">`aws.waf.WebAcl`</span> Retrieves a WAF Web ACL Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.waf.getWebAcl({
/// name: "tfWAFWebACL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.waf.get_web_acl(name="tfWAFWebACL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Waf.GetWebAcl.Invoke(new()
/// {
/// Name = "tfWAFWebACL",
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
/// _, err := waf.LookupWebAcl(ctx, &waf.LookupWebAclArgs{
/// Name: "tfWAFWebACL",
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
/// import com.pulumi.aws.waf.inputs.GetWebAclArgs;
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
/// final var example = WafFunctions.getWebAcl(GetWebAclArgs.builder()
/// .name("tfWAFWebACL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:waf:getWebAcl
/// arguments:
/// name: tfWAFWebACL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebAclResult> getWebAcl(
  GetWebAclArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getWebAcl:getWebAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult.fromMap(result);
}
