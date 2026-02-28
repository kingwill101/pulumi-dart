import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_access_point_policy_args.dart';
import 'multi_region_access_point_policy_details.dart';

/// Provides a resource to manage an S3 Multi-Region Access Point access control policy.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const fooBucket = new aws.s3.Bucket("foo_bucket", {bucket: "example-bucket-foo"});
/// const example = new aws.s3control.MultiRegionAccessPoint("example", {details: {
///     name: "example",
///     regions: [{
///         bucket: fooBucket.id,
///     }],
/// }});
/// const exampleMultiRegionAccessPointPolicy = new aws.s3control.MultiRegionAccessPointPolicy("example", {details: {
///     name: std.splitOutput({
///         separator: ":",
///         text: example.id,
///     }).apply(invoke => invoke.result)[1],
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "Example",
///             Effect: "Allow",
///             Principal: {
///                 AWS: current.then(current => current.accountId),
///             },
///             Action: [
///                 "s3:GetObject",
///                 "s3:PutObject",
///             ],
///             Resource: pulumi.all([currentGetPartition, current, example.alias]).apply(([currentGetPartition, current, alias]) => `arn:${currentGetPartition.partition}:s3::${current.accountId}:accesspoint/${alias}/object/*`),
///         }],
///     }),
/// }});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// foo_bucket = aws.s3.Bucket("foo_bucket", bucket="example-bucket-foo")
/// example = aws.s3control.MultiRegionAccessPoint("example", details={
///     "name": "example",
///     "regions": [{
///         "bucket": foo_bucket.id,
///     }],
/// })
/// example_multi_region_access_point_policy = aws.s3control.MultiRegionAccessPointPolicy("example", details={
///     "name": std.split_output(separator=":",
///         text=example.id).apply(lambda invoke: invoke.result)[1],
///     "policy": pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "Example",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": current.account_id,
///             },
///             "Action": [
///                 "s3:GetObject",
///                 "s3:PutObject",
///             ],
///             "Resource": example.alias.apply(lambda alias: f"arn:{current_get_partition.partition}:s3::{current.account_id}:accesspoint/{alias}/object/*"),
///         }],
///     }),
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var fooBucket = new Aws.S3.Bucket("foo_bucket", new()
///     {
///         BucketName = "example-bucket-foo",
///     });
///
///     var example = new Aws.S3Control.MultiRegionAccessPoint("example", new()
///     {
///         Details = new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsArgs
///         {
///             Name = "example",
///             Regions = new[]
///             {
///                 new Aws.S3Control.Inputs.MultiRegionAccessPointDetailsRegionArgs
///                 {
///                     Bucket = fooBucket.Id,
///                 },
///             },
///         },
///     });
///
///     var exampleMultiRegionAccessPointPolicy = new Aws.S3Control.MultiRegionAccessPointPolicy("example", new()
///     {
///         Details = new Aws.S3Control.Inputs.MultiRegionAccessPointPolicyDetailsArgs
///         {
///             Name = Std.Split.Invoke(new()
///             {
///                 Separator = ":",
///                 Text = example.Id,
///             }).Apply(invoke => invoke.Result)[1],
///             Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["Version"] = "2012-10-17",
///                 ["Statement"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["Sid"] = "Example",
///                         ["Effect"] = "Allow",
///                         ["Principal"] = new Dictionary<string, object?>
///                         {
///                             ["AWS"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         ["Action"] = new[]
///                         {
///                             "s3:GetObject",
///                             "s3:PutObject",
///                         },
///                         ["Resource"] = Output.Tuple(currentGetPartition, current, example.Alias).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             var @alias = values.Item3;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:s3::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:accesspoint/{@alias}/object/*";
///                         }),
///                     },
///                 },
///             })),
///         },
///     });
///
/// });
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3control.MultiRegionAccessPoint;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointDetailsArgs;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointPolicy;
/// import com.pulumi.aws.s3control.MultiRegionAccessPointPolicyArgs;
/// import com.pulumi.aws.s3control.inputs.MultiRegionAccessPointPolicyDetailsArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.SplitArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var fooBucket = new Bucket("fooBucket", BucketArgs.builder()
///             .bucket("example-bucket-foo")
///             .build());
///
///         var example = new MultiRegionAccessPoint("example", MultiRegionAccessPointArgs.builder()
///             .details(MultiRegionAccessPointDetailsArgs.builder()
///                 .name("example")
///                 .regions(MultiRegionAccessPointDetailsRegionArgs.builder()
///                     .bucket(fooBucket.id())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleMultiRegionAccessPointPolicy = new MultiRegionAccessPointPolicy("exampleMultiRegionAccessPointPolicy", MultiRegionAccessPointPolicyArgs.builder()
///             .details(MultiRegionAccessPointPolicyDetailsArgs.builder()
///                 .name(StdFunctions.split(SplitArgs.builder()
///                     .separator(":")
///                     .text(example.id())
///                     .build()).applyValue(_invoke -> _invoke.result())[1])
///                 .policy(example.alias().applyValue(_alias -> serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Sid", "Example"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", current.accountId())
///                             )),
///                             jsonProperty("Action", jsonArray(
///                                 "s3:GetObject",
///                                 "s3:PutObject"
///                             )),
///                             jsonProperty("Resource", String.format("arn:%s:s3::%s:accesspoint/%s/object/*", currentGetPartition.partition(),current.accountId(),_alias))
///                         )))
///                     ))))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooBucket:
///     type: aws:s3:Bucket
///     name: foo_bucket
///     properties:
///       bucket: example-bucket-foo
///   example:
///     type: aws:s3control:MultiRegionAccessPoint
///     properties:
///       details:
///         name: example
///         regions:
///           - bucket: ${fooBucket.id}
///   exampleMultiRegionAccessPointPolicy:
///     type: aws:s3control:MultiRegionAccessPointPolicy
///     name: example
///     properties:
///       details:
///         name:
///           fn::select:
///             - 1
///             - fn::invoke:
///                 function: std:split
///                 arguments:
///                   separator: ':'
///                   text: ${example.id}
///                 return: result
///         policy:
///           fn::toJSON:
///             Version: 2012-10-17
///             Statement:
///               - Sid: Example
///                 Effect: Allow
///                 Principal:
///                   AWS: ${current.accountId}
///                 Action:
///                   - s3:GetObject
///                   - s3:PutObject
///                 Resource: arn:${currentGetPartition.partition}:s3::${current.accountId}:accesspoint/${example.alias}/object/*
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Multi-Region Access Point Policies using the `account_id` and `name` of the Multi-Region Access Point separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/multiRegionAccessPointPolicy:MultiRegionAccessPointPolicy example 123456789012:example
/// ```
class MultiRegionAccessPointPolicy extends pulumi.CustomResource {
  /// The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;

  /// A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more details
  late final pulumi.Output<MultiRegionAccessPointPolicyDetails> details;

  /// The last established policy for the Multi-Region Access Point.
  late final pulumi.Output<String> established;

  /// The proposed policy for the Multi-Region Access Point.
  late final pulumi.Output<String> proposed;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [MultiRegionAccessPointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiRegionAccessPointPolicy]. {@macro pulumi_s3_control_multi_region_access_point_policy_multi_region_access_point_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiRegionAccessPointPolicy(
    String name, {
    MultiRegionAccessPointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/multiRegionAccessPointPolicy:MultiRegionAccessPointPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.details =
        registerOutput<MultiRegionAccessPointPolicyDetails>('details');
    this.established = registerOutput<String>('established');
    this.proposed = registerOutput<String>('proposed');
    this.region = registerOutput<String>('region');
  }
}
