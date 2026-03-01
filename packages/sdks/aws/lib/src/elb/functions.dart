import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_args.dart';
import 'get_hosted_zone_id_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_service_account_args.dart';
import 'get_service_account_result.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing HostedZoneId
/// in a given region for the purpose of using in an AWS Route53 Alias.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.elb.getHostedZoneId({});
/// const www = new aws.route53.Record("www", {
///     zoneId: primary.zoneId,
///     name: "example.com",
///     type: aws.route53.RecordType.A,
///     aliases: [{
///         name: mainAwsElb.dnsName,
///         zoneId: main.then(main => main.id),
///         evaluateTargetHealth: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.elb.get_hosted_zone_id()
/// www = aws.route53.Record("www",
///     zone_id=primary["zoneId"],
///     name="example.com",
///     type=aws.route53.RecordType.A,
///     aliases=[{
///         "name": main_aws_elb["dnsName"],
///         "zone_id": main.id,
///         "evaluate_target_health": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.Elb.GetHostedZoneId.Invoke();
///
///     var www = new Aws.Route53.Record("www", new()
///     {
///         ZoneId = primary.ZoneId,
///         Name = "example.com",
///         Type = Aws.Route53.RecordType.A,
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = mainAwsElb.DnsName,
///                 ZoneId = main.Apply(getHostedZoneIdResult => getHostedZoneIdResult.Id),
///                 EvaluateTargetHealth = true,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := elb.GetHostedZoneId(ctx, &elb.GetHostedZoneIdArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "www", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(primary.ZoneId),
/// 			Name:   pulumi.String("example.com"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:                 pulumi.Any(mainAwsElb.DnsName),
/// 					ZoneId:               pulumi.String(main.Id),
/// 					EvaluateTargetHealth: pulumi.Bool(true),
/// 				},
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
/// import com.pulumi.aws.elb.ElbFunctions;
/// import com.pulumi.aws.elb.inputs.GetHostedZoneIdArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var main = ElbFunctions.getHostedZoneId(GetHostedZoneIdArgs.builder()
///             .build());
///
///         var www = new Record("www", RecordArgs.builder()
///             .zoneId(primary.zoneId())
///             .name("example.com")
///             .type("A")
///             .aliases(RecordAliasArgs.builder()
///                 .name(mainAwsElb.dnsName())
///                 .zoneId(main.id())
///                 .evaluateTargetHealth(true)
///                 .build())
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
///       zoneId: ${primary.zoneId}
///       name: example.com
///       type: A
///       aliases:
///         - name: ${mainAwsElb.dnsName}
///           zoneId: ${main.id}
///           evaluateTargetHealth: true
/// variables:
///   main:
///     fn::invoke:
///       function: aws:elb:getHostedZoneId
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elb_get_hosted_zone_id_get_hosted_zone_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostedZoneIdResult> getHostedZoneId(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult.fromMap(result);
}

/// Provides information about a "classic" Elastic Load Balancer (ELB).
/// See LB Data Source if you are looking for "v2"
/// Application Load Balancer (ALB) or Network Load Balancer (NLB).
///
/// This data source can prove useful when a module accepts an LB as an input
/// variable and needs to, for example, determine the security groups associated
/// with it, etc.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const lbName = config.get("lbName") || "";
/// const test = aws.elb.getLoadBalancer({
///     name: lbName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// lb_name = config.get("lbName")
/// if lb_name is None:
///     lb_name = ""
/// test = aws.elb.get_load_balancer(name=lb_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var lbName = config.Get("lbName") ?? "";
///     var test = Aws.Elb.GetLoadBalancer.Invoke(new()
///     {
///         Name = lbName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		lbName := ""
/// 		if param := cfg.Get("lbName"); param != "" {
/// 			lbName = param
/// 		}
/// 		_, err := elb.LookupLoadBalancer(ctx, &elb.LookupLoadBalancerArgs{
/// 			Name: lbName,
/// 		}, nil)
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
/// import com.pulumi.aws.elb.ElbFunctions;
/// import com.pulumi.aws.elb.inputs.GetLoadBalancerArgs;
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
///         final var config = ctx.config();
///         final var lbName = config.get("lbName").orElse("");
///         final var test = ElbFunctions.getLoadBalancer(GetLoadBalancerArgs.builder()
///             .name(lbName)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   lbName:
///     type: string
///     default: ""
/// variables:
///   test:
///     fn::invoke:
///       function: aws:elb:getLoadBalancer
///       arguments:
///         name: ${lbName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elb_get_load_balancer_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getLoadBalancer:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

/// Use this data source to get the Account ID of the [AWS Elastic Load Balancing Service Account](http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy)
/// in a given region for the purpose of permitting in S3 bucket policy.
///
/// > **Note:** For AWS Regions opened since Jakarta (`ap-southeast-3`) in December 2021, AWS [documents that](https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html#attach-bucket-policy) a [service principal name](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services) should be used instead of an AWS account ID in any relevant IAM policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = aws.elb.getServiceAccount({});
/// const elbLogs = new aws.s3.Bucket("elb_logs", {bucket: "my-elb-tf-test-bucket"});
/// const elbLogsAcl = new aws.s3.BucketAcl("elb_logs_acl", {
///     bucket: elbLogs.id,
///     acl: "private",
/// });
/// const allowElbLogging = pulumi.all([main, elbLogs.arn]).apply(([main, arn]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: [main.arn],
///         }],
///         actions: ["s3:PutObject"],
///         resources: [`${arn}/AWSLogs/*`],
///     }],
/// }));
/// const allowElbLoggingBucketPolicy = new aws.s3.BucketPolicy("allow_elb_logging", {
///     bucket: elbLogs.id,
///     policy: allowElbLogging.apply(allowElbLogging => allowElbLogging.json),
/// });
/// const bar = new aws.elb.LoadBalancer("bar", {
///     name: "my-foobar-elb",
///     availabilityZones: ["us-west-2a"],
///     accessLogs: {
///         bucket: elbLogs.id,
///         interval: 5,
///     },
///     listeners: [{
///         instancePort: 8000,
///         instanceProtocol: "http",
///         lbPort: 80,
///         lbProtocol: "http",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.elb.get_service_account()
/// elb_logs = aws.s3.Bucket("elb_logs", bucket="my-elb-tf-test-bucket")
/// elb_logs_acl = aws.s3.BucketAcl("elb_logs_acl",
///     bucket=elb_logs.id,
///     acl="private")
/// allow_elb_logging = elb_logs.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [main.arn],
///     }],
///     "actions": ["s3:PutObject"],
///     "resources": [f"{arn}/AWSLogs/*"],
/// }]))
/// allow_elb_logging_bucket_policy = aws.s3.BucketPolicy("allow_elb_logging",
///     bucket=elb_logs.id,
///     policy=allow_elb_logging.json)
/// bar = aws.elb.LoadBalancer("bar",
///     name="my-foobar-elb",
///     availability_zones=["us-west-2a"],
///     access_logs={
///         "bucket": elb_logs.id,
///         "interval": 5,
///     },
///     listeners=[{
///         "instance_port": 8000,
///         "instance_protocol": "http",
///         "lb_port": 80,
///         "lb_protocol": "http",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Aws.Elb.GetServiceAccount.Invoke();
///
///     var elbLogs = new Aws.S3.Bucket("elb_logs", new()
///     {
///         BucketName = "my-elb-tf-test-bucket",
///     });
///
///     var elbLogsAcl = new Aws.S3.BucketAcl("elb_logs_acl", new()
///     {
///         Bucket = elbLogs.Id,
///         Acl = "private",
///     });
///
///     var allowElbLogging = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             main.Apply(getServiceAccountResult => getServiceAccountResult.Arn),
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{elbLogs.Arn}/AWSLogs/*",
///                 },
///             },
///         },
///     });
///
///     var allowElbLoggingBucketPolicy = new Aws.S3.BucketPolicy("allow_elb_logging", new()
///     {
///         Bucket = elbLogs.Id,
///         Policy = allowElbLogging.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var bar = new Aws.Elb.LoadBalancer("bar", new()
///     {
///         Name = "my-foobar-elb",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///         },
///         AccessLogs = new Aws.Elb.Inputs.LoadBalancerAccessLogsArgs
///         {
///             Bucket = elbLogs.Id,
///             Interval = 5,
///         },
///         Listeners = new[]
///         {
///             new Aws.Elb.Inputs.LoadBalancerListenerArgs
///             {
///                 InstancePort = 8000,
///                 InstanceProtocol = "http",
///                 LbPort = 80,
///                 LbProtocol = "http",
///             },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := elb.GetServiceAccount(ctx, &elb.GetServiceAccountArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// elbLogs, err := s3.NewBucket(ctx, "elb_logs", &s3.BucketArgs{
/// Bucket: pulumi.String("my-elb-tf-test-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "elb_logs_acl", &s3.BucketAclArgs{
/// Bucket: elbLogs.ID(),
/// Acl: pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// allowElbLogging := elbLogs.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// main.Arn,
/// },
/// },
/// },
/// Actions: []string{
/// "s3:PutObject",
/// },
/// Resources: []string{
/// fmt.Sprintf("%v/AWSLogs/*", arn),
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = s3.NewBucketPolicy(ctx, "allow_elb_logging", &s3.BucketPolicyArgs{
/// Bucket: elbLogs.ID(),
/// Policy: pulumi.String(allowElbLogging.ApplyT(func(allowElbLogging iam.GetPolicyDocumentResult) (*string, error) {
/// return &allowElbLogging.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elb.NewLoadBalancer(ctx, "bar", &elb.LoadBalancerArgs{
/// Name: pulumi.String("my-foobar-elb"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// },
/// AccessLogs: &elb.LoadBalancerAccessLogsArgs{
/// Bucket: elbLogs.ID(),
/// Interval: pulumi.Int(5),
/// },
/// Listeners: elb.LoadBalancerListenerArray{
/// &elb.LoadBalancerListenerArgs{
/// InstancePort: pulumi.Int(8000),
/// InstanceProtocol: pulumi.String("http"),
/// LbPort: pulumi.Int(80),
/// LbProtocol: pulumi.String("http"),
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
/// import com.pulumi.aws.elb.ElbFunctions;
/// import com.pulumi.aws.elb.inputs.GetServiceAccountArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerAccessLogsArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
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
///         final var main = ElbFunctions.getServiceAccount(GetServiceAccountArgs.builder()
///             .build());
///
///         var elbLogs = new Bucket("elbLogs", BucketArgs.builder()
///             .bucket("my-elb-tf-test-bucket")
///             .build());
///
///         var elbLogsAcl = new BucketAcl("elbLogsAcl", BucketAclArgs.builder()
///             .bucket(elbLogs.id())
///             .acl("private")
///             .build());
///
///         final var allowElbLogging = elbLogs.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(main.arn())
///                     .build())
///                 .actions("s3:PutObject")
///                 .resources(String.format("%s/AWSLogs/*", _arn))
///                 .build())
///             .build()));
///
///         var allowElbLoggingBucketPolicy = new BucketPolicy("allowElbLoggingBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(elbLogs.id())
///             .policy(allowElbLogging.json())
///             .build());
///
///         var bar = new LoadBalancer("bar", LoadBalancerArgs.builder()
///             .name("my-foobar-elb")
///             .availabilityZones("us-west-2a")
///             .accessLogs(LoadBalancerAccessLogsArgs.builder()
///                 .bucket(elbLogs.id())
///                 .interval(5)
///                 .build())
///             .listeners(LoadBalancerListenerArgs.builder()
///                 .instancePort(8000)
///                 .instanceProtocol("http")
///                 .lbPort(80)
///                 .lbProtocol("http")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   elbLogs:
///     type: aws:s3:Bucket
///     name: elb_logs
///     properties:
///       bucket: my-elb-tf-test-bucket
///   elbLogsAcl:
///     type: aws:s3:BucketAcl
///     name: elb_logs_acl
///     properties:
///       bucket: ${elbLogs.id}
///       acl: private
///   allowElbLoggingBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: allow_elb_logging
///     properties:
///       bucket: ${elbLogs.id}
///       policy: ${allowElbLogging.json}
///   bar:
///     type: aws:elb:LoadBalancer
///     properties:
///       name: my-foobar-elb
///       availabilityZones:
///         - us-west-2a
///       accessLogs:
///         bucket: ${elbLogs.id}
///         interval: 5
///       listeners:
///         - instancePort: 8000
///           instanceProtocol: http
///           lbPort: 80
///           lbProtocol: http
/// variables:
///   main:
///     fn::invoke:
///       function: aws:elb:getServiceAccount
///       arguments: {}
///   allowElbLogging:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - ${main.arn}
///             actions:
///               - s3:PutObject
///             resources:
///               - ${elbLogs.arn}/AWSLogs/*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_elb_get_service_account_get_service_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAccountResult> getServiceAccount(
  GetServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getServiceAccount:getServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAccountResult.fromMap(result);
}
