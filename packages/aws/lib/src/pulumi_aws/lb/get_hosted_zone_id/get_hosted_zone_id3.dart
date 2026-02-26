import 'package:pulumi/pulumi.dart';
import 'get_hosted_zone_id_args3.dart';
import 'get_hosted_zone_id_result3.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing (ELB) in a given region for the purpose of using in an AWS Route53 Alias. Specify the ELB type (<span pulumi-lang-nodejs="`network`" pulumi-lang-dotnet="`Network`" pulumi-lang-go="`network`" pulumi-lang-python="`network`" pulumi-lang-yaml="`network`" pulumi-lang-java="`network`">`network`</span> or <span pulumi-lang-nodejs="`application`" pulumi-lang-dotnet="`Application`" pulumi-lang-go="`application`" pulumi-lang-python="`application`" pulumi-lang-yaml="`application`" pulumi-lang-java="`application`">`application`</span>) to return the relevant the associated HostedZoneId. Ref: [ELB service endpoints](https://docs.aws.amazon.com/general/latest/gr/elb.html#elb_region)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.lb.getHostedZoneId({});
/// const www = new aws.route53.Record("www", {
/// zoneId: primary.zoneId,
/// name: "example.com",
/// type: aws.route53.RecordType.A,
/// aliases: [{
/// name: mainAwsLb.dnsName,
/// zoneId: main.then(main => main.id),
/// evaluateTargetHealth: true,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.lb.get_hosted_zone_id()
/// www = aws.route53.Record("www",
/// zone_id=primary["zoneId"],
/// name="example.com",
/// type=aws.route53.RecordType.A,
/// aliases=[{
/// "name": main_aws_lb["dnsName"],
/// "zone_id": main.id,
/// "evaluate_target_health": True,
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
/// var main = Aws.LB.GetHostedZoneId.Invoke();
///
/// var www = new Aws.Route53.Record("www", new()
/// {
/// ZoneId = primary.ZoneId,
/// Name = "example.com",
/// Type = Aws.Route53.RecordType.A,
/// Aliases = new[]
/// {
/// new Aws.Route53.Inputs.RecordAliasArgs
/// {
/// Name = mainAwsLb.DnsName,
/// ZoneId = main.Apply(getHostedZoneIdResult => getHostedZoneIdResult.Id),
/// EvaluateTargetHealth = true,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lb"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := lb.GetHostedZoneId(ctx, &lb.GetHostedZoneIdArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// ZoneId: pulumi.Any(primary.ZoneId),
/// Name:   pulumi.String("example.com"),
/// Type:   pulumi.String(route53.RecordTypeA),
/// Aliases: route53.RecordAliasArray{
/// &route53.RecordAliasArgs{
/// Name:                 pulumi.Any(mainAwsLb.DnsName),
/// ZoneId:               pulumi.String(main.Id),
/// EvaluateTargetHealth: pulumi.Bool(true),
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
/// import com.pulumi.aws.lb.LbFunctions;
/// import com.pulumi.aws.lb.inputs.GetHostedZoneIdArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
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
/// final var main = LbFunctions.getHostedZoneId(GetHostedZoneIdArgs.builder()
/// .build());
///
/// var www = new Record("www", RecordArgs.builder()
/// .zoneId(primary.zoneId())
/// .name("example.com")
/// .type("A")
/// .aliases(RecordAliasArgs.builder()
/// .name(mainAwsLb.dnsName())
/// .zoneId(main.id())
/// .evaluateTargetHealth(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// www:
/// type: aws:route53:Record
/// properties:
/// zoneId: ${primary.zoneId}
/// name: example.com
/// type: A
/// aliases:
/// - name: ${mainAwsLb.dnsName}
/// zoneId: ${main.id}
/// evaluateTargetHealth: true
/// variables:
/// main:
/// fn::invoke:
/// function: aws:lb:getHostedZoneId
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetHostedZoneIdResult3> getHostedZoneId3(
  GetHostedZoneIdArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult3.fromMap(result);
}
