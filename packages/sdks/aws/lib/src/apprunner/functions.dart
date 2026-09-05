import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_args.dart';
import 'get_hosted_zone_id_result.dart';

/// Use this data source to get the HostedZoneId of an AWS App Runner service deployed
/// in a given region for the purpose of using it in an AWS Route53 Alias record.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.apprunner.getHostedZoneId({});
/// const www = new aws.route53.Record("www", {
///     aliases: [{
///         name: mainAwsApprunnerCustomDomainAssociation.dnsTarget,
///         zoneId: main.then(main => main.id),
///         evaluateTargetHealth: true,
///     }],
///     zoneId: primary.zoneId,
///     name: "example.com",
///     type: aws.route53.RecordType.A,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.apprunner.get_hosted_zone_id()
/// www = aws.route53.Record("www",
///     aliases=[{
///         "name": main_aws_apprunner_custom_domain_association["dnsTarget"],
///         "zone_id": main.id,
///         "evaluate_target_health": True,
///     }],
///     zone_id=primary["zoneId"],
///     name="example.com",
///     type=aws.route53.RecordType.A)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.AppRunner.GetHostedZoneId.Invoke();
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = mainAwsApprunnerCustomDomainAssociation.DnsTarget,
///                 ZoneId = main.Apply(getHostedZoneIdResult => getHostedZoneIdResult.Id),
///                 EvaluateTargetHealth = true,
///             },
///         },
///         ZoneId = primary.ZoneId,
///         Name = "example.com",
///         Type = Aws.Route53.RecordType.A,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := apprunner.GetHostedZoneId(ctx, &apprunner.GetHostedZoneIdArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:                 pulumi.Any(mainAwsApprunnerCustomDomainAssociation.DnsTarget),
/// 					ZoneId:               pulumi.String(main.Id),
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_apprunner_gethostedzoneid" "main" {
/// }
///
/// resource "aws_route53_record" "www" {
///   aliases {
///     name                   = mainAwsApprunnerCustomDomainAssociation.dnsTarget
///     zone_id                = data.aws_apprunner_gethostedzoneid.main.id
///     evaluate_target_health = true
///   }
///   zone_id = primary.zoneId
///   name    = "example.com"
///   type    = "A"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apprunner.ApprunnerFunctions;
/// import com.pulumi.aws.apprunner.inputs.GetHostedZoneIdArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var main = ApprunnerFunctions.getHostedZoneId(GetHostedZoneIdArgs.builder()
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .aliases(RecordAliasArgs.builder()
///                 .name(mainAwsApprunnerCustomDomainAssociation.dnsTarget())
///                 .zoneId(main.id())
///                 .evaluateTargetHealth(true)
///                 .build())
///             .zoneId(primary.zoneId())
///             .name("example.com")
///             .type("A")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   www:
///     type: aws:route53:Record
///     properties:
///       aliases:
///         - name: ${mainAwsApprunnerCustomDomainAssociation.dnsTarget}
///           zoneId: ${main.id}
///           evaluateTargetHealth: true
///       zoneId: ${primary.zoneId}
///       name: example.com
///       type: A
/// variables:
///   main:
///     fn::invoke:
///       function: aws:apprunner:getHostedZoneId
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_apprunner_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostedZoneIdResult> getHostedZoneId(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apprunner/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult.fromMap(result);
}

pulumi.Output<GetHostedZoneIdResult> getHostedZoneIdOutput(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:apprunner/getHostedZoneId:getHostedZoneId',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHostedZoneIdResult.fromMap);
}
