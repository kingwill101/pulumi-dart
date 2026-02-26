import 'package:pulumi/pulumi.dart';
import 'get_ip_ranges_args.dart';
import 'get_ip_ranges_result.dart';

/// Use this data source to get the IP ranges of various AWS products and services. For more information about the contents of this data source and required JSON syntax if referencing a custom URL, see the [AWS IP Address Ranges documentation](https://docs.aws.amazon.com/general/latest/gr/aws-ip-ranges.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const europeanEc2 = aws.getIpRanges({
/// regions: [
/// "eu-west-1",
/// "eu-central-1",
/// ],
/// services: ["ec2"],
/// });
/// const fromEurope = new aws.ec2.SecurityGroup("from_europe", {
/// name: "from_europe",
/// ingress: [{
/// fromPort: 443,
/// toPort: 443,
/// protocol: "tcp",
/// cidrBlocks: europeanEc2.then(europeanEc2 => europeanEc2.cidrBlocks),
/// ipv6CidrBlocks: europeanEc2.then(europeanEc2 => europeanEc2.ipv6CidrBlocks),
/// }],
/// tags: {
/// CreateDate: europeanEc2.then(europeanEc2 => europeanEc2.createDate),
/// SyncToken: europeanEc2.then(europeanEc2 => europeanEc2.syncToken),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// european_ec2 = aws.get_ip_ranges(regions=[
/// "eu-west-1",
/// "eu-central-1",
/// ],
/// services=["ec2"])
/// from_europe = aws.ec2.SecurityGroup("from_europe",
/// name="from_europe",
/// ingress=[{
/// "from_port": 443,
/// "to_port": 443,
/// "protocol": "tcp",
/// "cidr_blocks": european_ec2.cidr_blocks,
/// "ipv6_cidr_blocks": european_ec2.ipv6_cidr_blocks,
/// }],
/// tags={
/// "CreateDate": european_ec2.create_date,
/// "SyncToken": european_ec2.sync_token,
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
/// var europeanEc2 = Aws.GetIpRanges.Invoke(new()
/// {
/// Regions = new[]
/// {
/// "eu-west-1",
/// "eu-central-1",
/// },
/// Services = new[]
/// {
/// "ec2",
/// },
/// });
///
/// var fromEurope = new Aws.Ec2.SecurityGroup("from_europe", new()
/// {
/// Name = "from_europe",
/// Ingress = new[]
/// {
/// new Aws.Ec2.Inputs.SecurityGroupIngressArgs
/// {
/// FromPort = 443,
/// ToPort = 443,
/// Protocol = "tcp",
/// CidrBlocks = europeanEc2.Apply(getIpRangesResult => getIpRangesResult.CidrBlocks),
/// Ipv6CidrBlocks = europeanEc2.Apply(getIpRangesResult => getIpRangesResult.Ipv6CidrBlocks),
/// },
/// },
/// Tags =
/// {
/// { "CreateDate", europeanEc2.Apply(getIpRangesResult => getIpRangesResult.CreateDate) },
/// { "SyncToken", europeanEc2.Apply(getIpRangesResult => getIpRangesResult.SyncToken) },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// europeanEc2, err := aws.GetIpRanges(ctx, &aws.GetIpRangesArgs{
/// Regions: []string{
/// "eu-west-1",
/// "eu-central-1",
/// },
/// Services: []string{
/// "ec2",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSecurityGroup(ctx, "from_europe", &ec2.SecurityGroupArgs{
/// Name: pulumi.String("from_europe"),
/// Ingress: ec2.SecurityGroupIngressArray{
/// &ec2.SecurityGroupIngressArgs{
/// FromPort:       pulumi.Int(443),
/// ToPort:         pulumi.Int(443),
/// Protocol:       pulumi.String("tcp"),
/// CidrBlocks:     interface{}(europeanEc2.CidrBlocks),
/// Ipv6CidrBlocks: interface{}(europeanEc2.Ipv6CidrBlocks),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "CreateDate": pulumi.String(europeanEc2.CreateDate),
/// "SyncToken":  pulumi.Int(europeanEc2.SyncToken),
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
/// import com.pulumi.aws.inputs.GetIpRangesArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
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
/// final var europeanEc2 = AwsFunctions.getIpRanges(GetIpRangesArgs.builder()
/// .regions(
/// "eu-west-1",
/// "eu-central-1")
/// .services("ec2")
/// .build());
///
/// var fromEurope = new SecurityGroup("fromEurope", SecurityGroupArgs.builder()
/// .name("from_europe")
/// .ingress(SecurityGroupIngressArgs.builder()
/// .fromPort(443)
/// .toPort(443)
/// .protocol("tcp")
/// .cidrBlocks(europeanEc2.cidrBlocks())
/// .ipv6CidrBlocks(europeanEc2.ipv6CidrBlocks())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("CreateDate", europeanEc2.createDate()),
/// Map.entry("SyncToken", europeanEc2.syncToken())
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// fromEurope:
/// type: aws:ec2:SecurityGroup
/// name: from_europe
/// properties:
/// name: from_europe
/// ingress:
/// - fromPort: '443'
/// toPort: '443'
/// protocol: tcp
/// cidrBlocks: ${europeanEc2.cidrBlocks}
/// ipv6CidrBlocks: ${europeanEc2.ipv6CidrBlocks}
/// tags:
/// CreateDate: ${europeanEc2.createDate}
/// SyncToken: ${europeanEc2.syncToken}
/// variables:
/// europeanEc2:
/// fn::invoke:
/// function: aws:getIpRanges
/// arguments:
/// regions:
/// - eu-west-1
/// - eu-central-1
/// services:
/// - ec2
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetIpRangesResult> getIpRanges(
  GetIpRangesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getIpRanges:getIpRanges',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpRangesResult.fromMap(result);
}
