import 'package:pulumi/pulumi.dart';
import '../records_exclusive_resource_record_set/records_exclusive_resource_record_set.dart';
import '../records_exclusive_timeouts/records_exclusive_timeouts.dart';
import 'records_exclusive_args.dart';

/// Resource for maintaining exclusive management of resource record sets defined in an AWS Route53 hosted zone.
///
/// !> This resource takes exclusive ownership over resource record sets defined in a hosted zone. This includes removal of record sets which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.route53.Record`" pulumi-lang-dotnet="`aws.route53.Record`" pulumi-lang-go="`route53.Record`" pulumi-lang-python="`route53.Record`" pulumi-lang-yaml="`aws.route53.Record`" pulumi-lang-java="`aws.route53.Record`">`aws.route53.Record`</span> resources managed alongside this resource have an equivalent <span pulumi-lang-nodejs="`resourceRecordSet`" pulumi-lang-dotnet="`ResourceRecordSet`" pulumi-lang-go="`resourceRecordSet`" pulumi-lang-python="`resource_record_set`" pulumi-lang-yaml="`resourceRecordSet`" pulumi-lang-java="`resourceRecordSet`">`resource_record_set`</span> argument.
///
/// > Destruction of this resource means Terraform will no longer manage reconciliation of the configured resource record sets. It __will not__ delete the configured record sets from the hosted zone.
///
/// > The default `NS` and `SOA` records created during provisioning of the Route53 Zone __should not be included__ in this resource definition. Adding them will cause persistent drift as the read operation is explicitly configured to ignore writing them to state.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.Zone("example", {
/// name: "example.com",
/// forceDestroy: true,
/// });
/// const test = new aws.route53.RecordsExclusive("test", {
/// zoneId: testAwsRoute53Zone.zoneId,
/// resourceRecordSets: [{
/// name: "subdomain.example.com",
/// type: "A",
/// ttl: 30,
/// resourceRecords: [
/// {
/// value: "127.0.0.1",
/// },
/// {
/// value: "127.0.0.27",
/// },
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.Zone("example",
/// name="example.com",
/// force_destroy=True)
/// test = aws.route53.RecordsExclusive("test",
/// zone_id=test_aws_route53_zone["zoneId"],
/// resource_record_sets=[{
/// "name": "subdomain.example.com",
/// "type": "A",
/// "ttl": 30,
/// "resource_records": [
/// {
/// "value": "127.0.0.1",
/// },
/// {
/// "value": "127.0.0.27",
/// },
/// ],
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
/// var example = new Aws.Route53.Zone("example", new()
/// {
/// Name = "example.com",
/// ForceDestroy = true,
/// });
///
/// var test = new Aws.Route53.RecordsExclusive("test", new()
/// {
/// ZoneId = testAwsRoute53Zone.ZoneId,
/// ResourceRecordSets = new[]
/// {
/// new Aws.Route53.Inputs.RecordsExclusiveResourceRecordSetArgs
/// {
/// Name = "subdomain.example.com",
/// Type = "A",
/// Ttl = 30,
/// ResourceRecords = new[]
/// {
/// new Aws.Route53.Inputs.RecordsExclusiveResourceRecordSetResourceRecordArgs
/// {
/// Value = "127.0.0.1",
/// },
/// new Aws.Route53.Inputs.RecordsExclusiveResourceRecordSetResourceRecordArgs
/// {
/// Value = "127.0.0.27",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.NewZone(ctx, "example", &route53.ZoneArgs{
/// Name:         pulumi.String("example.com"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecordsExclusive(ctx, "test", &route53.RecordsExclusiveArgs{
/// ZoneId: pulumi.Any(testAwsRoute53Zone.ZoneId),
/// ResourceRecordSets: route53.RecordsExclusiveResourceRecordSetArray{
/// &route53.RecordsExclusiveResourceRecordSetArgs{
/// Name: pulumi.String("subdomain.example.com"),
/// Type: pulumi.String("A"),
/// Ttl:  pulumi.Int(30),
/// ResourceRecords: route53.RecordsExclusiveResourceRecordSetResourceRecordArray{
/// &route53.RecordsExclusiveResourceRecordSetResourceRecordArgs{
/// Value: pulumi.String("127.0.0.1"),
/// },
/// &route53.RecordsExclusiveResourceRecordSetResourceRecordArgs{
/// Value: pulumi.String("127.0.0.27"),
/// },
/// },
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
/// import com.pulumi.aws.route53.Zone;
/// import com.pulumi.aws.route53.ZoneArgs;
/// import com.pulumi.aws.route53.RecordsExclusive;
/// import com.pulumi.aws.route53.RecordsExclusiveArgs;
/// import com.pulumi.aws.route53.inputs.RecordsExclusiveResourceRecordSetArgs;
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
/// var example = new Zone("example", ZoneArgs.builder()
/// .name("example.com")
/// .forceDestroy(true)
/// .build());
///
/// var test = new RecordsExclusive("test", RecordsExclusiveArgs.builder()
/// .zoneId(testAwsRoute53Zone.zoneId())
/// .resourceRecordSets(RecordsExclusiveResourceRecordSetArgs.builder()
/// .name("subdomain.example.com")
/// .type("A")
/// .ttl(30)
/// .resourceRecords(
/// RecordsExclusiveResourceRecordSetResourceRecordArgs.builder()
/// .value("127.0.0.1")
/// .build(),
/// RecordsExclusiveResourceRecordSetResourceRecordArgs.builder()
/// .value("127.0.0.27")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:Zone
/// properties:
/// name: example.com
/// forceDestroy: true
/// test:
/// type: aws:route53:RecordsExclusive
/// properties:
/// zoneId: ${testAwsRoute53Zone.zoneId}
/// resourceRecordSets:
/// - name: subdomain.example.com
/// type: A
/// ttl: '30'
/// resourceRecords:
/// - value: 127.0.0.1
/// - value: 127.0.0.27
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Record Sets
///
/// To automatically remove any configured record sets, omit a <span pulumi-lang-nodejs="`resourceRecordSet`" pulumi-lang-dotnet="`ResourceRecordSet`" pulumi-lang-go="`resourceRecordSet`" pulumi-lang-python="`resource_record_set`" pulumi-lang-yaml="`resourceRecordSet`" pulumi-lang-java="`resourceRecordSet`">`resource_record_set`</span> block.
///
/// > This will not __prevent__ record sets from being defined in a hosted zone via Terraform (or any other interface). This resource enables bringing record set definitions into a configured state, however, this reconciliation happens only when <span pulumi-lang-nodejs="`apply`" pulumi-lang-dotnet="`Apply`" pulumi-lang-go="`apply`" pulumi-lang-python="`apply`" pulumi-lang-yaml="`apply`" pulumi-lang-java="`apply`">`apply`</span> is proactively run.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.route53.RecordsExclusive("test", {zoneId: testAwsRoute53Zone.zoneId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.route53.RecordsExclusive("test", zone_id=test_aws_route53_zone["zoneId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Route53.RecordsExclusive("test", new()
/// {
/// ZoneId = testAwsRoute53Zone.ZoneId,
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
/// _, err := route53.NewRecordsExclusive(ctx, "test", &route53.RecordsExclusiveArgs{
/// ZoneId: pulumi.Any(testAwsRoute53Zone.ZoneId),
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
/// import com.pulumi.aws.route53.RecordsExclusive;
/// import com.pulumi.aws.route53.RecordsExclusiveArgs;
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
/// var test = new RecordsExclusive("test", RecordsExclusiveArgs.builder()
/// .zoneId(testAwsRoute53Zone.zoneId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:route53:RecordsExclusive
/// properties:
/// zoneId: ${testAwsRoute53Zone.zoneId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route 53 Records Exclusive using the <span pulumi-lang-nodejs="`zoneId`" pulumi-lang-dotnet="`ZoneId`" pulumi-lang-go="`zoneId`" pulumi-lang-python="`zone_id`" pulumi-lang-yaml="`zoneId`" pulumi-lang-java="`zoneId`">`zone_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/recordsExclusive:RecordsExclusive example ABCD1234
/// ```
class RecordsExclusive extends CustomResource {
  /// A list of all resource record sets associated with the hosted zone.
  /// See <span pulumi-lang-nodejs="`resourceRecordSet`" pulumi-lang-dotnet="`ResourceRecordSet`" pulumi-lang-go="`resourceRecordSet`" pulumi-lang-python="`resource_record_set`" pulumi-lang-yaml="`resourceRecordSet`" pulumi-lang-java="`resourceRecordSet`">`resource_record_set`</span> below.
  late final Output<List<RecordsExclusiveResourceRecordSet>?>
      resourceRecordSets;
  late final Output<RecordsExclusiveTimeouts?> timeouts;

  /// ID of the hosted zone containing the resource record sets.
  ///
  /// The following arguments are optional:
  late final Output<String> zoneId;

  RecordsExclusive(
    String name, {
    RecordsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/recordsExclusive:RecordsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.resourceRecordSets =
        registerOutput<List<RecordsExclusiveResourceRecordSet>?>(
            'resourceRecordSets');
    this.timeouts = registerOutput<RecordsExclusiveTimeouts?>('timeouts');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
