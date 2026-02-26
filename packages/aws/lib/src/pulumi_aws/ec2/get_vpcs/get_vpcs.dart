import 'package:pulumi/pulumi.dart';
import 'get_vpcs_args.dart';
import 'get_vpcs_result.dart';

/// This resource can be useful for getting back a list of VPC Ids for a region.
///
/// The following example retrieves a list of VPC Ids with a custom tag of <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> set to a value of "production".
///
/// ## Example Usage
///
/// The following shows outputting all VPC Ids.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const foo = await aws.ec2.getVpcs({
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
/// foo = aws.ec2.get_vpcs(tags={
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
/// var foo = Aws.Ec2.GetVpcs.Invoke(new()
/// {
/// Tags =
/// {
/// { "service", "production" },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["foo"] = foo.Apply(getVpcsResult => getVpcsResult.Ids),
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
/// foo, err := ec2.GetVpcs(ctx, &ec2.GetVpcsArgs{
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
/// import com.pulumi.aws.ec2.inputs.GetVpcsArgs;
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
/// final var foo = Ec2Functions.getVpcs(GetVpcsArgs.builder()
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
/// function: aws:ec2:getVpcs
/// arguments:
/// tags:
/// service: production
/// outputs:
/// foo: ${foo.ids}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// An example use case would be interpolate the <span pulumi-lang-nodejs="`aws.ec2.getVpcs`" pulumi-lang-dotnet="`aws.ec2.getVpcs`" pulumi-lang-go="`ec2.getVpcs`" pulumi-lang-python="`ec2_get_vpcs`" pulumi-lang-yaml="`aws.ec2.getVpcs`" pulumi-lang-java="`aws.ec2.getVpcs`">`aws.ec2.getVpcs`</span> output into <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span> of an<span pulumi-lang-nodejs=" aws.ec2.FlowLog " pulumi-lang-dotnet=" aws.ec2.FlowLog " pulumi-lang-go=" ec2.FlowLog " pulumi-lang-python=" ec2.FlowLog " pulumi-lang-yaml=" aws.ec2.FlowLog " pulumi-lang-java=" aws.ec2.FlowLog "> aws.ec2.FlowLog </span>resource.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const foo = await aws.ec2.getVpcs({});
/// const fooGetVpc = .map(__index => (await aws.ec2.getVpc({
/// id: foo.ids[__index],
/// })));
/// const testFlowLog: aws.ec2.FlowLog[] = [];
/// foo.ids.length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// testFlowLog.push(new aws.ec2.FlowLog(`test_flow_log-${range.value}`, {vpcId: fooGetVpc.apply(fooGetVpc => fooGetVpc[range.value].id)}));
/// }
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
/// foo = aws.ec2.get_vpcs()
/// foo_get_vpc = [aws.ec2.get_vpc(id=foo.ids[__index]) for __index in len(foo.ids).apply(lambda length: range(length))]
/// test_flow_log = []
/// def create_test_flow_log(range_body):
/// for range in [{"value": i} for i in range(0, range_body)]:
/// test_flow_log.append(aws.ec2.FlowLog(f"test_flow_log-{range['value']}", vpc_id=foo_get_vpc.apply(lambda foo_get_vpc: foo_get_vpc[range["value"]].id)))
///
/// (len(foo.ids)).apply(create_test_flow_log)
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
/// var foo = Aws.Ec2.GetVpcs.Invoke();
///
/// var fooGetVpc = ;
///
/// var testFlowLog = new List<Aws.Ec2.FlowLog>();
/// for (var rangeIndex = 0; rangeIndex < foo.Apply(getVpcsResult => getVpcsResult.Ids).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// testFlowLog.Add(new Aws.Ec2.FlowLog($"test_flow_log-{range.Value}", new()
/// {
/// VpcId = fooGetVpc.Apply(fooGetVpc => fooGetVpc[range.Value].Id),
/// }));
/// }
/// return new Dictionary<string, object?>
/// {
/// ["foo"] = foo.Apply(getVpcsResult => getVpcsResult.Ids),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcsResult> getVpcs(
  GetVpcsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcs:getVpcs',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcsResult.fromMap(result);
}
