import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_policy_args.dart';
import 'bucket_policy_state.dart';

/// Provides a OSS Bucket Policy resource.  Authorization policy of a bucket.
///
/// For information about OSS Bucket Policy and how to use it, see [What is Bucket Policy](https://www.alibabacloud.com/help/en/oss/user-guide/use-bucket-policy-to-grant-permission-to-access-oss).
///
/// &gt; **NOTE:** Available since v1.220.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     storageClass: "Standard",
///     bucket: `${name}-${_default.result}`,
/// });
/// const defaultBucketPolicy = new alicloud.oss.BucketPolicy("default", {
///     policy: JSON.stringify({
///         Version: "1",
///         Statement: [{
///             Action: [
///                 "oss:PutObject",
///                 "oss:GetObject",
///             ],
///             Effect: "Deny",
///             Principal: ["1234567890"],
///             Resource: ["acs:oss:*:1234567890:*/*"],
///         }],
///     }),
///     bucket: createBucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     storage_class="Standard",
///     bucket=f"{name}-{default['result']}")
/// default_bucket_policy = alicloud.oss.BucketPolicy("default",
///     policy=json.dumps({
///         "Version": "1",
///         "Statement": [{
///             "Action": [
///                 "oss:PutObject",
///                 "oss:GetObject",
///             ],
///             "Effect": "Deny",
///             "Principal": ["1234567890"],
///             "Resource": ["acs:oss:*:1234567890:*/*"],
///         }],
///     }),
///     bucket=create_bucket.bucket)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var defaultBucketPolicy = new AliCloud.Oss.BucketPolicy("default", new()
///     {
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "1",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "oss:PutObject",
///                         "oss:GetObject",
///                     },
///                     ["Effect"] = "Deny",
///                     ["Principal"] = new[]
///                     {
///                         "1234567890",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         "acs:oss:*:1234567890:*/*",
///                     },
///                 },
///             },
///         }),
///         Bucket = createBucket.BucketName,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "1",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"oss:PutObject",
/// 						"oss:GetObject",
/// 					},
/// 					"Effect": "Deny",
/// 					"Principal": []string{
/// 						"1234567890",
/// 					},
/// 					"Resource": []string{
/// 						"acs:oss:*:1234567890:*/*",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = oss.NewBucketPolicy(ctx, "default", &oss.BucketPolicyArgs{
/// 			Policy: pulumi.String(json0),
/// 			Bucket: createBucket.Bucket,
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketPolicy;
/// import com.pulumi.alicloud.oss.BucketPolicyArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultBucketPolicy = new BucketPolicy("defaultBucketPolicy", BucketPolicyArgs.builder()
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "1"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "oss:PutObject",
///                             "oss:GetObject"
///                         )),
///                         jsonProperty("Effect", "Deny"),
///                         jsonProperty("Principal", jsonArray("1234567890")),
///                         jsonProperty("Resource", jsonArray("acs:oss:*:1234567890:*/*"))
///                     )))
///                 )))
///             .bucket(createBucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///       bucket: ${name}-${default.result}
///   defaultBucketPolicy:
///     type: alicloud:oss:BucketPolicy
///     name: default
///     properties:
///       policy:
///         fn::toJSON:
///           Version: '1'
///           Statement:
///             - Action:
///                 - oss:PutObject
///                 - oss:GetObject
///               Effect: Deny
///               Principal:
///                 - '1234567890'
///               Resource:
///                 - acs:oss:*:1234567890:*/*
///       bucket: ${createBucket.bucket}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketPolicy:BucketPolicy example <id>
/// ```
class BucketPolicy extends pulumi.CustomResource {
  /// The name of the Bucket.
  late final pulumi.Output<String> bucket;

  /// Json-formatted authorization policies for buckets.
  late final pulumi.Output<String> policy;

  /// Creates a new [BucketPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketPolicy]. {@macro pulumi_oss_bucket_policy_bucket_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketPolicy(
    String name, {
    BucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketPolicy:BucketPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
  }

  /// Gets an existing [BucketPolicy] resource's state with the given [name] and [id].
  static BucketPolicy get(
    String name,
    pulumi.Input<String> id, {
    BucketPolicyState? state,
  }) {
    return BucketPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketPolicy:BucketPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
  }
}
