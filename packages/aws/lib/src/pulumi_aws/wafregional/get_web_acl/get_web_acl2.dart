import 'package:pulumi/pulumi.dart';
import 'get_web_acl_args2.dart';
import 'get_web_acl_result2.dart';

/// <span pulumi-lang-nodejs="`aws.wafregional.WebAcl`" pulumi-lang-dotnet="`aws.wafregional.WebAcl`" pulumi-lang-go="`wafregional.WebAcl`" pulumi-lang-python="`wafregional.WebAcl`" pulumi-lang-yaml="`aws.wafregional.WebAcl`" pulumi-lang-java="`aws.wafregional.WebAcl`">`aws.wafregional.WebAcl`</span> Retrieves a WAF Regional Web ACL Resource Id.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.wafregional.getWebAcl({
/// name: "tfWAFRegionalWebACL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.get_web_acl(name="tfWAFRegionalWebACL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.WafRegional.GetWebAcl.Invoke(new()
/// {
/// Name = "tfWAFRegionalWebACL",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafregional.LookupWebAcl(ctx, &wafregional.LookupWebAclArgs{
/// Name: "tfWAFRegionalWebACL",
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
/// import com.pulumi.aws.wafregional.WafregionalFunctions;
/// import com.pulumi.aws.wafregional.inputs.GetWebAclArgs;
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
/// final var example = WafregionalFunctions.getWebAcl(GetWebAclArgs.builder()
/// .name("tfWAFRegionalWebACL")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:wafregional:getWebAcl
/// arguments:
/// name: tfWAFRegionalWebACL
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWebAclResult2> getWebAcl2(
  GetWebAclArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getWebAcl:getWebAcl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAclResult2.fromMap(result);
}
