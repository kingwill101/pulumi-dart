import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_matching.dart';
import 'domain_rule_based_matching.dart';

/// Resource for managing an Amazon Customer Profiles Domain.
/// See the [Create Domain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.customerprofiles.Domain("example", {domainName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.customerprofiles.Domain("example", domain_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CustomerProfiles.Domain("example", new()
///     {
///         DomainName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/customerprofiles"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := customerprofiles.NewDomain(ctx, "example", &customerprofiles.DomainArgs{
/// 			DomainName: pulumi.String("example"),
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
/// import com.pulumi.aws.customerprofiles.Domain;
/// import com.pulumi.aws.customerprofiles.DomainArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:customerprofiles:Domain
///     properties:
///       domainName: example
/// ```
///
///
/// ### With SQS DLQ and KMS set
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sqs.Queue("example", {
///     name: "example",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "Customer Profiles SQS policy",
///             Effect: "Allow",
///             Action: ["sqs:SendMessage"],
///             Resource: "*",
///             Principal: {
///                 Service: "profile.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleKey = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 10,
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example",
///     forceDestroy: true,
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
///     bucket: exampleBucket.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "Customer Profiles S3 policy",
///             Effect: "Allow",
///             Action: [
///                 "s3:GetObject",
///                 "s3:PutObject",
///                 "s3:ListBucket",
///             ],
///             Resource: [
///                 exampleBucket.arn,
///                 pulumi.interpolate`${exampleBucket.arn}/*`,
///             ],
///             Principal: {
///                 Service: "profile.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const test = new aws.customerprofiles.Domain("test", {
///     domainName: example,
///     deadLetterQueueUrl: example.id,
///     defaultEncryptionKey: exampleKey.arn,
///     defaultExpirationDays: 365,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sqs.Queue("example",
///     name="example",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "Customer Profiles SQS policy",
///             "Effect": "Allow",
///             "Action": ["sqs:SendMessage"],
///             "Resource": "*",
///             "Principal": {
///                 "Service": "profile.amazonaws.com",
///             },
///         }],
///     }))
/// example_key = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=10)
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example",
///     force_destroy=True)
/// example_bucket_policy = aws.s3.BucketPolicy("example",
///     bucket=example_bucket.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "Customer Profiles S3 policy",
///             "Effect": "Allow",
///             "Action": [
///                 "s3:GetObject",
///                 "s3:PutObject",
///                 "s3:ListBucket",
///             ],
///             "Resource": [
///                 example_bucket.arn,
///                 example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///             ],
///             "Principal": {
///                 "Service": "profile.amazonaws.com",
///             },
///         }],
///     }))
/// test = aws.customerprofiles.Domain("test",
///     domain_name=example,
///     dead_letter_queue_url=example.id,
///     default_encryption_key=example_key.arn,
///     default_expiration_days=365)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sqs.Queue("example", new()
///     {
///         Name = "example",
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Customer Profiles SQS policy",
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "sqs:SendMessage",
///                     },
///                     ["Resource"] = "*",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "profile.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 10,
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///         ForceDestroy = true,
///     });
///
///     var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
///     {
///         Bucket = exampleBucket.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Customer Profiles S3 policy",
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "s3:GetObject",
///                         "s3:PutObject",
///                         "s3:ListBucket",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         exampleBucket.Arn,
///                         exampleBucket.Arn.Apply(arn => $"{arn}/*"),
///                     },
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "profile.amazonaws.com",
///                     },
///                 },
///             },
///         })),
///     });
///
///     var test = new Aws.CustomerProfiles.Domain("test", new()
///     {
///         DomainName = example,
///         DeadLetterQueueUrl = example.Id,
///         DefaultEncryptionKey = exampleKey.Arn,
///         DefaultExpirationDays = 365,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/customerprofiles"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "Customer Profiles SQS policy",
/// 					"Effect": "Allow",
/// 					"Action": []string{
/// 						"sqs:SendMessage",
/// 					},
/// 					"Resource": "*",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "profile.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := sqs.NewQueue(ctx, "example", &sqs.QueueArgs{
/// 			Name:   pulumi.String("example"),
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// 			Bucket: exampleBucket.ID(),
/// 			Policy: pulumi.All(exampleBucket.Arn, exampleBucket.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// 				exampleBucketArn := _args[0].(string)
/// 				exampleBucketArn1 := _args[1].(string)
/// 				var _zero string
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "Customer Profiles S3 policy",
/// 							"Effect": "Allow",
/// 							"Action": []string{
/// 								"s3:GetObject",
/// 								"s3:PutObject",
/// 								"s3:ListBucket",
/// 							},
/// 							"Resource": []string{
/// 								exampleBucketArn,
/// 								fmt.Sprintf("%v/*", exampleBucketArn1),
/// 							},
/// 							"Principal": map[string]interface{}{
/// 								"Service": "profile.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return json1, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = customerprofiles.NewDomain(ctx, "test", &customerprofiles.DomainArgs{
/// 			DomainName:            example,
/// 			DeadLetterQueueUrl:    example.ID(),
/// 			DefaultEncryptionKey:  exampleKey.Arn,
/// 			DefaultExpirationDays: pulumi.Int(365),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.customerprofiles.Domain;
/// import com.pulumi.aws.customerprofiles.DomainArgs;
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
///         var example = new Queue("example", QueueArgs.builder()
///             .name("example")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "Customer Profiles SQS policy"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray("sqs:SendMessage")),
///                         jsonProperty("Resource", "*"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "profile.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(10)
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .forceDestroy(true)
///             .build());
///
///         var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(exampleBucket.id())
///             .policy(Output.tuple(exampleBucket.arn(), exampleBucket.arn()).applyValue(values -> {
///                 var exampleBucketArn = values.t1;
///                 var exampleBucketArn1 = values.t2;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Sid", "Customer Profiles S3 policy"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Action", jsonArray(
///                                 "s3:GetObject",
///                                 "s3:PutObject",
///                                 "s3:ListBucket"
///                             )),
///                             jsonProperty("Resource", jsonArray(
///                                 exampleBucketArn,
///                                 String.format("%s/*", exampleBucketArn1)
///                             )),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "profile.amazonaws.com")
///                             ))
///                         )))
///                     ));
///             }))
///             .build());
///
///         var test = new Domain("test", DomainArgs.builder()
///             .domainName(example)
///             .deadLetterQueueUrl(example.id())
///             .defaultEncryptionKey(exampleKey.arn())
///             .defaultExpirationDays(365)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sqs:Queue
///     properties:
///       name: example
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: Customer Profiles SQS policy
///               Effect: Allow
///               Action:
///                 - sqs:SendMessage
///               Resource: '*'
///               Principal:
///                 Service: profile.amazonaws.com
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       description: example
///       deletionWindowInDays: 10
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///       forceDestroy: true
///   exampleBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: example
///     properties:
///       bucket: ${exampleBucket.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: Customer Profiles S3 policy
///               Effect: Allow
///               Action:
///                 - s3:GetObject
///                 - s3:PutObject
///                 - s3:ListBucket
///               Resource:
///                 - ${exampleBucket.arn}
///                 - ${exampleBucket.arn}/*
///               Principal:
///                 Service: profile.amazonaws.com
///   test:
///     type: aws:customerprofiles:Domain
///     properties:
///       domainName: ${example}
///       deadLetterQueueUrl: ${example.id}
///       defaultEncryptionKey: ${exampleKey.arn}
///       defaultExpirationDays: 365
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Customer Profiles Domain using the resource `id`. For example:
///
/// ```sh
/// $ pulumi import aws:customerprofiles/domain:Domain example e6f777be-22d0-4b40-b307-5d2720ef16b2
/// ```
class Domain extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Customer Profiles Domain.
  late final pulumi.Output<String> arn;

  /// The URL of the SQS dead letter queue, which is used for reporting errors associated with ingesting data from third party applications.
  late final pulumi.Output<String?> deadLetterQueueUrl;

  /// The default encryption key, which is an AWS managed key, is used when no specific type of encryption key is specified. It is used to encrypt all data before it is placed in permanent or semi-permanent storage.
  late final pulumi.Output<String?> defaultEncryptionKey;

  /// The default number of days until the data within the domain expires.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> defaultExpirationDays;

  /// The name for your Customer Profile domain. It must be unique for your AWS account.
  late final pulumi.Output<String> domainName;

  /// A block that specifies the process of matching duplicate profiles. Documented below.
  late final pulumi.Output<DomainMatching?> matching;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A block that specifies the process of matching duplicate profiles using the Rule-Based matching. Documented below.
  late final pulumi.Output<DomainRuleBasedMatching?> ruleBasedMatching;

  /// Tags to apply to the domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_customerprofiles_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:customerprofiles/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deadLetterQueueUrl = registerOutput<String?>('deadLetterQueueUrl');
    this.defaultEncryptionKey = registerOutput<String?>('defaultEncryptionKey');
    this.defaultExpirationDays = registerOutput<int>('defaultExpirationDays');
    this.domainName = registerOutput<String>('domainName');
    this.matching = registerOutput<DomainMatching?>('matching');
    this.region = registerOutput<String>('region');
    this.ruleBasedMatching =
        registerOutput<DomainRuleBasedMatching?>('ruleBasedMatching');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
