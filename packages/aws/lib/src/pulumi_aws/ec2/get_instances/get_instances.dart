import 'package:pulumi/pulumi.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';

/// Use this data source to get IDs or IPs of Amazon EC2 instances to be referenced elsewhere,
/// e.g., to allow easier migration from another management solution
/// or to make it easier for an operator to connect through bastion host(s).
///
///
///
///
///
/// > **Note:** It's strongly discouraged to use this data source for querying ephemeral
/// instances (e.g., managed via autoscaling group), as the output may change at any time
/// and you'd need to re-run <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> every time an instance comes up or dies.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getInstances({
/// instanceTags: {
/// Role: "HardWorker",
/// },
/// filters: [{
/// name: "instance.group-id",
/// values: ["sg-12345678"],
/// }],
/// instanceStateNames: [
/// "running",
/// "stopped",
/// ],
/// });
/// const testEip: aws.ec2.Eip[] = [];
/// test.then(test => test.ids).length.apply(rangeBody => {
/// for (const range = {value: 0}; range.value < rangeBody; range.value++) {
/// testEip.push(new aws.ec2.Eip(`test-${range.value}`, {instance: test.then(test => test.ids[range.value])}));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_instances(instance_tags={
/// "Role": "HardWorker",
/// },
/// filters=[{
/// "name": "instance.group-id",
/// "values": ["sg-12345678"],
/// }],
/// instance_state_names=[
/// "running",
/// "stopped",
/// ])
/// test_eip = []
/// def create_test(range_body):
/// for range in [{"value": i} for i in range(0, range_body)]:
/// test_eip.append(aws.ec2.Eip(f"test-{range['value']}", instance=test.ids[range["value"]]))
///
/// (len(test.ids)).apply(create_test)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2.GetInstances.Invoke(new()
/// {
/// InstanceTags =
/// {
/// { "Role", "HardWorker" },
/// },
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetInstancesFilterInputArgs
/// {
/// Name = "instance.group-id",
/// Values = new[]
/// {
/// "sg-12345678",
/// },
/// },
/// },
/// InstanceStateNames = new[]
/// {
/// "running",
/// "stopped",
/// },
/// });
///
/// var testEip = new List<Aws.Ec2.Eip>();
/// for (var rangeIndex = 0; rangeIndex < test.Apply(getInstancesResult => getInstancesResult.Ids).Length; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// testEip.Add(new Aws.Ec2.Eip($"test-{range.Value}", new()
/// {
/// Instance = test.Apply(getInstancesResult => getInstancesResult.Ids)[range.Value],
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := ec2.GetInstances(ctx, &ec2.GetInstancesArgs{
/// InstanceTags: map[string]interface{}{
/// "Role": "HardWorker",
/// },
/// Filters: []ec2.GetInstancesFilter{
/// {
/// Name: "instance.group-id",
/// Values: []string{
/// "sg-12345678",
/// },
/// },
/// },
/// InstanceStateNames: []string{
/// "running",
/// "stopped",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var testEip []*ec2.Eip
/// for index := 0; index < int(len(test.Ids)); index++ {
/// key0 := index
/// val0 := index
/// __res, err := ec2.NewEip(ctx, fmt.Sprintf("test-%v", key0), &ec2.EipArgs{
/// Instance: pulumi.String(test.Ids[val0]),
/// })
/// if err != nil {
/// return err
/// }
/// testEip = append(testEip, __res)
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// final var test = Ec2Functions.getInstances(GetInstancesArgs.builder()
/// .instanceTags(Map.of("Role", "HardWorker"))
/// .filters(GetInstancesFilterArgs.builder()
/// .name("instance.group-id")
/// .values("sg-12345678")
/// .build())
/// .instanceStateNames(
/// "running",
/// "stopped")
/// .build());
///
/// for (var i = 0; i < test.ids().length(); i++) {
/// new Eip("testEip-" + i, EipArgs.builder()
/// .instance(test.ids()[range.value()])
/// .build());
///
///
/// }
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstances:getInstances',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}
