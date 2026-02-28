import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_args.dart';
import 'proxy_auth.dart';

/// Provides an RDS DB proxy resource. For additional information, see the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy.html).
///
/// > **Note:** Not all Availability Zones (AZs) support DB proxies. Specifying `vpc_subnet_ids` for AZs that do not support proxies will not trigger an error as long as at least one `vpc_subnet_id` is valid. However, this will cause Terraform to continuously detect differences between the configuration and the actual infrastructure. Refer to the Unsupported Availability Zones section below for potential workarounds.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Proxy("example", {
///     name: "example",
///     debugLogging: false,
///     engineFamily: "MYSQL",
///     idleClientTimeout: 1800,
///     requireTls: true,
///     roleArn: exampleAwsIamRole.arn,
///     vpcSecurityGroupIds: [exampleAwsSecurityGroup.id],
///     vpcSubnetIds: [exampleAwsSubnet.id],
///     auths: [{
///         authScheme: "SECRETS",
///         description: "example",
///         iamAuth: "DISABLED",
///         secretArn: exampleAwsSecretsmanagerSecret.arn,
///     }],
///     tags: {
///         Name: "example",
///         Key: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Proxy("example",
///     name="example",
///     debug_logging=False,
///     engine_family="MYSQL",
///     idle_client_timeout=1800,
///     require_tls=True,
///     role_arn=example_aws_iam_role["arn"],
///     vpc_security_group_ids=[example_aws_security_group["id"]],
///     vpc_subnet_ids=[example_aws_subnet["id"]],
///     auths=[{
///         "auth_scheme": "SECRETS",
///         "description": "example",
///         "iam_auth": "DISABLED",
///         "secret_arn": example_aws_secretsmanager_secret["arn"],
///     }],
///     tags={
///         "Name": "example",
///         "Key": "value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Proxy("example", new()
///     {
///         Name = "example",
///         DebugLogging = false,
///         EngineFamily = "MYSQL",
///         IdleClientTimeout = 1800,
///         RequireTls = true,
///         RoleArn = exampleAwsIamRole.Arn,
///         VpcSecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         VpcSubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         Auths = new[]
///         {
///             new Aws.Rds.Inputs.ProxyAuthArgs
///             {
///                 AuthScheme = "SECRETS",
///                 Description = "example",
///                 IamAuth = "DISABLED",
///                 SecretArn = exampleAwsSecretsmanagerSecret.Arn,
///             },
///         },
///         Tags =
///         {
///             { "Name", "example" },
///             { "Key", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewProxy(ctx, "example", &rds.ProxyArgs{
/// 			Name:              pulumi.String("example"),
/// 			DebugLogging:      pulumi.Bool(false),
/// 			EngineFamily:      pulumi.String("MYSQL"),
/// 			IdleClientTimeout: pulumi.Int(1800),
/// 			RequireTls:        pulumi.Bool(true),
/// 			RoleArn:           pulumi.Any(exampleAwsIamRole.Arn),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			Auths: rds.ProxyAuthArray{
/// 				&rds.ProxyAuthArgs{
/// 					AuthScheme:  pulumi.String("SECRETS"),
/// 					Description: pulumi.String("example"),
/// 					IamAuth:     pulumi.String("DISABLED"),
/// 					SecretArn:   pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example"),
/// 				"Key":  pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Proxy;
/// import com.pulumi.aws.rds.ProxyArgs;
/// import com.pulumi.aws.rds.inputs.ProxyAuthArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Proxy("example", ProxyArgs.builder()
///             .name("example")
///             .debugLogging(false)
///             .engineFamily("MYSQL")
///             .idleClientTimeout(1800)
///             .requireTls(true)
///             .roleArn(exampleAwsIamRole.arn())
///             .vpcSecurityGroupIds(exampleAwsSecurityGroup.id())
///             .vpcSubnetIds(exampleAwsSubnet.id())
///             .auths(ProxyAuthArgs.builder()
///                 .authScheme("SECRETS")
///                 .description("example")
///                 .iamAuth("DISABLED")
///                 .secretArn(exampleAwsSecretsmanagerSecret.arn())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Name", "example"),
///                 Map.entry("Key", "value")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Proxy
///     properties:
///       name: example
///       debugLogging: false
///       engineFamily: MYSQL
///       idleClientTimeout: 1800
///       requireTls: true
///       roleArn: ${exampleAwsIamRole.arn}
///       vpcSecurityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       vpcSubnetIds:
///         - ${exampleAwsSubnet.id}
///       auths:
///         - authScheme: SECRETS
///           description: example
///           iamAuth: DISABLED
///           secretArn: ${exampleAwsSecretsmanagerSecret.arn}
///       tags:
///         Name: example
///         Key: value
/// ```
///
///
/// ### Unsupported Availability Zones
///
/// Terraform may report constant differences if you use `vpc_subnet_ids` that correspond to Availability Zones (AZs) that do not support a DB proxy. While this typically does not result in an error, AWS only returns `vpc_subnet_ids` for AZs that support DB proxies. As a result, Terraform detects a mismatch between your configuration and the actual infrastructure, leading it to report that changes are required. Below are some ways to avoid this issue.
///
/// One solution is to exclude AZs that do not support DB proxies by using the `aws.getAvailabilityZones` data source. The example below demonstrates how to configure this for the `us-east-1` region, excluding the `use1-az3` AZ. (Keep in mind that AZ names can vary between accounts, while AZ IDs remain consistent.) If the `us-east-1` region has six AZs in total and you aim to configure the maximum number of subnets, you would exclude one AZ and configure five subnets:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const available = aws.getAvailabilityZones({
///     excludeZoneIds: ["use1-az3"],
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet: aws.ec2.Subnet[] = [];
/// for (const range = {value: 0}; range.value < 5; range.value++) {
///     exampleSubnet.push(new aws.ec2.Subnet(`example-${range.value}`, {
///         cidrBlock: example.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///             input: cidrBlock,
///             newbits: 8,
///             netnum: range.value,
///         })).apply(invoke => invoke.result),
///         availabilityZone: available.then(available => available.names[range.value]),
///         vpcId: example.id,
///     }));
/// }
/// const exampleProxy = new aws.rds.Proxy("example", {
///     name: "example",
///     vpcSubnetIds: [exampleSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// available = aws.get_availability_zones(exclude_zone_ids=["use1-az3"],
///     state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = []
/// for range in [{"value": i} for i in range(0, 5)]:
///     example_subnet.append(aws.ec2.Subnet(f"example-{range['value']}",
///         cidr_block=example.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///             newbits=8,
///             netnum=range["value"])).apply(lambda invoke: invoke.result),
///         availability_zone=available.names[range["value"]],
///         vpc_id=example.id))
/// example_proxy = aws.rds.Proxy("example",
///     name="example",
///     vpc_subnet_ids=[example_subnet.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         ExcludeZoneIds = new[]
///         {
///             "use1-az3",
///         },
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSubnet = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 5; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleSubnet.Add(new Aws.Ec2.Subnet($"example-{range.Value}", new()
///         {
///             CidrBlock = example.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = cidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             })).Apply(invoke => invoke.Result),
///             AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
///             VpcId = example.Id,
///         }));
///     }
///     var exampleProxy = new Aws.Rds.Proxy("example", new()
///     {
///         Name = "example",
///         VpcSubnetIds = new[]
///         {
///             exampleSubnet.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// ExcludeZoneIds: []string{
/// "use1-az3",
/// },
/// State: pulumi.StringRef("available"),
/// Filters: []aws.GetAvailabilityZonesFilter{
/// {
/// Name: "opt-in-status",
/// Values: []string{
/// "opt-in-not-required",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: val0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var exampleSubnet []*ec2.Subnet
/// for index := 0; index < 5; index++ {
///     key0 := index
///     val0 := index
/// __res, err := ec2.NewSubnet(ctx, fmt.Sprintf("example-%v", key0), &ec2.SubnetArgs{
/// CidrBlock: pulumi.String(example.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// AvailabilityZone: pulumi.String(available.Names[val0]),
/// VpcId: example.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSubnet = append(exampleSubnet, __res)
/// }
/// _, err = rds.NewProxy(ctx, "example", &rds.ProxyArgs{
/// Name: pulumi.String("example"),
/// VpcSubnetIds: pulumi.StringArray{
/// exampleSubnet.ID(),
/// },
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.aws.rds.Proxy;
/// import com.pulumi.aws.rds.ProxyArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .excludeZoneIds("use1-az3")
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         for (var i = 0; i < 5; i++) {
///             new Subnet("exampleSubnet-" + i, SubnetArgs.builder()
///                 .cidrBlock(example.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(_cidrBlock)
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build())).applyValue(_invoke -> _invoke.result()))
///                 .availabilityZone(available.names()[range.value()])
///                 .vpcId(example.id())
///                 .build());
///
///
/// }
///         var exampleProxy = new Proxy("exampleProxy", ProxyArgs.builder()
///             .name("example")
///             .vpcSubnetIds(exampleSubnet.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// Another approach is to use the `lifecycle` `ignore_changes` meta-argument. With this method, Terraform will stop detecting differences for the `vpc_subnet_ids` argument. However, note that this approach disables Terraform's ability to track and manage updates to `vpc_subnet_ids`, so use it carefully to avoid unintended drift between your configuration and the actual infrastructure.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.Proxy("example", {
///     name: "example",
///     vpcSubnetIds: [exampleAwsSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.Proxy("example",
///     name="example",
///     vpc_subnet_ids=[example_aws_subnet["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.Proxy("example", new()
///     {
///         Name = "example",
///         VpcSubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewProxy(ctx, "example", &rds.ProxyArgs{
/// 			Name: pulumi.String("example"),
/// 			VpcSubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Proxy;
/// import com.pulumi.aws.rds.ProxyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Proxy("example", ProxyArgs.builder()
///             .name("example")
///             .vpcSubnetIds(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rds:Proxy
///     properties:
///       name: example
///       vpcSubnetIds:
///         - ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DB proxies using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxy:Proxy example example
/// ```
class Proxy extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the proxy.
  late final pulumi.Output<String> arn;
  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  late final pulumi.Output<List<ProxyAuth>?> auths;
  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  late final pulumi.Output<bool?> debugLogging;
  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  late final pulumi.Output<String> defaultAuthScheme;
  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  late final pulumi.Output<String> endpoint;
  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  late final pulumi.Output<String> endpointNetworkType;
  /// The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  late final pulumi.Output<String> engineFamily;
  /// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  late final pulumi.Output<int> idleClientTimeout;
  /// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  late final pulumi.Output<bool?> requireTls;
  /// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  late final pulumi.Output<String> roleArn;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  late final pulumi.Output<String> targetConnectionNetworkType;
  /// One or more VPC security group IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// One or more VPC subnet IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSubnetIds;

  /// Creates a new [Proxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Proxy]. {@macro pulumi_rds_proxy_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Proxy(
    String name, {
    ProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxy:Proxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.auths = registerOutput<List<ProxyAuth>?>('auths');
    this.debugLogging = registerOutput<bool?>('debugLogging');
    this.defaultAuthScheme = registerOutput<String>('defaultAuthScheme');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointNetworkType = registerOutput<String>('endpointNetworkType');
    this.engineFamily = registerOutput<String>('engineFamily');
    this.idleClientTimeout = registerOutput<int>('idleClientTimeout');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.requireTls = registerOutput<bool?>('requireTls');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetConnectionNetworkType = registerOutput<String>('targetConnectionNetworkType');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    this.vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }
}
