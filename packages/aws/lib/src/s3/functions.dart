import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_args.dart';
import 'get_access_point_result.dart';
import 'get_access_points_args.dart';
import 'get_access_points_result.dart';
import 'get_account_public_access_block_args.dart';
import 'get_account_public_access_block_result.dart';
import 'get_bucket_args.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_lock_configuration_args.dart';
import 'get_bucket_object_lock_configuration_result.dart';
import 'get_bucket_object_result.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';
import 'get_bucket_policy_args.dart';
import 'get_bucket_policy_result.dart';
import 'get_bucket_replication_configuration_args.dart';
import 'get_bucket_replication_configuration_result.dart';
import 'get_bucket_result.dart';
import 'get_canonical_user_id_result.dart';
import 'get_directory_buckets_args.dart';
import 'get_directory_buckets_result.dart';
import 'get_multi_region_access_point_args.dart';
import 'get_multi_region_access_point_result.dart';
import 'get_multi_region_access_points_args.dart';
import 'get_multi_region_access_points_result.dart';
import 'get_object_args.dart';
import 'get_object_result.dart';
import 'get_objects_args.dart';
import 'get_objects_result.dart';

/// Provides details about a specific S3 access point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getAccessPoint({
///     name: "example-access-point",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_access_point(name="example-access-point")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetAccessPoint.Invoke(new()
///     {
///         Name = "example-access-point",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.LookupAccessPoint(ctx, &s3.LookupAccessPointArgs{
/// 			Name: "example-access-point",
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetAccessPointArgs;
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
///         final var example = S3Functions.getAccessPoint(GetAccessPointArgs.builder()
///             .name("example-access-point")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getAccessPoint
///       arguments:
///         name: example-access-point
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_access_point_get_access_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPointResult> getAccessPoint(
  GetAccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccessPoint:getAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointResult.fromMap(result);
}

/// The S3 account public access block data source returns account-level public access block configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getAccountPublicAccessBlock({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_account_public_access_block()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetAccountPublicAccessBlock.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.LookupAccountPublicAccessBlock(ctx, &s3.LookupAccountPublicAccessBlockArgs{}, nil)
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetAccountPublicAccessBlockArgs;
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
///         final var example = S3Functions.getAccountPublicAccessBlock(GetAccountPublicAccessBlockArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getAccountPublicAccessBlock
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_account_public_access_block_get_account_public_access_block_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountPublicAccessBlockResult> getAccountPublicAccessBlock(
  GetAccountPublicAccessBlockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getAccountPublicAccessBlock:getAccountPublicAccessBlock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountPublicAccessBlockResult.fromMap(result);
}

/// Provides details about a specific S3 bucket.
///
/// This resource may prove useful when setting up a Route53 record, or an origin for a CloudFront
/// Distribution.
///
/// ## Example Usage
///
/// ### Route53 Record
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.s3.getBucket({
///     bucket: "bucket.test.com",
/// });
/// const testZone = aws.route53.getZone({
///     name: "test.com.",
/// });
/// const example = new aws.route53.Record("example", {
///     zoneId: testZone.then(testZone => testZone.id),
///     name: "bucket",
///     type: aws.route53.RecordType.A,
///     aliases: [{
///         name: selected.then(selected => selected.websiteDomain),
///         zoneId: selected.then(selected => selected.hostedZoneId),
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.s3.get_bucket(bucket="bucket.test.com")
/// test_zone = aws.route53.get_zone(name="test.com.")
/// example = aws.route53.Record("example",
///     zone_id=test_zone.id,
///     name="bucket",
///     type=aws.route53.RecordType.A,
///     aliases=[{
///         "name": selected.website_domain,
///         "zone_id": selected.hosted_zone_id,
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
///     var selected = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "bucket.test.com",
///     });
///
///     var testZone = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "test.com.",
///     });
///
///     var example = new Aws.Route53.Record("example", new()
///     {
///         ZoneId = testZone.Apply(getZoneResult => getZoneResult.Id),
///         Name = "bucket",
///         Type = Aws.Route53.RecordType.A,
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 Name = selected.Apply(getBucketResult => getBucketResult.WebsiteDomain),
///                 ZoneId = selected.Apply(getBucketResult => getBucketResult.HostedZoneId),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		selected, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "bucket.test.com",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testZone, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name: pulumi.StringRef("test.com."),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// 			ZoneId: pulumi.String(testZone.Id),
/// 			Name:   pulumi.String("bucket"),
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					Name:   pulumi.String(selected.WebsiteDomain),
/// 					ZoneId: pulumi.String(selected.HostedZoneId),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
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
///         final var selected = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("bucket.test.com")
///             .build());
///
///         final var testZone = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("test.com.")
///             .build());
///
///         var example = new Record("example", RecordArgs.builder()
///             .zoneId(testZone.id())
///             .name("bucket")
///             .type("A")
///             .aliases(RecordAliasArgs.builder()
///                 .name(selected.websiteDomain())
///                 .zoneId(selected.hostedZoneId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:Record
///     properties:
///       zoneId: ${testZone.id}
///       name: bucket
///       type: A
///       aliases:
///         - name: ${selected.websiteDomain}
///           zoneId: ${selected.hostedZoneId}
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: bucket.test.com
///   testZone:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: test.com.
/// ```
///
///
/// ### CloudFront Origin
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.s3.getBucket({
///     bucket: "a-test-bucket",
/// });
/// const test = new aws.cloudfront.Distribution("test", {origins: [{
///     domainName: selected.then(selected => selected.bucketDomainName),
///     originId: "s3-selected-bucket",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.s3.get_bucket(bucket="a-test-bucket")
/// test = aws.cloudfront.Distribution("test", origins=[{
///     "domain_name": selected.bucket_domain_name,
///     "origin_id": "s3-selected-bucket",
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
///     var selected = Aws.S3.GetBucket.Invoke(new()
///     {
///         Bucket = "a-test-bucket",
///     });
///
///     var test = new Aws.CloudFront.Distribution("test", new()
///     {
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 DomainName = selected.Apply(getBucketResult => getBucketResult.BucketDomainName),
///                 OriginId = "s3-selected-bucket",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		selected, err := s3.LookupBucket(ctx, &s3.LookupBucketArgs{
/// 			Bucket: "a-test-bucket",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewDistribution(ctx, "test", &cloudfront.DistributionArgs{
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					DomainName: pulumi.String(selected.BucketDomainName),
/// 					OriginId:   pulumi.String("s3-selected-bucket"),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketArgs;
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
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
///         final var selected = S3Functions.getBucket(GetBucketArgs.builder()
///             .bucket("a-test-bucket")
///             .build());
///
///         var test = new Distribution("test", DistributionArgs.builder()
///             .origins(DistributionOriginArgs.builder()
///                 .domainName(selected.bucketDomainName())
///                 .originId("s3-selected-bucket")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:cloudfront:Distribution
///     properties:
///       origins:
///         - domainName: ${selected.bucketDomainName}
///           originId: s3-selected-bucket
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:s3:getBucket
///       arguments:
///         bucket: a-test-bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_get_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucket:getBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}

/// > **NOTE:** The `aws.s3.BucketObject` data source is DEPRECATED and will be removed in a future version! Use `aws.s3.BucketObjectv2` instead, where new features and fixes will be added.
///
/// The S3 object data source allows access to the metadata and
/// _optionally_ (see below) content of an object stored inside S3 bucket.
///
/// > **Note:** The content of an object (`body` field) is available only for objects which have a human-readable `Content-Type`:
///
/// * `text/*`
/// * `application/json`
/// * `application/ld+json`
/// * `application/x-httpd-php`
/// * `application/xhtml+xml`
/// * `application/x-csh`
/// * `application/x-sh`
/// * `application/xml`
/// * `application/atom+xml`
/// * `application/x-sql`
///
/// This is to prevent printing unsafe characters and potentially downloading large amount of data which would be thrown away in favor of metadata.
///
/// ## Example Usage
///
/// The following example retrieves a text object (which must have a `Content-Type`
/// value starting with `text/`) and uses it as the `user_data` for an EC2 instance:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bootstrapScript = aws.s3.getBucketObject({
///     bucket: "ourcorp-deploy-config",
///     key: "ec2-bootstrap-script.sh",
/// });
/// const example = new aws.ec2.Instance("example", {
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     ami: "ami-2757f631",
///     userData: bootstrapScript.then(bootstrapScript => bootstrapScript.body),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bootstrap_script = aws.s3.get_bucket_object(bucket="ourcorp-deploy-config",
///     key="ec2-bootstrap-script.sh")
/// example = aws.ec2.Instance("example",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     ami="ami-2757f631",
///     user_data=bootstrap_script.body)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bootstrapScript = Aws.S3.GetBucketObject.Invoke(new()
///     {
///         Bucket = "ourcorp-deploy-config",
///         Key = "ec2-bootstrap-script.sh",
///     });
///
///     var example = new Aws.Ec2.Instance("example", new()
///     {
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         Ami = "ami-2757f631",
///         UserData = bootstrapScript.Apply(getBucketObjectResult => getBucketObjectResult.Body),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bootstrapScript, err := s3.LookupBucketObject(ctx, &s3.LookupBucketObjectArgs{
/// 			Bucket: "ourcorp-deploy-config",
/// 			Key:    "ec2-bootstrap-script.sh",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// 			InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 			Ami:          pulumi.String("ami-2757f631"),
/// 			UserData:     pulumi.String(bootstrapScript.Body),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketObjectArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
///         final var bootstrapScript = S3Functions.getBucketObject(GetBucketObjectArgs.builder()
///             .bucket("ourcorp-deploy-config")
///             .key("ec2-bootstrap-script.sh")
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .instanceType("t2.micro")
///             .ami("ami-2757f631")
///             .userData(bootstrapScript.body())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Instance
///     properties:
///       instanceType: t2.micro
///       ami: ami-2757f631
///       userData: ${bootstrapScript.body}
/// variables:
///   bootstrapScript:
///     fn::invoke:
///       function: aws:s3:getBucketObject
///       arguments:
///         bucket: ourcorp-deploy-config
///         key: ec2-bootstrap-script.sh
/// ```
///
///
/// The following, more-complex example retrieves only the metadata for a zip
/// file stored in S3, which is then used to pass the most recent `version_id`
/// to AWS Lambda for use as a function implementation. More information about
/// Lambda functions is available in the documentation for
/// `aws.lambda.Function`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lambda = aws.s3.getBucketObject({
///     bucket: "ourcorp-lambda-functions",
///     key: "hello-world.zip",
/// });
/// const testLambda = new aws.lambda.Function("test_lambda", {
///     s3Bucket: lambda.then(lambda => lambda.id),
///     s3Key: lambda.then(lambda => lambda.key),
///     s3ObjectVersion: lambda.then(lambda => lambda.versionId),
///     name: "lambda_function_name",
///     role: iamForLambda.arn,
///     handler: "exports.test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lambda_ = aws.s3.get_bucket_object(bucket="ourcorp-lambda-functions",
///     key="hello-world.zip")
/// test_lambda = aws.lambda_.Function("test_lambda",
///     s3_bucket=lambda_.id,
///     s3_key=lambda_.key,
///     s3_object_version=lambda_.version_id,
///     name="lambda_function_name",
///     role=iam_for_lambda["arn"],
///     handler="exports.test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambda = Aws.S3.GetBucketObject.Invoke(new()
///     {
///         Bucket = "ourcorp-lambda-functions",
///         Key = "hello-world.zip",
///     });
///
///     var testLambda = new Aws.Lambda.Function("test_lambda", new()
///     {
///         S3Bucket = lambda.Apply(getBucketObjectResult => getBucketObjectResult.Id),
///         S3Key = lambda.Apply(getBucketObjectResult => getBucketObjectResult.Key),
///         S3ObjectVersion = lambda.Apply(getBucketObjectResult => getBucketObjectResult.VersionId),
///         Name = "lambda_function_name",
///         Role = iamForLambda.Arn,
///         Handler = "exports.test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lambda, err := s3.LookupBucketObject(ctx, &s3.LookupBucketObjectArgs{
/// 			Bucket: "ourcorp-lambda-functions",
/// 			Key:    "hello-world.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "test_lambda", &lambda.FunctionArgs{
/// 			S3Bucket:        pulumi.String(lambda.Id),
/// 			S3Key:           pulumi.String(lambda.Key),
/// 			S3ObjectVersion: pulumi.String(lambda.VersionId),
/// 			Name:            pulumi.String("lambda_function_name"),
/// 			Role:            pulumi.Any(iamForLambda.Arn),
/// 			Handler:         pulumi.String("exports.test"),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketObjectArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
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
///         final var lambda = S3Functions.getBucketObject(GetBucketObjectArgs.builder()
///             .bucket("ourcorp-lambda-functions")
///             .key("hello-world.zip")
///             .build());
///
///         var testLambda = new Function("testLambda", FunctionArgs.builder()
///             .s3Bucket(lambda.id())
///             .s3Key(lambda.key())
///             .s3ObjectVersion(lambda.versionId())
///             .name("lambda_function_name")
///             .role(iamForLambda.arn())
///             .handler("exports.test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testLambda:
///     type: aws:lambda:Function
///     name: test_lambda
///     properties:
///       s3Bucket: ${lambda.id}
///       s3Key: ${lambda.key}
///       s3ObjectVersion: ${lambda.versionId}
///       name: lambda_function_name
///       role: ${iamForLambda.arn}
///       handler: exports.test
/// variables:
///   lambda:
///     fn::invoke:
///       function: aws:s3:getBucketObject
///       arguments:
///         bucket: ourcorp-lambda-functions
///         key: hello-world.zip
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_object_get_bucket_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObject:getBucketObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}

/// Provides details about an AWS S3 (Simple Storage) Bucket Object Lock Configuration.
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
/// const example = aws.s3.getBucketObjectLockConfiguration({
///     bucket: "example-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_bucket_object_lock_configuration(bucket="example-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetBucketObjectLockConfiguration.Invoke(new()
///     {
///         Bucket = "example-bucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.LookupBucketObjectLockConfiguration(ctx, &s3.LookupBucketObjectLockConfigurationArgs{
/// 			Bucket: "example-bucket",
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketObjectLockConfigurationArgs;
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
///         final var example = S3Functions.getBucketObjectLockConfiguration(GetBucketObjectLockConfigurationArgs.builder()
///             .bucket("example-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getBucketObjectLockConfiguration
///       arguments:
///         bucket: example-bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_object_lock_configuration_get_bucket_object_lock_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectLockConfigurationResult> getBucketObjectLockConfiguration(
  GetBucketObjectLockConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObjectLockConfiguration:getBucketObjectLockConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectLockConfigurationResult.fromMap(result);
}

/// > **NOTE:** The `aws.s3.getBucketObjects` data source is DEPRECATED and will be removed in a future version! Use `aws.s3.getObjects` instead, where new features and fixes will be added.
///
/// > **NOTE on `max_keys`:** Retrieving very large numbers of keys can adversely affect this provider's performance.
///
/// The objects data source returns keys (i.e., file names) and other metadata about objects in an S3 bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_objects_get_bucket_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}

/// The bucket policy data source returns IAM policy of an S3 bucket.
///
/// ## Example Usage
///
/// The following example retrieves IAM policy of a specified S3 bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getBucketPolicy({
///     bucket: "example-bucket-name",
/// });
/// export const foo = example.then(example => example.policy);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_bucket_policy(bucket="example-bucket-name")
/// pulumi.export("foo", example.policy)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetBucketPolicy.Invoke(new()
///     {
///         Bucket = "example-bucket-name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = example.Apply(getBucketPolicyResult => getBucketPolicyResult.Policy),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.LookupBucketPolicy(ctx, &s3.LookupBucketPolicyArgs{
/// 			Bucket: "example-bucket-name",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", example.Policy)
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketPolicyArgs;
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
///         final var example = S3Functions.getBucketPolicy(GetBucketPolicyArgs.builder()
///             .bucket("example-bucket-name")
///             .build());
///
///         ctx.export("foo", example.policy());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getBucketPolicy
///       arguments:
///         bucket: example-bucket-name
/// outputs:
///   foo: ${example.policy}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_policy_get_bucket_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketPolicyResult> getBucketPolicy(
  GetBucketPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketPolicy:getBucketPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketPolicyResult.fromMap(result);
}

/// Data source for managing an AWS S3 (Simple Storage) Bucket Replication Configuration.
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
/// const example = aws.s3.getBucketReplicationConfiguration({
///     bucket: "example-bucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_bucket_replication_configuration(bucket="example-bucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetBucketReplicationConfiguration.Invoke(new()
///     {
///         Bucket = "example-bucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.GetBucketReplicationConfiguration(ctx, &s3.GetBucketReplicationConfigurationArgs{
/// 			Bucket: "example-bucket",
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetBucketReplicationConfigurationArgs;
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
///         final var example = S3Functions.getBucketReplicationConfiguration(GetBucketReplicationConfigurationArgs.builder()
///             .bucket("example-bucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getBucketReplicationConfiguration
///       arguments:
///         bucket: example-bucket
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_bucket_replication_configuration_get_bucket_replication_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketReplicationConfigurationResult> getBucketReplicationConfiguration(
  GetBucketReplicationConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketReplicationConfiguration:getBucketReplicationConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketReplicationConfigurationResult.fromMap(result);
}

/// The Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html)
/// for the effective account in which this provider is working.
///
/// > **NOTE:** To use this data source, you must have the `s3:ListAllMyBuckets` permission.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.s3.getCanonicalUserId({});
/// export const canonicalUserId = current.then(current => current.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.s3.get_canonical_user_id()
/// pulumi.export("canonicalUserId", current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.S3.GetCanonicalUserId.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["canonicalUserId"] = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := s3.GetCanonicalUserId(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("canonicalUserId", current.Id)
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
/// import com.pulumi.aws.s3.S3Functions;
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
///         final var current = S3Functions.getCanonicalUserId(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("canonicalUserId", current.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:s3:getCanonicalUserId
///       arguments: {}
/// outputs:
///   canonicalUserId: ${current.id}
/// ```
/// [options] Invoke options controlling this call.
Future<GetCanonicalUserIdResult> getCanonicalUserId(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getCanonicalUserId:getCanonicalUserId',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCanonicalUserIdResult.fromMap(result);
}

/// Lists Amazon S3 Express directory buckets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3.getDirectoryBuckets({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.get_directory_buckets()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3.GetDirectoryBuckets.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.GetDirectoryBuckets(ctx, &s3.GetDirectoryBucketsArgs{}, nil)
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetDirectoryBucketsArgs;
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
///         final var example = S3Functions.getDirectoryBuckets(GetDirectoryBucketsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3:getDirectoryBuckets
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_directory_buckets_get_directory_buckets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDirectoryBucketsResult> getDirectoryBuckets(
  GetDirectoryBucketsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getDirectoryBuckets:getDirectoryBuckets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryBucketsResult.fromMap(result);
}

/// The S3 object data source allows access to the metadata and
/// _optionally_ (see below) content of an object stored inside S3 bucket.
///
/// > **Note:** The content of an object (`body` field) is available only for objects which have a human-readable `Content-Type`:
///
/// * `text/*`
/// * `application/json`
/// * `application/ld+json`
/// * `application/x-httpd-php`
/// * `application/xhtml+xml`
/// * `application/x-csh`
/// * `application/x-sh`
/// * `application/xml`
/// * `application/atom+xml`
/// * `application/x-sql`
/// * `application/yaml`
///
/// This is to prevent printing unsafe characters and potentially downloading large amount of data which would be thrown away in favor of metadata.
///
/// ## Example Usage
///
/// The following example retrieves a text object (which must have a `Content-Type`
/// value starting with `text/`) and uses it as the `user_data` for an EC2 instance:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bootstrapScript = aws.s3.getObject({
///     bucket: "ourcorp-deploy-config",
///     key: "ec2-bootstrap-script.sh",
/// });
/// const example = new aws.ec2.Instance("example", {
///     instanceType: aws.ec2.InstanceType.T2_Micro,
///     ami: "ami-2757f631",
///     userData: bootstrapScript.then(bootstrapScript => bootstrapScript.body),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bootstrap_script = aws.s3.get_object(bucket="ourcorp-deploy-config",
///     key="ec2-bootstrap-script.sh")
/// example = aws.ec2.Instance("example",
///     instance_type=aws.ec2.InstanceType.T2_MICRO,
///     ami="ami-2757f631",
///     user_data=bootstrap_script.body)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bootstrapScript = Aws.S3.GetObject.Invoke(new()
///     {
///         Bucket = "ourcorp-deploy-config",
///         Key = "ec2-bootstrap-script.sh",
///     });
///
///     var example = new Aws.Ec2.Instance("example", new()
///     {
///         InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///         Ami = "ami-2757f631",
///         UserData = bootstrapScript.Apply(getObjectResult => getObjectResult.Body),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bootstrapScript, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// 			Bucket: "ourcorp-deploy-config",
/// 			Key:    "ec2-bootstrap-script.sh",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInstance(ctx, "example", &ec2.InstanceArgs{
/// 			InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 			Ami:          pulumi.String("ami-2757f631"),
/// 			UserData:     pulumi.String(bootstrapScript.Body),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
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
///         final var bootstrapScript = S3Functions.getObject(GetObjectArgs.builder()
///             .bucket("ourcorp-deploy-config")
///             .key("ec2-bootstrap-script.sh")
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .instanceType("t2.micro")
///             .ami("ami-2757f631")
///             .userData(bootstrapScript.body())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Instance
///     properties:
///       instanceType: t2.micro
///       ami: ami-2757f631
///       userData: ${bootstrapScript.body}
/// variables:
///   bootstrapScript:
///     fn::invoke:
///       function: aws:s3:getObject
///       arguments:
///         bucket: ourcorp-deploy-config
///         key: ec2-bootstrap-script.sh
/// ```
///
///
/// The following, more-complex example retrieves only the metadata for a zip
/// file stored in S3, which is then used to pass the most recent `version_id`
/// to AWS Lambda for use as a function implementation. More information about
/// Lambda functions is available in the documentation for
/// `aws.lambda.Function`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lambda = aws.s3.getObject({
///     bucket: "ourcorp-lambda-functions",
///     key: "hello-world.zip",
/// });
/// const testLambda = new aws.lambda.Function("test_lambda", {
///     s3Bucket: lambda.then(lambda => lambda.bucket),
///     s3Key: lambda.then(lambda => lambda.key),
///     s3ObjectVersion: lambda.then(lambda => lambda.versionId),
///     name: "lambda_function_name",
///     role: iamForLambda.arn,
///     handler: "exports.test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lambda_ = aws.s3.get_object(bucket="ourcorp-lambda-functions",
///     key="hello-world.zip")
/// test_lambda = aws.lambda_.Function("test_lambda",
///     s3_bucket=lambda_.bucket,
///     s3_key=lambda_.key,
///     s3_object_version=lambda_.version_id,
///     name="lambda_function_name",
///     role=iam_for_lambda["arn"],
///     handler="exports.test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lambda = Aws.S3.GetObject.Invoke(new()
///     {
///         Bucket = "ourcorp-lambda-functions",
///         Key = "hello-world.zip",
///     });
///
///     var testLambda = new Aws.Lambda.Function("test_lambda", new()
///     {
///         S3Bucket = lambda.Apply(getObjectResult => getObjectResult.Bucket),
///         S3Key = lambda.Apply(getObjectResult => getObjectResult.Key),
///         S3ObjectVersion = lambda.Apply(getObjectResult => getObjectResult.VersionId),
///         Name = "lambda_function_name",
///         Role = iamForLambda.Arn,
///         Handler = "exports.test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		lambda, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// 			Bucket: "ourcorp-lambda-functions",
/// 			Key:    "hello-world.zip",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewFunction(ctx, "test_lambda", &lambda.FunctionArgs{
/// 			S3Bucket:        pulumi.String(lambda.Bucket),
/// 			S3Key:           pulumi.String(lambda.Key),
/// 			S3ObjectVersion: pulumi.String(lambda.VersionId),
/// 			Name:            pulumi.String("lambda_function_name"),
/// 			Role:            pulumi.Any(iamForLambda.Arn),
/// 			Handler:         pulumi.String("exports.test"),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
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
///         final var lambda = S3Functions.getObject(GetObjectArgs.builder()
///             .bucket("ourcorp-lambda-functions")
///             .key("hello-world.zip")
///             .build());
///
///         var testLambda = new Function("testLambda", FunctionArgs.builder()
///             .s3Bucket(lambda.bucket())
///             .s3Key(lambda.key())
///             .s3ObjectVersion(lambda.versionId())
///             .name("lambda_function_name")
///             .role(iamForLambda.arn())
///             .handler("exports.test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testLambda:
///     type: aws:lambda:Function
///     name: test_lambda
///     properties:
///       s3Bucket: ${lambda.bucket}
///       s3Key: ${lambda.key}
///       s3ObjectVersion: ${lambda.versionId}
///       name: lambda_function_name
///       role: ${iamForLambda.arn}
///       handler: exports.test
/// variables:
///   lambda:
///     fn::invoke:
///       function: aws:s3:getObject
///       arguments:
///         bucket: ourcorp-lambda-functions
///         key: hello-world.zip
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_object_get_object_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectResult> getObject(
  GetObjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getObject:getObject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectResult.fromMap(result);
}

/// > **NOTE on `max_keys`:** Retrieving very large numbers of keys can adversely affect the provider's performance.
///
/// The objects data source returns keys (i.e., file names) and other metadata about objects in an S3 bucket.
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_get_objects_get_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectsResult> getObjects(
  GetObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getObjects:getObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectsResult.fromMap(result);
}

/// Provides details about an AWS S3 Control Access Points.
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
/// const example = aws.s3control.getAccessPoints({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_access_points()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3Control.GetAccessPoints.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.GetAccessPoints(ctx, &s3control.GetAccessPointsArgs{}, nil)
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
/// import com.pulumi.aws.s3control.S3controlFunctions;
/// import com.pulumi.aws.s3control.inputs.GetAccessPointsArgs;
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
///         final var example = S3controlFunctions.getAccessPoints(GetAccessPointsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3control:getAccessPoints
///       arguments: {}
/// ```
///
///
/// ### Filter by Bucket Name
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3control.getAccessPoints({
///     bucket: exampleAwsS3Bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_access_points(bucket=example_aws_s3_bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3Control.GetAccessPoints.Invoke(new()
///     {
///         Bucket = exampleAwsS3Bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.GetAccessPoints(ctx, &s3control.GetAccessPointsArgs{
/// 			Bucket: pulumi.StringRef(exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.s3control.S3controlFunctions;
/// import com.pulumi.aws.s3control.inputs.GetAccessPointsArgs;
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
///         final var example = S3controlFunctions.getAccessPoints(GetAccessPointsArgs.builder()
///             .bucket(exampleAwsS3Bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3control:getAccessPoints
///       arguments:
///         bucket: ${exampleAwsS3Bucket.bucket}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_control_get_access_points_get_access_points_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPointsResult> getAccessPoints(
  GetAccessPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getAccessPoints:getAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPointsResult.fromMap(result);
}

/// Provides details on a specific S3 Multi-Region Access Point.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.s3control.getMultiRegionAccessPoint({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_multi_region_access_point(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3Control.GetMultiRegionAccessPoint.Invoke(new()
///     {
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.LookupMultiRegionAccessPoint(ctx, &s3control.LookupMultiRegionAccessPointArgs{
/// 			Name: "example",
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
/// import com.pulumi.aws.s3control.S3controlFunctions;
/// import com.pulumi.aws.s3control.inputs.GetMultiRegionAccessPointArgs;
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
///         final var example = S3controlFunctions.getMultiRegionAccessPoint(GetMultiRegionAccessPointArgs.builder()
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3control:getMultiRegionAccessPoint
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_control_get_multi_region_access_point_get_multi_region_access_point_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMultiRegionAccessPointResult> getMultiRegionAccessPoint(
  GetMultiRegionAccessPointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoint:getMultiRegionAccessPoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointResult.fromMap(result);
}

/// Provides details about AWS S3 Control Multi-Region Access Points.
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
/// const example = aws.s3control.getMultiRegionAccessPoints({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.get_multi_region_access_points()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.S3Control.GetMultiRegionAccessPoints.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.GetMultiRegionAccessPoints(ctx, &s3control.GetMultiRegionAccessPointsArgs{}, nil)
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
/// import com.pulumi.aws.s3control.S3controlFunctions;
/// import com.pulumi.aws.s3control.inputs.GetMultiRegionAccessPointsArgs;
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
///         final var example = S3controlFunctions.getMultiRegionAccessPoints(GetMultiRegionAccessPointsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:s3control:getMultiRegionAccessPoints
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_s3_control_get_multi_region_access_points_get_multi_region_access_points_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMultiRegionAccessPointsResult> getMultiRegionAccessPoints(
  GetMultiRegionAccessPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3control/getMultiRegionAccessPoints:getMultiRegionAccessPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMultiRegionAccessPointsResult.fromMap(result);
}
