import 'package:pulumi/pulumi.dart';
import '../eip_domain_name_timeouts/eip_domain_name_timeouts.dart';
import 'eip_domain_name_args.dart';

/// Assigns a static reverse DNS record to an Elastic IP addresses. See [Using reverse DNS for email applications](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Eip("example", {domain: "vpc"});
/// const exampleRecord = new aws.route53.Record("example", {
/// zoneId: main.zoneId,
/// name: "reverse",
/// type: aws.route53.RecordType.A,
/// records: [example.publicIp],
/// });
/// const exampleEipDomainName = new aws.ec2.EipDomainName("example", {
/// allocationId: example.allocationId,
/// domainName: exampleRecord.fqdn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Eip("example", domain="vpc")
/// example_record = aws.route53.Record("example",
/// zone_id=main["zoneId"],
/// name="reverse",
/// type=aws.route53.RecordType.A,
/// records=[example.public_ip])
/// example_eip_domain_name = aws.ec2.EipDomainName("example",
/// allocation_id=example.allocation_id,
/// domain_name=example_record.fqdn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.Eip("example", new()
/// {
/// Domain = "vpc",
/// });
///
/// var exampleRecord = new Aws.Route53.Record("example", new()
/// {
/// ZoneId = main.ZoneId,
/// Name = "reverse",
/// Type = Aws.Route53.RecordType.A,
/// Records = new[]
/// {
/// example.PublicIp,
/// },
/// });
///
/// var exampleEipDomainName = new Aws.Ec2.EipDomainName("example", new()
/// {
/// AllocationId = example.AllocationId,
/// DomainName = exampleRecord.Fqdn,
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
/// example, err := ec2.NewEip(ctx, "example", &ec2.EipArgs{
/// Domain: pulumi.String("vpc"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleRecord, err := route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// ZoneId: pulumi.Any(main.ZoneId),
/// Name:   pulumi.String("reverse"),
/// Type:   pulumi.String(route53.RecordTypeA),
/// Records: pulumi.StringArray{
/// example.PublicIp,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewEipDomainName(ctx, "example", &ec2.EipDomainNameArgs{
/// AllocationId: example.AllocationId,
/// DomainName:   exampleRecord.Fqdn,
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
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.ec2.EipDomainName;
/// import com.pulumi.aws.ec2.EipDomainNameArgs;
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
/// var example = new Eip("example", EipArgs.builder()
/// .domain("vpc")
/// .build());
///
/// var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
/// .zoneId(main.zoneId())
/// .name("reverse")
/// .type("A")
/// .records(example.publicIp())
/// .build());
///
/// var exampleEipDomainName = new EipDomainName("exampleEipDomainName", EipDomainNameArgs.builder()
/// .allocationId(example.allocationId())
/// .domainName(exampleRecord.fqdn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Eip
/// properties:
/// domain: vpc
/// exampleRecord:
/// type: aws:route53:Record
/// name: example
/// properties:
/// zoneId: ${main.zoneId}
/// name: reverse
/// type: A
/// records:
/// - ${example.publicIp}
/// exampleEipDomainName:
/// type: aws:ec2:EipDomainName
/// name: example
/// properties:
/// allocationId: ${example.allocationId}
/// domainName: ${exampleRecord.fqdn}
/// ```
/// <!--End PulumiCodeChooser -->
class EipDomainName extends CustomResource {
  /// The allocation ID.
  late final Output<String> allocationId;

  /// The domain name to modify for the IP address.
  late final Output<String> domainName;

  /// The DNS pointer (PTR) record for the IP address.
  late final Output<String> ptrRecord;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<EipDomainNameTimeouts?> timeouts;

  EipDomainName(
    String name, {
    EipDomainNameArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/eipDomainName:EipDomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allocationId = registerOutput<String>('allocationId');
    this.domainName = registerOutput<String>('domainName');
    this.ptrRecord = registerOutput<String>('ptrRecord');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<EipDomainNameTimeouts?>('timeouts');
  }
}
