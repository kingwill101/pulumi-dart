import 'package:pulumi/pulumi.dart';
import '../zone_vpc/zone_vpc.dart';
import 'zone_args.dart';

/// Manages a Route53 Hosted Zone. For managing Domain Name System Security Extensions (DNSSEC), see the <span pulumi-lang-nodejs="`aws.route53.KeySigningKey`" pulumi-lang-dotnet="`aws.route53.KeySigningKey`" pulumi-lang-go="`route53.KeySigningKey`" pulumi-lang-python="`route53.KeySigningKey`" pulumi-lang-yaml="`aws.route53.KeySigningKey`" pulumi-lang-java="`aws.route53.KeySigningKey`">`aws.route53.KeySigningKey`</span> and <span pulumi-lang-nodejs="`aws.route53.HostedZoneDnsSec`" pulumi-lang-dotnet="`aws.route53.HostedZoneDnsSec`" pulumi-lang-go="`route53.HostedZoneDnsSec`" pulumi-lang-python="`route53.HostedZoneDnsSec`" pulumi-lang-yaml="`aws.route53.HostedZoneDnsSec`" pulumi-lang-java="`aws.route53.HostedZoneDnsSec`">`aws.route53.HostedZoneDnsSec`</span> resources.
///
/// ## Example Usage
///
/// ### Public Zone
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.route53.Zone("primary", {name: "example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.route53.Zone("primary", name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Aws.Route53.Zone("primary", new()
/// {
/// Name = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.NewZone(ctx, "primary", &route53.ZoneArgs{
/// Name: pulumi.String("example.com"),
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
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
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
/// var primary = new Zone("primary", ZoneArgs.builder()
/// .name("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: aws:route53:Zone
/// properties:
/// name: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Public Subdomain Zone
///
/// For use in subdomains, note that you need to create a
/// <span pulumi-lang-nodejs="`aws.route53.Record`" pulumi-lang-dotnet="`aws.route53.Record`" pulumi-lang-go="`route53.Record`" pulumi-lang-python="`route53.Record`" pulumi-lang-yaml="`aws.route53.Record`" pulumi-lang-java="`aws.route53.Record`">`aws.route53.Record`</span> of type `NS` as well as the subdomain
/// zone.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.route53.Zone("main", {name: "example.com"});
/// const dev = new aws.route53.Zone("dev", {
/// name: "dev.example.com",
/// tags: {
/// Environment: "dev",
/// },
/// });
/// const dev_ns = new aws.route53.Record("dev-ns", {
/// zoneId: main.zoneId,
/// name: "dev.example.com",
/// type: aws.route53.RecordType.NS,
/// ttl: 30,
/// records: dev.nameServers,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.route53.Zone("main", name="example.com")
/// dev = aws.route53.Zone("dev",
/// name="dev.example.com",
/// tags={
/// "Environment": "dev",
/// })
/// dev_ns = aws.route53.Record("dev-ns",
/// zone_id=main.zone_id,
/// name="dev.example.com",
/// type=aws.route53.RecordType.NS,
/// ttl=30,
/// records=dev.name_servers)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Aws.Route53.Zone("main", new()
/// {
/// Name = "example.com",
/// });
///
/// var dev = new Aws.Route53.Zone("dev", new()
/// {
/// Name = "dev.example.com",
/// Tags =
/// {
/// { "Environment", "dev" },
/// },
/// });
///
/// var dev_ns = new Aws.Route53.Record("dev-ns", new()
/// {
/// ZoneId = main.ZoneId,
/// Name = "dev.example.com",
/// Type = Aws.Route53.RecordType.NS,
/// Ttl = 30,
/// Records = dev.NameServers,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := route53.NewZone(ctx, "main", &route53.ZoneArgs{
/// Name: pulumi.String("example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// dev, err := route53.NewZone(ctx, "dev", &route53.ZoneArgs{
/// Name: pulumi.String("dev.example.com"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("dev"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "dev-ns", &route53.RecordArgs{
/// ZoneId:  main.ZoneId,
/// Name:    pulumi.String("dev.example.com"),
/// Type:    pulumi.String(route53.RecordTypeNS),
/// Ttl:     pulumi.Int(30),
/// Records: dev.NameServers,
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
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
/// var main = new Zone("main", ZoneArgs.builder()
/// .name("example.com")
/// .build());
///
/// var dev = new Zone("dev", ZoneArgs.builder()
/// .name("dev.example.com")
/// .tags(Map.of("Environment", "dev"))
/// .build());
///
/// var dev_ns = new Record("dev-ns", RecordArgs.builder()
/// .zoneId(main.zoneId())
/// .name("dev.example.com")
/// .type("NS")
/// .ttl(30)
/// .records(dev.nameServers())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:route53:Zone
/// properties:
/// name: example.com
/// dev:
/// type: aws:route53:Zone
/// properties:
/// name: dev.example.com
/// tags:
/// Environment: dev
/// dev-ns:
/// type: aws:route53:Record
/// properties:
/// zoneId: ${main.zoneId}
/// name: dev.example.com
/// type: NS
/// ttl: '30'
/// records: ${dev.nameServers}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Private Zone
///
/// > **NOTE:** This provider provides both exclusive VPC associations defined in-line in this resource via <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span> configuration blocks and a separate `Zone VPC Association resource. At this time, you cannot use in-line VPC associations in conjunction with any <span pulumi-lang-nodejs="`aws.route53.ZoneAssociation`" pulumi-lang-dotnet="`aws.route53.ZoneAssociation`" pulumi-lang-go="`route53.ZoneAssociation`" pulumi-lang-python="`route53.ZoneAssociation`" pulumi-lang-yaml="`aws.route53.ZoneAssociation`" pulumi-lang-java="`aws.route53.ZoneAssociation`">`aws.route53.ZoneAssociation`</span> resources with the same zone ID otherwise it will cause a perpetual difference in plan output. You can optionally use [`ignoreChanges`](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to manage additional associations via the <span pulumi-lang-nodejs="`aws.route53.ZoneAssociation`" pulumi-lang-dotnet="`aws.route53.ZoneAssociation`" pulumi-lang-go="`route53.ZoneAssociation`" pulumi-lang-python="`route53.ZoneAssociation`" pulumi-lang-yaml="`aws.route53.ZoneAssociation`" pulumi-lang-java="`aws.route53.ZoneAssociation`">`aws.route53.ZoneAssociation`</span> resource.
///
/// > **NOTE:** Private zones require at least one VPC association at all times.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.ec2.Vpc("primary", {
/// cidrBlock: "10.6.0.0/16",
/// enableDnsHostnames: true,
/// enableDnsSupport: true,
/// });
/// const secondary = new aws.ec2.Vpc("secondary", {
/// cidrBlock: "10.7.0.0/16",
/// enableDnsHostnames: true,
/// enableDnsSupport: true,
/// });
/// const _private = new aws.route53.Zone("private", {
/// name: "example.com",
/// vpcs: [
/// {
/// vpcId: primary.id,
/// },
/// {
/// vpcId: secondary.id,
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.ec2.Vpc("primary",
/// cidr_block="10.6.0.0/16",
/// enable_dns_hostnames=True,
/// enable_dns_support=True)
/// secondary = aws.ec2.Vpc("secondary",
/// cidr_block="10.7.0.0/16",
/// enable_dns_hostnames=True,
/// enable_dns_support=True)
/// private = aws.route53.Zone("private",
/// name="example.com",
/// vpcs=[
/// {
/// "vpc_id": primary.id,
/// },
/// {
/// "vpc_id": secondary.id,
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var primary = new Aws.Ec2.Vpc("primary", new()
/// {
/// CidrBlock = "10.6.0.0/16",
/// EnableDnsHostnames = true,
/// EnableDnsSupport = true,
/// });
///
/// var secondary = new Aws.Ec2.Vpc("secondary", new()
/// {
/// CidrBlock = "10.7.0.0/16",
/// EnableDnsHostnames = true,
/// EnableDnsSupport = true,
/// });
///
/// var @private = new Aws.Route53.Zone("private", new()
/// {
/// Name = "example.com",
/// Vpcs = new[]
/// {
/// new Aws.Route53.Inputs.ZoneVpcArgs
/// {
/// VpcId = primary.Id,
/// },
/// new Aws.Route53.Inputs.ZoneVpcArgs
/// {
/// VpcId = secondary.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// primary, err := ec2.NewVpc(ctx, "primary", &ec2.VpcArgs{
/// CidrBlock:          pulumi.String("10.6.0.0/16"),
/// EnableDnsHostnames: pulumi.Bool(true),
/// EnableDnsSupport:   pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// secondary, err := ec2.NewVpc(ctx, "secondary", &ec2.VpcArgs{
/// CidrBlock:          pulumi.String("10.7.0.0/16"),
/// EnableDnsHostnames: pulumi.Bool(true),
/// EnableDnsSupport:   pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewZone(ctx, "private", &route53.ZoneArgs{
/// Name: pulumi.String("example.com"),
/// Vpcs: route53.ZoneVpcArray{
/// &route53.ZoneVpcArgs{
/// VpcId: primary.ID(),
/// },
/// &route53.ZoneVpcArgs{
/// VpcId: secondary.ID(),
/// },
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.inputs.ZoneVpcArgs;
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
/// var primary = new Vpc("primary", VpcArgs.builder()
/// .cidrBlock("10.6.0.0/16")
/// .enableDnsHostnames(true)
/// .enableDnsSupport(true)
/// .build());
///
/// var secondary = new Vpc("secondary", VpcArgs.builder()
/// .cidrBlock("10.7.0.0/16")
/// .enableDnsHostnames(true)
/// .enableDnsSupport(true)
/// .build());
///
/// var private_ = new Zone("private", ZoneArgs.builder()
/// .name("example.com")
/// .vpcs(
/// ZoneVpcArgs.builder()
/// .vpcId(primary.id())
/// .build(),
/// ZoneVpcArgs.builder()
/// .vpcId(secondary.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.6.0.0/16
/// enableDnsHostnames: true
/// enableDnsSupport: true
/// secondary:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.7.0.0/16
/// enableDnsHostnames: true
/// enableDnsSupport: true
/// private:
/// type: aws:route53:Zone
/// properties:
/// name: example.com
/// vpcs:
/// - vpcId: ${primary.id}
/// - vpcId: ${secondary.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Zones using the zone <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/zone:Zone myzone Z1D633PJN98FT9
/// ```
class Zone extends CustomResource {
  /// The Amazon Resource Name (ARN) of the Hosted Zone.
  late final Output<String> arn;

  /// A comment for the hosted zone. Defaults to 'Managed by Pulumi'.
  late final Output<String> comment;

  /// The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span> as delegation sets can only be used for public zones.
  late final Output<String?> delegationSetId;

  /// Boolean to indicate whether to enable accelerated recovery for the hosted zone. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once set, switching to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> requires explicitly specifying <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> rather than removing the argument.
  late final Output<bool> enableAcceleratedRecovery;

  /// Whether to destroy all records (possibly managed outside of this provider) in the zone when destroying the zone.
  late final Output<bool?> forceDestroy;

  /// This is the name of the hosted zone.
  late final Output<String> name;

  /// A list of name servers in associated (or default) delegation set.
  /// Find more about delegation sets in [AWS docs](https://docs.aws.amazon.com/Route53/latest/APIReference/actions-on-reusable-delegation-sets.html).
  late final Output<List<String>> nameServers;

  /// The Route 53 name server that created the SOA record.
  late final Output<String> primaryNameServer;

  /// A mapping of tags to assign to the zone. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the <span pulumi-lang-nodejs="`delegationSetId`" pulumi-lang-dotnet="`DelegationSetId`" pulumi-lang-go="`delegationSetId`" pulumi-lang-python="`delegation_set_id`" pulumi-lang-yaml="`delegationSetId`" pulumi-lang-java="`delegationSetId`">`delegation_set_id`</span> argument in this resource and any <span pulumi-lang-nodejs="`aws.route53.ZoneAssociation`" pulumi-lang-dotnet="`aws.route53.ZoneAssociation`" pulumi-lang-go="`route53.ZoneAssociation`" pulumi-lang-python="`route53.ZoneAssociation`" pulumi-lang-yaml="`aws.route53.ZoneAssociation`" pulumi-lang-java="`aws.route53.ZoneAssociation`">`aws.route53.ZoneAssociation`</span> resource specifying the same zone ID. Detailed below.
  late final Output<List<ZoneVpc>?> vpcs;

  /// The Hosted Zone ID. This can be referenced by zone records.
  late final Output<String> zoneId;

  Zone(
    String name, {
    ZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/zone:Zone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.comment = Output.createUnknown<String>();
    this.delegationSetId = Output.createUnknown<String?>();
    this.enableAcceleratedRecovery = Output.createUnknown<bool>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.name = Output.createUnknown<String>();
    this.nameServers = Output.createUnknown<List<String>>();
    this.primaryNameServer = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcs = Output.createUnknown<List<ZoneVpc>?>();
    this.zoneId = Output.createUnknown<String>();
  }
}
