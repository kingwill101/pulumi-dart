import 'package:pulumi/pulumi.dart';
import 'get_network_interfaces_args.dart';
import 'get_network_interfaces_result.dart';

/// ## Example Usage
///
/// The following shows outputting all network interface ids in a region.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.ec2.getNetworkInterfaces({});
/// return {
/// example: example.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces()
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkInterfaces.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
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
/// example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", example.Ids)
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
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
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
/// final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
/// .build());
///
/// ctx.export("example", example.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkInterfaces
/// arguments: {}
/// outputs:
/// example: ${example.ids}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example retrieves a list of all network interface ids with a custom tag of `Name` set to a value of <span pulumi-lang-nodejs="`test`" pulumi-lang-dotnet="`Test`" pulumi-lang-go="`test`" pulumi-lang-python="`test`" pulumi-lang-yaml="`test`" pulumi-lang-java="`test`">`test`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInterfaces({
/// tags: {
/// Name: "test",
/// },
/// });
/// export const example1 = example.then(example => example.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces(tags={
/// "Name": "test",
/// })
/// pulumi.export("example1", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkInterfaces.Invoke(new()
/// {
/// Tags =
/// {
/// { "Name", "test" },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["example1"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
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
/// example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{
/// Tags: map[string]interface{}{
/// "Name": "test",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("example1", example.Ids)
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
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
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
/// final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
/// .tags(Map.of("Name", "test"))
/// .build());
///
/// ctx.export("example1", example.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkInterfaces
/// arguments:
/// tags:
/// Name: test
/// outputs:
/// example1: ${example.ids}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example retrieves a network interface ids which associated
/// with specific subnet.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.ec2.getNetworkInterfaces({
/// filters: [{
/// name: "subnet-id",
/// values: [test.id],
/// }],
/// });
/// return {
/// example: example.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces(filters=[{
/// "name": "subnet-id",
/// "values": [test["id"]],
/// }])
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkInterfaces.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetNetworkInterfacesFilterInputArgs
/// {
/// Name = "subnet-id",
/// Values = new[]
/// {
/// test.Id,
/// },
/// },
/// },
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{
/// Filters: []ec2.GetNetworkInterfacesFilter{
/// {
/// Name: "subnet-id",
/// Values: interface{}{
/// test.Id,
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("example", example.Ids)
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
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
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
/// final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
/// .filters(GetNetworkInterfacesFilterArgs.builder()
/// .name("subnet-id")
/// .values(test.id())
/// .build())
/// .build());
///
/// ctx.export("example", example.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkInterfaces
/// arguments:
/// filters:
/// - name: subnet-id
/// values:
/// - ${test.id}
/// outputs:
/// example: ${example.ids}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkInterfacesResult> getNetworkInterfaces(
  GetNetworkInterfacesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInterfaces:getNetworkInterfaces',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfacesResult.fromMap(result);
}
