import 'package:pulumi/pulumi.dart';
import 'get_network_acls_args.dart';
import 'get_network_acls_result.dart';

/// ## Example Usage
///
/// The following shows outputting all network ACL ids in a vpc.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const example = await aws.ec2.getNetworkAcls({
/// vpcId: vpcId,
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
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id)
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
/// var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
/// {
/// VpcId = vpcId,
/// });
///
/// return new Dictionary<string, object?>
/// {
/// ["example"] = example.Apply(getNetworkAclsResult => getNetworkAclsResult.Ids),
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
/// example, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// VpcId: pulumi.StringRef(vpcId),
/// }, nil)
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
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
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
/// final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
/// .vpcId(vpcId)
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
/// function: aws:ec2:getNetworkAcls
/// arguments:
/// vpcId: ${vpcId}
/// outputs:
/// example: ${example.ids}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example retrieves a list of all network ACL ids in a VPC with a custom
/// tag of `Tier` set to a value of "Private".
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkAcls({
/// vpcId: vpcId,
/// tags: {
/// Tier: "Private",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id,
/// tags={
/// "Tier": "Private",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
/// {
/// VpcId = vpcId,
/// Tags =
/// {
/// { "Tier", "Private" },
/// },
/// });
///
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
/// _, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// VpcId: pulumi.StringRef(vpcId),
/// Tags: map[string]interface{}{
/// "Tier": "Private",
/// },
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
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
/// final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
/// .vpcId(vpcId)
/// .tags(Map.of("Tier", "Private"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkAcls
/// arguments:
/// vpcId: ${vpcId}
/// tags:
/// Tier: Private
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example retrieves a network ACL id in a VPC which associated
/// with specific subnet.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkAcls({
/// vpcId: vpcId,
/// filters: [{
/// name: "association.subnet-id",
/// values: [test.id],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id,
/// filters=[{
/// "name": "association.subnet-id",
/// "values": [test["id"]],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
/// {
/// VpcId = vpcId,
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetNetworkAclsFilterInputArgs
/// {
/// Name = "association.subnet-id",
/// Values = new[]
/// {
/// test.Id,
/// },
/// },
/// },
/// });
///
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
/// _, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// VpcId: pulumi.StringRef(vpcId),
/// Filters: []ec2.GetNetworkAclsFilter{
/// {
/// Name: "association.subnet-id",
/// Values: interface{}{
/// test.Id,
/// },
/// },
/// },
/// }, nil);
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
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
/// final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
/// .vpcId(vpcId)
/// .filters(GetNetworkAclsFilterArgs.builder()
/// .name("association.subnet-id")
/// .values(test.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getNetworkAcls
/// arguments:
/// vpcId: ${vpcId}
/// filters:
/// - name: association.subnet-id
/// values:
/// - ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetNetworkAclsResult> getNetworkAcls(
  GetNetworkAclsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkAcls:getNetworkAcls',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkAclsResult.fromMap(result);
}
