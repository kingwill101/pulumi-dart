import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_endpoint_args.dart';

/// Provides an RDS DB proxy endpoint resource. For additional information, see the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy-endpoints.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rds.ProxyEndpoint("example", {
///     dbProxyName: test.name,
///     dbProxyEndpointName: "example",
///     vpcSubnetIds: testAwsSubnet.map(__item => __item.id),
///     targetRole: "READ_ONLY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rds.ProxyEndpoint("example",
///     db_proxy_name=test["name"],
///     db_proxy_endpoint_name="example",
///     vpc_subnet_ids=[__item["id"] for __item in test_aws_subnet],
///     target_role="READ_ONLY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Rds.ProxyEndpoint("example", new()
///     {
///         DbProxyName = test.Name,
///         DbProxyEndpointName = "example",
///         VpcSubnetIds = testAwsSubnet.Select(__item => __item.Id).ToList(),
///         TargetRole = "READ_ONLY",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range testAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := rds.NewProxyEndpoint(ctx, "example", &rds.ProxyEndpointArgs{
/// DbProxyName: pulumi.Any(test.Name),
/// DbProxyEndpointName: pulumi.String("example"),
/// VpcSubnetIds: toPulumiArray(splat0),
/// TargetRole: pulumi.String("READ_ONLY"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.ProxyEndpoint;
/// import com.pulumi.aws.rds.ProxyEndpointArgs;
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
///         var example = new ProxyEndpoint("example", ProxyEndpointArgs.builder()
///             .dbProxyName(test.name())
///             .dbProxyEndpointName("example")
///             .vpcSubnetIds(testAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .targetRole("READ_ONLY")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DB proxy endpoints using the `DB-PROXY-NAME/DB-PROXY-ENDPOINT-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxyEndpoint:ProxyEndpoint example example/example
/// ```
class ProxyEndpoint extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the proxy endpoint.
  late final pulumi.Output<String> arn;
  /// The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  late final pulumi.Output<String> dbProxyEndpointName;
  /// The name of the DB proxy associated with the DB proxy endpoint that you create.
  late final pulumi.Output<String> dbProxyName;
  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  late final pulumi.Output<String> endpoint;
  /// Indicates whether this endpoint is the default endpoint for the associated DB proxy.
  late final pulumi.Output<bool> isDefault;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  late final pulumi.Output<String?> targetRole;
  /// The VPC ID of the DB proxy endpoint.
  late final pulumi.Output<String> vpcId;
  /// One or more VPC security group IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// One or more VPC subnet IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSubnetIds;

  /// Creates a new [ProxyEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProxyEndpoint]. {@macro pulumi_rds_proxy_endpoint_proxy_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProxyEndpoint(
    String name, {
    ProxyEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyEndpoint:ProxyEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dbProxyEndpointName = registerOutput<String>('dbProxyEndpointName');
    this.dbProxyName = registerOutput<String>('dbProxyName');
    this.endpoint = registerOutput<String>('endpoint');
    this.isDefault = registerOutput<bool>('isDefault');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetRole = registerOutput<String?>('targetRole');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    this.vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }
}
