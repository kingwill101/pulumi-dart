import 'package:pulumi/pulumi.dart';
import 'get_prefix_list_args.dart';
import 'get_prefix_list_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.getPrefixList`" pulumi-lang-dotnet="`aws.ec2.getPrefixList`" pulumi-lang-go="`ec2.getPrefixList`" pulumi-lang-python="`ec2_get_prefix_list`" pulumi-lang-yaml="`aws.ec2.getPrefixList`" pulumi-lang-java="`aws.ec2.getPrefixList`">`aws.ec2.getPrefixList`</span> provides details about a specific AWS prefix list (PL)
/// in the current region.
///
/// This can be used both to validate a prefix list given in a variable
/// and to obtain the CIDR blocks (IP address ranges) for the associated
/// AWS service. The latter may be useful e.g., for adding network ACL
/// rules.
///
/// The<span pulumi-lang-nodejs=" aws.ec2.ManagedPrefixList " pulumi-lang-dotnet=" aws.ec2.ManagedPrefixList " pulumi-lang-go=" ec2.ManagedPrefixList " pulumi-lang-python=" ec2.ManagedPrefixList " pulumi-lang-yaml=" aws.ec2.ManagedPrefixList " pulumi-lang-java=" aws.ec2.ManagedPrefixList "> aws.ec2.ManagedPrefixList </span>data source is normally more appropriate to use given it can return customer-managed prefix list info, as well as additional attributes.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const privateS3VpcEndpoint = new aws.ec2.VpcEndpoint("private_s3", {
/// vpcId: foo.id,
/// serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// const privateS3 = aws.ec2.getPrefixListOutput({
/// prefixListId: privateS3VpcEndpoint.prefixListId,
/// });
/// const bar = new aws.ec2.NetworkAcl("bar", {vpcId: foo.id});
/// const privateS3NetworkAclRule = new aws.ec2.NetworkAclRule("private_s3", {
/// networkAclId: bar.id,
/// ruleNumber: 200,
/// egress: false,
/// protocol: "tcp",
/// ruleAction: "allow",
/// cidrBlock: privateS3.apply(privateS3 => privateS3.cidrBlocks?.[0]),
/// fromPort: 443,
/// toPort: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// private_s3_vpc_endpoint = aws.ec2.VpcEndpoint("private_s3",
/// vpc_id=foo["id"],
/// service_name="com.amazonaws.us-west-2.s3")
/// private_s3 = aws.ec2.get_prefix_list_output(prefix_list_id=private_s3_vpc_endpoint.prefix_list_id)
/// bar = aws.ec2.NetworkAcl("bar", vpc_id=foo["id"])
/// private_s3_network_acl_rule = aws.ec2.NetworkAclRule("private_s3",
/// network_acl_id=bar.id,
/// rule_number=200,
/// egress=False,
/// protocol="tcp",
/// rule_action="allow",
/// cidr_block=private_s3.cidr_blocks[0],
/// from_port=443,
/// to_port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var privateS3VpcEndpoint = new Aws.Ec2.VpcEndpoint("private_s3", new()
/// {
/// VpcId = foo.Id,
/// ServiceName = "com.amazonaws.us-west-2.s3",
/// });
///
/// var privateS3 = Aws.Ec2.GetPrefixList.Invoke(new()
/// {
/// PrefixListId = privateS3VpcEndpoint.PrefixListId,
/// });
///
/// var bar = new Aws.Ec2.NetworkAcl("bar", new()
/// {
/// VpcId = foo.Id,
/// });
///
/// var privateS3NetworkAclRule = new Aws.Ec2.NetworkAclRule("private_s3", new()
/// {
/// NetworkAclId = bar.Id,
/// RuleNumber = 200,
/// Egress = false,
/// Protocol = "tcp",
/// RuleAction = "allow",
/// CidrBlock = privateS3.Apply(getPrefixListResult => getPrefixListResult.CidrBlocks[0]),
/// FromPort = 443,
/// ToPort = 443,
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
/// privateS3VpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "private_s3", &ec2.VpcEndpointArgs{
/// VpcId:       pulumi.Any(foo.Id),
/// ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
/// })
/// if err != nil {
/// return err
/// }
/// privateS3 := ec2.GetPrefixListOutput(ctx, ec2.GetPrefixListOutputArgs{
/// PrefixListId: privateS3VpcEndpoint.PrefixListId,
/// }, nil)
/// bar, err := ec2.NewNetworkAcl(ctx, "bar", &ec2.NetworkAclArgs{
/// VpcId: pulumi.Any(foo.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewNetworkAclRule(ctx, "private_s3", &ec2.NetworkAclRuleArgs{
/// NetworkAclId: bar.ID(),
/// RuleNumber:   pulumi.Int(200),
/// Egress:       pulumi.Bool(false),
/// Protocol:     pulumi.String("tcp"),
/// RuleAction:   pulumi.String("allow"),
/// CidrBlock: pulumi.String(privateS3.ApplyT(func(privateS3 ec2.GetPrefixListResult) (*string, error) {
/// return &privateS3.CidrBlocks[0], nil
/// }).(pulumi.StringPtrOutput)),
/// FromPort: pulumi.Int(443),
/// ToPort:   pulumi.Int(443),
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
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPrefixListArgs;
/// import com.pulumi.aws.ec2.NetworkAcl;
/// import com.pulumi.aws.ec2.NetworkAclArgs;
/// import com.pulumi.aws.ec2.NetworkAclRule;
/// import com.pulumi.aws.ec2.NetworkAclRuleArgs;
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
/// var privateS3VpcEndpoint = new VpcEndpoint("privateS3VpcEndpoint", VpcEndpointArgs.builder()
/// .vpcId(foo.id())
/// .serviceName("com.amazonaws.us-west-2.s3")
/// .build());
///
/// final var privateS3 = Ec2Functions.getPrefixList(GetPrefixListArgs.builder()
/// .prefixListId(privateS3VpcEndpoint.prefixListId())
/// .build());
///
/// var bar = new NetworkAcl("bar", NetworkAclArgs.builder()
/// .vpcId(foo.id())
/// .build());
///
/// var privateS3NetworkAclRule = new NetworkAclRule("privateS3NetworkAclRule", NetworkAclRuleArgs.builder()
/// .networkAclId(bar.id())
/// .ruleNumber(200)
/// .egress(false)
/// .protocol("tcp")
/// .ruleAction("allow")
/// .cidrBlock(privateS3.applyValue(_privateS3 -> _privateS3.cidrBlocks()[0]))
/// .fromPort(443)
/// .toPort(443)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// privateS3VpcEndpoint:
/// type: aws:ec2:VpcEndpoint
/// name: private_s3
/// properties:
/// vpcId: ${foo.id}
/// serviceName: com.amazonaws.us-west-2.s3
/// bar:
/// type: aws:ec2:NetworkAcl
/// properties:
/// vpcId: ${foo.id}
/// privateS3NetworkAclRule:
/// type: aws:ec2:NetworkAclRule
/// name: private_s3
/// properties:
/// networkAclId: ${bar.id}
/// ruleNumber: 200
/// egress: false
/// protocol: tcp
/// ruleAction: allow
/// cidrBlock: ${privateS3.cidrBlocks[0]}
/// fromPort: 443
/// toPort: 443
/// variables:
/// privateS3:
/// fn::invoke:
/// function: aws:ec2:getPrefixList
/// arguments:
/// prefixListId: ${privateS3VpcEndpoint.prefixListId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getPrefixList({
/// filters: [{
/// name: "prefix-list-id",
/// values: ["pl-68a54001"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_prefix_list(filters=[{
/// "name": "prefix-list-id",
/// "values": ["pl-68a54001"],
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
/// var test = Aws.Ec2.GetPrefixList.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetPrefixListFilterInputArgs
/// {
/// Name = "prefix-list-id",
/// Values = new[]
/// {
/// "pl-68a54001",
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
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.GetPrefixList(ctx, &ec2.GetPrefixListArgs{
/// Filters: []ec2.GetPrefixListFilter{
/// {
/// Name: "prefix-list-id",
/// Values: []string{
/// "pl-68a54001",
/// },
/// },
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
/// import com.pulumi.aws.ec2.inputs.GetPrefixListArgs;
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
/// final var test = Ec2Functions.getPrefixList(GetPrefixListArgs.builder()
/// .filters(GetPrefixListFilterArgs.builder()
/// .name("prefix-list-id")
/// .values("pl-68a54001")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getPrefixList
/// arguments:
/// filters:
/// - name: prefix-list-id
/// values:
/// - pl-68a54001
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPrefixListResult> getPrefixList(
  GetPrefixListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPrefixList:getPrefixList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPrefixListResult.fromMap(result);
}
