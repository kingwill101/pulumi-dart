import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_policy_args.dart';
import 'get_cache_policy_result.dart';
import 'get_connection_group_args.dart';
import 'get_connection_group_result.dart';
import 'get_distribution_args.dart';
import 'get_distribution_result.dart';
import 'get_distribution_tenant_args.dart';
import 'get_distribution_tenant_result.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';
import 'get_log_delivery_canonical_user_id_args.dart';
import 'get_log_delivery_canonical_user_id_result.dart';
import 'get_origin_access_control_args.dart';
import 'get_origin_access_control_result.dart';
import 'get_origin_access_identities_args.dart';
import 'get_origin_access_identities_result.dart';
import 'get_origin_access_identity_args.dart';
import 'get_origin_access_identity_result.dart';
import 'get_origin_request_policy_args.dart';
import 'get_origin_request_policy_result.dart';
import 'get_realtime_log_config_args.dart';
import 'get_realtime_log_config_result.dart';
import 'get_response_headers_policy_args.dart';
import 'get_response_headers_policy_result.dart';

/// Use this data source to retrieve information about a CloudFront cache policy.
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
/// const example = aws.cloudfront.getCachePolicy({
///     name: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_cache_policy(name="example-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetCachePolicy.Invoke(new()
///     {
///         Name = "example-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// 			Name: pulumi.StringRef("example-policy"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetCachePolicyArgs;
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
///         final var example = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
///             .name("example-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getCachePolicy
///       arguments:
///         name: example-policy
/// ```
///
///
/// ### AWS-Managed Policies
///
/// AWS managed cache policy names are prefixed with `Managed-`, except for `UseOriginCacheControlHeaders` and `UseOriginCacheControlHeaders-QueryStrings`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example1 = aws.cloudfront.getCachePolicy({
///     name: "Managed-CachingOptimized",
/// });
/// const example2 = aws.cloudfront.getCachePolicy({
///     name: "UseOriginCacheControlHeaders",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example1 = aws.cloudfront.get_cache_policy(name="Managed-CachingOptimized")
/// example2 = aws.cloudfront.get_cache_policy(name="UseOriginCacheControlHeaders")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example1 = Aws.CloudFront.GetCachePolicy.Invoke(new()
///     {
///         Name = "Managed-CachingOptimized",
///     });
///
///     var example2 = Aws.CloudFront.GetCachePolicy.Invoke(new()
///     {
///         Name = "UseOriginCacheControlHeaders",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// 			Name: pulumi.StringRef("Managed-CachingOptimized"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// 			Name: pulumi.StringRef("UseOriginCacheControlHeaders"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetCachePolicyArgs;
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
///         final var example1 = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
///             .name("Managed-CachingOptimized")
///             .build());
///
///         final var example2 = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
///             .name("UseOriginCacheControlHeaders")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example1:
///     fn::invoke:
///       function: aws:cloudfront:getCachePolicy
///       arguments:
///         name: Managed-CachingOptimized
///   example2:
///     fn::invoke:
///       function: aws:cloudfront:getCachePolicy
///       arguments:
///         name: UseOriginCacheControlHeaders
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_cache_policy_get_cache_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCachePolicyResult> getCachePolicy(
  GetCachePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getCachePolicy:getCachePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCachePolicyResult.fromMap(result);
}

/// Use this data source to retrieve information about a CloudFront connection group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.cloudfront.getConnectionGroup({
///     id: "EDFDVBD632BHDS5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.get_connection_group(id="EDFDVBD632BHDS5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.CloudFront.GetConnectionGroup.Invoke(new()
///     {
///         Id = "EDFDVBD632BHDS5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupConnectionGroup(ctx, &cloudfront.LookupConnectionGroupArgs{
/// 			Id: pulumi.StringRef("EDFDVBD632BHDS5"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetConnectionGroupArgs;
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
///         final var test = CloudfrontFunctions.getConnectionGroup(GetConnectionGroupArgs.builder()
///             .id("EDFDVBD632BHDS5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:cloudfront:getConnectionGroup
///       arguments:
///         id: EDFDVBD632BHDS5
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_connection_group_get_connection_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionGroupResult> getConnectionGroup(
  GetConnectionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getConnectionGroup:getConnectionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionGroupResult.fromMap(result);
}

/// Use this data source to retrieve information about a CloudFront distribution.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.cloudfront.getDistribution({
///     id: "EDFDVBD632BHDS5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.get_distribution(id="EDFDVBD632BHDS5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.CloudFront.GetDistribution.Invoke(new()
///     {
///         Id = "EDFDVBD632BHDS5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupDistribution(ctx, &cloudfront.LookupDistributionArgs{
/// 			Id: "EDFDVBD632BHDS5",
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetDistributionArgs;
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
///         final var test = CloudfrontFunctions.getDistribution(GetDistributionArgs.builder()
///             .id("EDFDVBD632BHDS5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:cloudfront:getDistribution
///       arguments:
///         id: EDFDVBD632BHDS5
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_distribution_get_distribution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDistributionResult> getDistribution(
  GetDistributionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getDistribution:getDistribution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionResult.fromMap(result);
}

/// Use this data source to retrieve information about a CloudFront distribution tenant.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.cloudfront.getDistributionTenant({
///     id: "EDFDVBD632BHDS5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloudfront.get_distribution_tenant(id="EDFDVBD632BHDS5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.CloudFront.GetDistributionTenant.Invoke(new()
///     {
///         Id = "EDFDVBD632BHDS5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupDistributionTenant(ctx, &cloudfront.LookupDistributionTenantArgs{
/// 			Id: pulumi.StringRef("EDFDVBD632BHDS5"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetDistributionTenantArgs;
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
///         final var test = CloudfrontFunctions.getDistributionTenant(GetDistributionTenantArgs.builder()
///             .id("EDFDVBD632BHDS5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:cloudfront:getDistributionTenant
///       arguments:
///         id: EDFDVBD632BHDS5
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_distribution_tenant_get_distribution_tenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDistributionTenantResult> getDistributionTenant(
  GetDistributionTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getDistributionTenant:getDistributionTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDistributionTenantResult.fromMap(result);
}

/// Provides information about a CloudFront Function.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const functionName = config.require("functionName");
/// const existing = aws.cloudfront.getFunction({
///     name: functionName,
///     stage: "LIVE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// function_name = config.require("functionName")
/// existing = aws.cloudfront.get_function(name=function_name,
///     stage="LIVE")
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
///     var functionName = config.Require("functionName");
///     var existing = Aws.CloudFront.GetFunction.Invoke(new()
///     {
///         Name = functionName,
///         Stage = "LIVE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		functionName := cfg.Require("functionName")
/// 		_, err := cloudfront.LookupFunction(ctx, &cloudfront.LookupFunctionArgs{
/// 			Name:  functionName,
/// 			Stage: "LIVE",
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetFunctionArgs;
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
///         final var functionName = config.get("functionName");
///         final var existing = CloudfrontFunctions.getFunction(GetFunctionArgs.builder()
///             .name(functionName)
///             .stage("LIVE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   functionName:
///     type: string
/// variables:
///   existing:
///     fn::invoke:
///       function: aws:cloudfront:getFunction
///       arguments:
///         name: ${functionName}
///         stage: LIVE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_function_get_function_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getFunction:getFunction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}

/// The CloudFront Log Delivery Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html) of the AWS `awslogsdelivery` account for CloudFront bucket logging.
/// See the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.s3.getCanonicalUserId({});
/// const example = aws.cloudfront.getLogDeliveryCanonicalUserId({});
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleBucketOwnershipControls = new aws.s3.BucketOwnershipControls("example", {
///     bucket: exampleBucket.id,
///     rule: {
///         objectOwnership: "BucketOwnerPreferred",
///     },
/// });
/// const exampleBucketAcl = new aws.s3.BucketAcl("example", {
///     bucket: exampleBucket.id,
///     accessControlPolicy: {
///         grants: [{
///             grantee: {
///                 id: example.then(example => example.id),
///                 type: "CanonicalUser",
///             },
///             permission: "FULL_CONTROL",
///         }],
///         owner: {
///             id: current.then(current => current.id),
///         },
///     },
/// }, {
///     dependsOn: [exampleBucketOwnershipControls],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.s3.get_canonical_user_id()
/// example = aws.cloudfront.get_log_delivery_canonical_user_id()
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_bucket_ownership_controls = aws.s3.BucketOwnershipControls("example",
///     bucket=example_bucket.id,
///     rule={
///         "object_ownership": "BucketOwnerPreferred",
///     })
/// example_bucket_acl = aws.s3.BucketAcl("example",
///     bucket=example_bucket.id,
///     access_control_policy={
///         "grants": [{
///             "grantee": {
///                 "id": example.id,
///                 "type": "CanonicalUser",
///             },
///             "permission": "FULL_CONTROL",
///         }],
///         "owner": {
///             "id": current.id,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_bucket_ownership_controls]))
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
///     var example = Aws.CloudFront.GetLogDeliveryCanonicalUserId.Invoke();
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleBucketOwnershipControls = new Aws.S3.BucketOwnershipControls("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Rule = new Aws.S3.Inputs.BucketOwnershipControlsRuleArgs
///         {
///             ObjectOwnership = "BucketOwnerPreferred",
///         },
///     });
///
///     var exampleBucketAcl = new Aws.S3.BucketAcl("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         AccessControlPolicy = new Aws.S3.Inputs.BucketAclAccessControlPolicyArgs
///         {
///             Grants = new[]
///             {
///                 new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantArgs
///                 {
///                     Grantee = new Aws.S3.Inputs.BucketAclAccessControlPolicyGrantGranteeArgs
///                     {
///                         Id = example.Apply(getLogDeliveryCanonicalUserIdResult => getLogDeliveryCanonicalUserIdResult.Id),
///                         Type = "CanonicalUser",
///                     },
///                     Permission = "FULL_CONTROL",
///                 },
///             },
///             Owner = new Aws.S3.Inputs.BucketAclAccessControlPolicyOwnerArgs
///             {
///                 Id = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleBucketOwnershipControls,
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
/// 		current, err := s3.GetCanonicalUserId(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudfront.GetLogDeliveryCanonicalUserId(ctx, &cloudfront.GetLogDeliveryCanonicalUserIdArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketOwnershipControls, err := s3.NewBucketOwnershipControls(ctx, "example", &s3.BucketOwnershipControlsArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Rule: &s3.BucketOwnershipControlsRuleArgs{
/// 				ObjectOwnership: pulumi.String("BucketOwnerPreferred"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "example", &s3.BucketAclArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			AccessControlPolicy: &s3.BucketAclAccessControlPolicyArgs{
/// 				Grants: s3.BucketAclAccessControlPolicyGrantArray{
/// 					&s3.BucketAclAccessControlPolicyGrantArgs{
/// 						Grantee: &s3.BucketAclAccessControlPolicyGrantGranteeArgs{
/// 							Id:   pulumi.String(example.Id),
/// 							Type: pulumi.String("CanonicalUser"),
/// 						},
/// 						Permission: pulumi.String("FULL_CONTROL"),
/// 					},
/// 				},
/// 				Owner: &s3.BucketAclAccessControlPolicyOwnerArgs{
/// 					Id: pulumi.String(current.Id),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleBucketOwnershipControls,
/// 		}))
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetLogDeliveryCanonicalUserIdArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketOwnershipControls;
/// import com.pulumi.aws.s3.BucketOwnershipControlsArgs;
/// import com.pulumi.aws.s3.inputs.BucketOwnershipControlsRuleArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyArgs;
/// import com.pulumi.aws.s3.inputs.BucketAclAccessControlPolicyOwnerArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var example = CloudfrontFunctions.getLogDeliveryCanonicalUserId(GetLogDeliveryCanonicalUserIdArgs.builder()
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleBucketOwnershipControls = new BucketOwnershipControls("exampleBucketOwnershipControls", BucketOwnershipControlsArgs.builder()
///             .bucket(exampleBucket.id())
///             .rule(BucketOwnershipControlsRuleArgs.builder()
///                 .objectOwnership("BucketOwnerPreferred")
///                 .build())
///             .build());
///
///         var exampleBucketAcl = new BucketAcl("exampleBucketAcl", BucketAclArgs.builder()
///             .bucket(exampleBucket.id())
///             .accessControlPolicy(BucketAclAccessControlPolicyArgs.builder()
///                 .grants(BucketAclAccessControlPolicyGrantArgs.builder()
///                     .grantee(BucketAclAccessControlPolicyGrantGranteeArgs.builder()
///                         .id(example.id())
///                         .type("CanonicalUser")
///                         .build())
///                     .permission("FULL_CONTROL")
///                     .build())
///                 .owner(BucketAclAccessControlPolicyOwnerArgs.builder()
///                     .id(current.id())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleBucketOwnershipControls)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleBucketOwnershipControls:
///     type: aws:s3:BucketOwnershipControls
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       rule:
///         objectOwnership: BucketOwnerPreferred
///   exampleBucketAcl:
///     type: aws:s3:BucketAcl
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       accessControlPolicy:
///         grants:
///           - grantee:
///               id: ${example.id}
///               type: CanonicalUser
///             permission: FULL_CONTROL
///         owner:
///           id: ${current.id}
///     options:
///       dependsOn:
///         - ${exampleBucketOwnershipControls}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:s3:getCanonicalUserId
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getLogDeliveryCanonicalUserId
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_log_delivery_canonical_user_id_get_log_delivery_canonical_user_id_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogDeliveryCanonicalUserIdResult> getLogDeliveryCanonicalUserId(
  GetLogDeliveryCanonicalUserIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getLogDeliveryCanonicalUserId:getLogDeliveryCanonicalUserId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogDeliveryCanonicalUserIdResult.fromMap(result);
}

/// Use this data source to retrieve information for an Amazon CloudFront origin access control config.
///
/// ## Example Usage
///
/// The below example retrieves a CloudFront origin access control config.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessControl({
///     id: "E2T5VTFBZJ3BJB",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_control(id="E2T5VTFBZJ3BJB")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetOriginAccessControl.Invoke(new()
///     {
///         Id = "E2T5VTFBZJ3BJB",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupOriginAccessControl(ctx, &cloudfront.LookupOriginAccessControlArgs{
/// 			Id: "E2T5VTFBZJ3BJB",
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessControlArgs;
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
///         final var example = CloudfrontFunctions.getOriginAccessControl(GetOriginAccessControlArgs.builder()
///             .id("E2T5VTFBZJ3BJB")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getOriginAccessControl
///       arguments:
///         id: E2T5VTFBZJ3BJB
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_origin_access_control_get_origin_access_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginAccessControlResult> getOriginAccessControl(
  GetOriginAccessControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessControl:getOriginAccessControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessControlResult.fromMap(result);
}

/// Use this data source to get ARNs, ids and S3 canonical user IDs of Amazon CloudFront origin access identities.
///
/// ## Example Usage
///
/// ### All origin access identities in the account
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentities({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identities()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetOriginAccessIdentities.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.GetOriginAccessIdentities(ctx, &cloudfront.GetOriginAccessIdentitiesArgs{}, nil)
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentitiesArgs;
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
///         final var example = CloudfrontFunctions.getOriginAccessIdentities(GetOriginAccessIdentitiesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getOriginAccessIdentities
///       arguments: {}
/// ```
///
///
/// ### Origin access identities filtered by comment/name
///
/// Origin access identities whose comments are `example-comment1`, `example-comment2`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentities({
///     comments: [
///         "example-comment1",
///         "example-comment2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identities(comments=[
///     "example-comment1",
///     "example-comment2",
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
///     var example = Aws.CloudFront.GetOriginAccessIdentities.Invoke(new()
///     {
///         Comments = new[]
///         {
///             "example-comment1",
///             "example-comment2",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.GetOriginAccessIdentities(ctx, &cloudfront.GetOriginAccessIdentitiesArgs{
/// 			Comments: []string{
/// 				"example-comment1",
/// 				"example-comment2",
/// 			},
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentitiesArgs;
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
///         final var example = CloudfrontFunctions.getOriginAccessIdentities(GetOriginAccessIdentitiesArgs.builder()
///             .comments(
///                 "example-comment1",
///                 "example-comment2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getOriginAccessIdentities
///       arguments:
///         comments:
///           - example-comment1
///           - example-comment2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_origin_access_identities_get_origin_access_identities_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginAccessIdentitiesResult> getOriginAccessIdentities(
  GetOriginAccessIdentitiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentities:getOriginAccessIdentities',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentitiesResult.fromMap(result);
}

/// Use this data source to retrieve information for an Amazon CloudFront origin access identity.
///
/// ## Example Usage
///
/// The following example below creates a CloudFront origin access identity.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginAccessIdentity({
///     id: "E1ZAKK699EOLAL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_access_identity(id="E1ZAKK699EOLAL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetOriginAccessIdentity.Invoke(new()
///     {
///         Id = "E1ZAKK699EOLAL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupOriginAccessIdentity(ctx, &cloudfront.LookupOriginAccessIdentityArgs{
/// 			Id: "E1ZAKK699EOLAL",
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginAccessIdentityArgs;
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
///         final var example = CloudfrontFunctions.getOriginAccessIdentity(GetOriginAccessIdentityArgs.builder()
///             .id("E1ZAKK699EOLAL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getOriginAccessIdentity
///       arguments:
///         id: E1ZAKK699EOLAL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_origin_access_identity_get_origin_access_identity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginAccessIdentityResult> getOriginAccessIdentity(
  GetOriginAccessIdentityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginAccessIdentity:getOriginAccessIdentity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginAccessIdentityResult.fromMap(result);
}

/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getOriginRequestPolicy({
///     name: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_origin_request_policy(name="example-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetOriginRequestPolicy.Invoke(new()
///     {
///         Name = "example-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupOriginRequestPolicy(ctx, &cloudfront.LookupOriginRequestPolicyArgs{
/// 			Name: pulumi.StringRef("example-policy"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginRequestPolicyArgs;
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
///         final var example = CloudfrontFunctions.getOriginRequestPolicy(GetOriginRequestPolicyArgs.builder()
///             .name("example-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getOriginRequestPolicy
///       arguments:
///         name: example-policy
/// ```
///
///
/// ### AWS-Managed Policies
///
/// AWS managed origin request policy names are prefixed with `Managed-`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const uaReferer = aws.cloudfront.getOriginRequestPolicy({
///     name: "Managed-UserAgentRefererHeaders",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ua_referer = aws.cloudfront.get_origin_request_policy(name="Managed-UserAgentRefererHeaders")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var uaReferer = Aws.CloudFront.GetOriginRequestPolicy.Invoke(new()
///     {
///         Name = "Managed-UserAgentRefererHeaders",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupOriginRequestPolicy(ctx, &cloudfront.LookupOriginRequestPolicyArgs{
/// 			Name: pulumi.StringRef("Managed-UserAgentRefererHeaders"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginRequestPolicyArgs;
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
///         final var uaReferer = CloudfrontFunctions.getOriginRequestPolicy(GetOriginRequestPolicyArgs.builder()
///             .name("Managed-UserAgentRefererHeaders")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   uaReferer:
///     fn::invoke:
///       function: aws:cloudfront:getOriginRequestPolicy
///       arguments:
///         name: Managed-UserAgentRefererHeaders
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_origin_request_policy_get_origin_request_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginRequestPolicyResult> getOriginRequestPolicy(
  GetOriginRequestPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getOriginRequestPolicy:getOriginRequestPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginRequestPolicyResult.fromMap(result);
}

/// Provides a CloudFront real-time log configuration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getRealtimeLogConfig({
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_realtime_log_config(name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetRealtimeLogConfig.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupRealtimeLogConfig(ctx, &cloudfront.LookupRealtimeLogConfigArgs{
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetRealtimeLogConfigArgs;
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
///         final var example = CloudfrontFunctions.getRealtimeLogConfig(GetRealtimeLogConfigArgs.builder()
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
///       function: aws:cloudfront:getRealtimeLogConfig
///       arguments:
///         name: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_realtime_log_config_get_realtime_log_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRealtimeLogConfigResult> getRealtimeLogConfig(
  GetRealtimeLogConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getRealtimeLogConfig:getRealtimeLogConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRealtimeLogConfigResult.fromMap(result);
}

/// Use this data source to retrieve information about a CloudFront cache policy.
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
/// const example = aws.cloudfront.getResponseHeadersPolicy({
///     name: "example-policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_response_headers_policy(name="example-policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetResponseHeadersPolicy.Invoke(new()
///     {
///         Name = "example-policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupResponseHeadersPolicy(ctx, &cloudfront.LookupResponseHeadersPolicyArgs{
/// 			Name: pulumi.StringRef("example-policy"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetResponseHeadersPolicyArgs;
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
///         final var example = CloudfrontFunctions.getResponseHeadersPolicy(GetResponseHeadersPolicyArgs.builder()
///             .name("example-policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getResponseHeadersPolicy
///       arguments:
///         name: example-policy
/// ```
///
///
/// ### AWS-Managed Policies
///
/// AWS managed response header policy names are prefixed with `Managed-`:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudfront.getResponseHeadersPolicy({
///     name: "Managed-SimpleCORS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.get_response_headers_policy(name="Managed-SimpleCORS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.CloudFront.GetResponseHeadersPolicy.Invoke(new()
///     {
///         Name = "Managed-SimpleCORS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.LookupResponseHeadersPolicy(ctx, &cloudfront.LookupResponseHeadersPolicyArgs{
/// 			Name: pulumi.StringRef("Managed-SimpleCORS"),
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
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetResponseHeadersPolicyArgs;
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
///         final var example = CloudfrontFunctions.getResponseHeadersPolicy(GetResponseHeadersPolicyArgs.builder()
///             .name("Managed-SimpleCORS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:cloudfront:getResponseHeadersPolicy
///       arguments:
///         name: Managed-SimpleCORS
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudfront_get_response_headers_policy_get_response_headers_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponseHeadersPolicyResult> getResponseHeadersPolicy(
  GetResponseHeadersPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getResponseHeadersPolicy:getResponseHeadersPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponseHeadersPolicyResult.fromMap(result);
}
