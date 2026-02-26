import 'package:pulumi/pulumi.dart';
import 'get_local_gateways_args.dart';
import 'get_local_gateways_result.dart';

/// Provides information for multiple EC2 Local Gateways, such as their identifiers.
///
/// ## Example Usage
///
/// The following example retrieves Local Gateways with a resource tag of <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> set to <span pulumi-lang-nodejs="`production`" pulumi-lang-dotnet="`Production`" pulumi-lang-go="`production`" pulumi-lang-python="`production`" pulumi-lang-yaml="`production`" pulumi-lang-java="`production`">`production`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const foo = await aws.ec2.getLocalGateways({
/// tags: {
/// service: "production",
/// },
/// });
/// return {
/// foo: foo.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_local_gateways(tags={
/// "service": "production",
/// })
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = Aws.Ec2.GetLocalGateways.Invoke(new()
/// {
/// Tags =
/// {
/// { "service", "production" },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["foo"] = foo.Apply(getLocalGatewaysResult => getLocalGatewaysResult.Ids),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foo, err := ec2.GetLocalGateways(ctx, &ec2.GetLocalGatewaysArgs{
/// Tags: map[string]interface{}{
/// "service": "production",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("foo", foo.Ids)
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewaysArgs;
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
/// final var foo = Ec2Functions.getLocalGateways(GetLocalGatewaysArgs.builder()
/// .tags(Map.of("service", "production"))
/// .build());
///
/// ctx.export("foo", foo.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// foo:
/// fn::invoke:
/// function: aws:ec2:getLocalGateways
/// arguments:
/// tags:
/// service: production
/// outputs:
/// foo: ${foo.ids}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocalGatewaysResult> getLocalGateways(
  GetLocalGatewaysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGateways:getLocalGateways',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewaysResult.fromMap(result);
}
