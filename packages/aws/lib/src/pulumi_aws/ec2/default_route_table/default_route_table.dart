import 'package:pulumi/pulumi.dart';
import '../default_route_table_route/default_route_table_route.dart';
import 'default_route_table_args.dart';

/// Provides a resource to manage a default route table of a VPC. This resource can manage the default route table of the default or a non-default VPC.
///
/// > **NOTE:** This is an advanced resource with special caveats. Please read this document in its entirety before using this resource. The <span pulumi-lang-nodejs="`aws.ec2.DefaultRouteTable`" pulumi-lang-dotnet="`aws.ec2.DefaultRouteTable`" pulumi-lang-go="`ec2.DefaultRouteTable`" pulumi-lang-python="`ec2.DefaultRouteTable`" pulumi-lang-yaml="`aws.ec2.DefaultRouteTable`" pulumi-lang-java="`aws.ec2.DefaultRouteTable`">`aws.ec2.DefaultRouteTable`</span> resource behaves differently from normal resources. This provider does not _create_ this resource but instead attempts to "adopt" it into management. **Do not** use both <span pulumi-lang-nodejs="`aws.ec2.DefaultRouteTable`" pulumi-lang-dotnet="`aws.ec2.DefaultRouteTable`" pulumi-lang-go="`ec2.DefaultRouteTable`" pulumi-lang-python="`ec2.DefaultRouteTable`" pulumi-lang-yaml="`aws.ec2.DefaultRouteTable`" pulumi-lang-java="`aws.ec2.DefaultRouteTable`">`aws.ec2.DefaultRouteTable`</span> to manage a default route table **and** <span pulumi-lang-nodejs="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-go="`ec2.MainRouteTableAssociation`" pulumi-lang-python="`ec2.MainRouteTableAssociation`" pulumi-lang-yaml="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-java="`aws.ec2.MainRouteTableAssociation`">`aws.ec2.MainRouteTableAssociation`</span> with the same VPC due to possible route conflicts. See<span pulumi-lang-nodejs=" aws.ec2.MainRouteTableAssociation " pulumi-lang-dotnet=" aws.ec2.MainRouteTableAssociation " pulumi-lang-go=" ec2.MainRouteTableAssociation " pulumi-lang-python=" ec2.MainRouteTableAssociation " pulumi-lang-yaml=" aws.ec2.MainRouteTableAssociation " pulumi-lang-java=" aws.ec2.MainRouteTableAssociation "> aws.ec2.MainRouteTableAssociation </span>documentation for more details.
///
/// Every VPC has a default route table that can be managed but not destroyed. When the provider first adopts a default route table, it **immediately removes all defined routes**. It then proceeds to create any routes specified in the configuration. This step is required so that only the routes specified in the configuration exist in the default route table.
///
/// For more information, see the Amazon VPC User Guide on [Route Tables](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html). For information about managing normal route tables in this provider, see <span pulumi-lang-nodejs="`aws.ec2.RouteTable`" pulumi-lang-dotnet="`aws.ec2.RouteTable`" pulumi-lang-go="`ec2.RouteTable`" pulumi-lang-python="`ec2.RouteTable`" pulumi-lang-yaml="`aws.ec2.RouteTable`" pulumi-lang-java="`aws.ec2.RouteTable`">`aws.ec2.RouteTable`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.DefaultRouteTable("example", {
/// defaultRouteTableId: exampleAwsVpc.defaultRouteTableId,
/// routes: [
/// {
/// cidrBlock: "10.0.1.0/24",
/// gatewayId: exampleAwsInternetGateway.id,
/// },
/// {
/// ipv6CidrBlock: "::/0",
/// egressOnlyGatewayId: exampleAwsEgressOnlyInternetGateway.id,
/// },
/// ],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultRouteTable("example",
/// default_route_table_id=example_aws_vpc["defaultRouteTableId"],
/// routes=[
/// {
/// "cidr_block": "10.0.1.0/24",
/// "gateway_id": example_aws_internet_gateway["id"],
/// },
/// {
/// "ipv6_cidr_block": "::/0",
/// "egress_only_gateway_id": example_aws_egress_only_internet_gateway["id"],
/// },
/// ],
/// tags={
/// "Name": "example",
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
/// var example = new Aws.Ec2.DefaultRouteTable("example", new()
/// {
/// DefaultRouteTableId = exampleAwsVpc.DefaultRouteTableId,
/// Routes = new[]
/// {
/// new Aws.Ec2.Inputs.DefaultRouteTableRouteArgs
/// {
/// CidrBlock = "10.0.1.0/24",
/// GatewayId = exampleAwsInternetGateway.Id,
/// },
/// new Aws.Ec2.Inputs.DefaultRouteTableRouteArgs
/// {
/// Ipv6CidrBlock = "::/0",
/// EgressOnlyGatewayId = exampleAwsEgressOnlyInternetGateway.Id,
/// },
/// },
/// Tags =
/// {
/// { "Name", "example" },
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
/// _, err := ec2.NewDefaultRouteTable(ctx, "example", &ec2.DefaultRouteTableArgs{
/// DefaultRouteTableId: pulumi.Any(exampleAwsVpc.DefaultRouteTableId),
/// Routes: ec2.DefaultRouteTableRouteArray{
/// &ec2.DefaultRouteTableRouteArgs{
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// GatewayId: pulumi.Any(exampleAwsInternetGateway.Id),
/// },
/// &ec2.DefaultRouteTableRouteArgs{
/// Ipv6CidrBlock:       pulumi.String("::/0"),
/// EgressOnlyGatewayId: pulumi.Any(exampleAwsEgressOnlyInternetGateway.Id),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.ec2.DefaultRouteTable;
/// import com.pulumi.aws.ec2.DefaultRouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.DefaultRouteTableRouteArgs;
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
/// var example = new DefaultRouteTable("example", DefaultRouteTableArgs.builder()
/// .defaultRouteTableId(exampleAwsVpc.defaultRouteTableId())
/// .routes(
/// DefaultRouteTableRouteArgs.builder()
/// .cidrBlock("10.0.1.0/24")
/// .gatewayId(exampleAwsInternetGateway.id())
/// .build(),
/// DefaultRouteTableRouteArgs.builder()
/// .ipv6CidrBlock("::/0")
/// .egressOnlyGatewayId(exampleAwsEgressOnlyInternetGateway.id())
/// .build())
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:DefaultRouteTable
/// properties:
/// defaultRouteTableId: ${exampleAwsVpc.defaultRouteTableId}
/// routes:
/// - cidrBlock: 10.0.1.0/24
/// gatewayId: ${exampleAwsInternetGateway.id}
/// - ipv6CidrBlock: ::/0
/// egressOnlyGatewayId: ${exampleAwsEgressOnlyInternetGateway.id}
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// To subsequently remove all managed routes:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.DefaultRouteTable("example", {
/// defaultRouteTableId: exampleAwsVpc.defaultRouteTableId,
/// routes: [],
/// tags: {
/// Name: "example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DefaultRouteTable("example",
/// default_route_table_id=example_aws_vpc["defaultRouteTableId"],
/// routes=[],
/// tags={
/// "Name": "example",
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
/// var example = new Aws.Ec2.DefaultRouteTable("example", new()
/// {
/// DefaultRouteTableId = exampleAwsVpc.DefaultRouteTableId,
/// Routes = new[] {},
/// Tags =
/// {
/// { "Name", "example" },
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
/// _, err := ec2.NewDefaultRouteTable(ctx, "example", &ec2.DefaultRouteTableArgs{
/// DefaultRouteTableId: pulumi.Any(exampleAwsVpc.DefaultRouteTableId),
/// Routes:              ec2.DefaultRouteTableRouteArray{},
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example"),
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
/// import com.pulumi.aws.ec2.DefaultRouteTable;
/// import com.pulumi.aws.ec2.DefaultRouteTableArgs;
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
/// var example = new DefaultRouteTable("example", DefaultRouteTableArgs.builder()
/// .defaultRouteTableId(exampleAwsVpc.defaultRouteTableId())
/// .routes()
/// .tags(Map.of("Name", "example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:DefaultRouteTable
/// properties:
/// defaultRouteTableId: ${exampleAwsVpc.defaultRouteTableId}
/// routes: []
/// tags:
/// Name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Default VPC route tables using the <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/defaultRouteTable:DefaultRouteTable example vpc-33cc44dd
/// ```
///
/// [tf-main-route-table-association]: /docs/providers/aws/r/main_route_table_association.html
class DefaultRouteTable extends CustomResource {
  /// The ARN of the route table.
  late final Output<String> arn;

  /// ID of the default route table.
  ///
  /// The following arguments are optional:
  late final Output<String> defaultRouteTableId;

  /// ID of the AWS account that owns the route table.
  late final Output<String> ownerId;

  /// List of virtual gateways for propagation.
  late final Output<List<String>?> propagatingVgws;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of objects. Detailed below
  late final Output<List<DefaultRouteTableRoute>> routes;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ID of the VPC.
  late final Output<String> vpcId;

  DefaultRouteTable(
    String name, {
    DefaultRouteTableArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultRouteTable:DefaultRouteTable',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    this.ownerId = registerOutput<String>('ownerId');
    this.propagatingVgws = registerOutput<List<String>?>('propagatingVgws');
    this.region = registerOutput<String>('region');
    this.routes = registerOutput<List<DefaultRouteTableRoute>>('routes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
