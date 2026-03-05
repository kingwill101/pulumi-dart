import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_args.dart';
import 'bucket_replication_destination.dart';
import 'bucket_replication_encryption_configuration.dart';
import 'bucket_replication_prefix_set.dart';
import 'bucket_replication_progress.dart';
import 'bucket_replication_rtc.dart';
import 'bucket_replication_source_selection_criteria.dart';
import 'bucket_replication_state.dart';

/// Provides an independent replication configuration resource for OSS bucket.
///
/// For information about OSS replication and how to use it, see [What is cross-region replication](https://www.alibabacloud.com/help/doc-detail/31864.html) and [What is same-region replication](https://www.alibabacloud.com/help/doc-detail/254865.html).
///
/// &gt; **NOTE:** Available since v1.161.0.
///
/// ## Example Usage
///
/// Set bucket replication configuration
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const bucketSrc = new alicloud.oss.Bucket("bucket_src", {bucket: `example-src-${_default.result}`});
/// const bucketDest = new alicloud.oss.Bucket("bucket_dest", {bucket: `example-dest-${_default.result}`});
/// const role = new alicloud.ram.Role("role", {
///     roleName: `example-role-${_default.result}`,
///     assumeRolePolicyDocument: `\\t\\t{
/// \\t\\t  \\"Statement\\": [
/// \\t\\t\\t{
/// \\t\\t\\t  \\"Action\\": \\"sts:AssumeRole\\",
/// \\t\\t\\t  \\"Effect\\": \\"Allow\\",
/// \\t\\t\\t  \\"Principal\\": {
/// \\t\\t\\t\\t\\"Service\\": [
/// \\t\\t\\t\\t  \\"oss.aliyuncs.com\\"
/// \\t\\t\\t\\t]
/// \\t\\t\\t  }
/// \\t\\t\\t}
/// \\t\\t  ],
/// \\t\\t  \\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
///     description: "this is a test",
///     force: true,
/// });
/// const policy = new alicloud.ram.Policy("policy", {
///     policyName: `example-policy-${_default.result}`,
///     policyDocument: `\\t\\t{
/// \\t\\t  \\"Statement\\": [
/// \\t\\t\\t{
/// \\t\\t\\t  \\"Action\\": [
/// \\t\\t\\t\\t\\"*\\"
/// \\t\\t\\t  ],
/// \\t\\t\\t  \\"Effect\\": \\"Allow\\",
/// \\t\\t\\t  \\"Resource\\": [
/// \\t\\t\\t\\t\\"*\\"
/// \\t\\t\\t  ]
/// \\t\\t\\t}
/// \\t\\t  ],
/// \\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
///     description: "this is a policy test",
///     force: true,
/// });
/// const attach = new alicloud.ram.RolePolicyAttachment("attach", {
///     policyName: policy.policyName,
///     policyType: policy.type,
///     roleName: role.roleName,
/// });
/// const key = new alicloud.kms.Key("key", {
///     description: "Hello KMS",
///     pendingWindowInDays: 7,
///     status: "Enabled",
/// });
/// const cross_region_replication = new alicloud.oss.BucketReplication("cross-region-replication", {
///     bucket: bucketSrc.id,
///     action: "PUT,DELETE",
///     historicalObjectReplication: "enabled",
///     prefixSet: {
///         prefixes: [
///             "prefix1/",
///             "prefix2/",
///         ],
///     },
///     destination: {
///         bucket: bucketDest.id,
///         location: bucketDest.location,
///     },
///     syncRole: role.roleName,
///     encryptionConfiguration: {
///         replicaKmsKeyId: key.id,
///     },
///     sourceSelectionCriteria: {
///         sseKmsEncryptedObjects: {
///             status: "Enabled",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// bucket_src = alicloud.oss.Bucket("bucket_src", bucket=f"example-src-{default['result']}")
/// bucket_dest = alicloud.oss.Bucket("bucket_dest", bucket=f"example-dest-{default['result']}")
/// role = alicloud.ram.Role("role",
///     role_name=f"example-role-{default['result']}",
///     assume_role_policy_document="""\t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": \"sts:AssumeRole\",
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Principal\": {
/// \t\t\t\t\"Service\": [
/// \t\t\t\t  \"oss.aliyuncs.com\"
/// \t\t\t\t]
/// \t\t\t  }
/// \t\t\t}
/// \t\t  ],
/// \t\t  \"Version\": \"1\"
/// \t\t}
/// """,
///     description="this is a test",
///     force=True)
/// policy = alicloud.ram.Policy("policy",
///     policy_name=f"example-policy-{default['result']}",
///     policy_document="""\t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ],
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Resource\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  ],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// """,
///     description="this is a policy test",
///     force=True)
/// attach = alicloud.ram.RolePolicyAttachment("attach",
///     policy_name=policy.policy_name,
///     policy_type=policy.type,
///     role_name=role.role_name)
/// key = alicloud.kms.Key("key",
///     description="Hello KMS",
///     pending_window_in_days=7,
///     status="Enabled")
/// cross_region_replication = alicloud.oss.BucketReplication("cross-region-replication",
///     bucket=bucket_src.id,
///     action="PUT,DELETE",
///     historical_object_replication="enabled",
///     prefix_set={
///         "prefixes": [
///             "prefix1/",
///             "prefix2/",
///         ],
///     },
///     destination={
///         "bucket": bucket_dest.id,
///         "location": bucket_dest.location,
///     },
///     sync_role=role.role_name,
///     encryption_configuration={
///         "replica_kms_key_id": key.id,
///     },
///     source_selection_criteria={
///         "sse_kms_encrypted_objects": {
///             "status": "Enabled",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var bucketSrc = new AliCloud.Oss.Bucket("bucket_src", new()
///     {
///         BucketName = $"example-src-{@default.Result}",
///     });
///
///     var bucketDest = new AliCloud.Oss.Bucket("bucket_dest", new()
///     {
///         BucketName = $"example-dest-{@default.Result}",
///     });
///
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         RoleName = $"example-role-{@default.Result}",
///         AssumeRolePolicyDocument = @"\t\t{
/// \t\t  \""Statement\"": [
/// \t\t\t{
/// \t\t\t  \""Action\"": \""sts:AssumeRole\"",
/// \t\t\t  \""Effect\"": \""Allow\"",
/// \t\t\t  \""Principal\"": {
/// \t\t\t\t\""Service\"": [
/// \t\t\t\t  \""oss.aliyuncs.com\""
/// \t\t\t\t]
/// \t\t\t  }
/// \t\t\t}
/// \t\t  ],
/// \t\t  \""Version\"": \""1\""
/// \t\t}
/// ",
///         Description = "this is a test",
///         Force = true,
///     });
///
///     var policy = new AliCloud.Ram.Policy("policy", new()
///     {
///         PolicyName = $"example-policy-{@default.Result}",
///         PolicyDocument = @"\t\t{
/// \t\t  \""Statement\"": [
/// \t\t\t{
/// \t\t\t  \""Action\"": [
/// \t\t\t\t\""*\""
/// \t\t\t  ],
/// \t\t\t  \""Effect\"": \""Allow\"",
/// \t\t\t  \""Resource\"": [
/// \t\t\t\t\""*\""
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  ],
/// \t\t\t\""Version\"": \""1\""
/// \t\t}
/// ",
///         Description = "this is a policy test",
///         Force = true,
///     });
///
///     var attach = new AliCloud.Ram.RolePolicyAttachment("attach", new()
///     {
///         PolicyName = policy.PolicyName,
///         PolicyType = policy.Type,
///         RoleName = role.RoleName,
///     });
///
///     var key = new AliCloud.Kms.Key("key", new()
///     {
///         Description = "Hello KMS",
///         PendingWindowInDays = 7,
///         Status = "Enabled",
///     });
///
///     var cross_region_replication = new AliCloud.Oss.BucketReplication("cross-region-replication", new()
///     {
///         Bucket = bucketSrc.Id,
///         Action = "PUT,DELETE",
///         HistoricalObjectReplication = "enabled",
///         PrefixSet = new AliCloud.Oss.Inputs.BucketReplicationPrefixSetArgs
///         {
///             Prefixes = new[]
///             {
///                 "prefix1/",
///                 "prefix2/",
///             },
///         },
///         Destination = new AliCloud.Oss.Inputs.BucketReplicationDestinationArgs
///         {
///             Bucket = bucketDest.Id,
///             Location = bucketDest.Location,
///         },
///         SyncRole = role.RoleName,
///         EncryptionConfiguration = new AliCloud.Oss.Inputs.BucketReplicationEncryptionConfigurationArgs
///         {
///             ReplicaKmsKeyId = key.Id,
///         },
///         SourceSelectionCriteria = new AliCloud.Oss.Inputs.BucketReplicationSourceSelectionCriteriaArgs
///         {
///             SseKmsEncryptedObjects = new AliCloud.Oss.Inputs.BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjectsArgs
///             {
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketSrc, err := oss.NewBucket(ctx, "bucket_src", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-src-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketDest, err := oss.NewBucket(ctx, "bucket_dest", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-dest-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role, err := ram.NewRole(ctx, "role", &ram.RoleArgs{
/// 			RoleName: pulumi.Sprintf("example-role-%v", _default.Result),
/// 			AssumeRolePolicyDocument: pulumi.String(`\t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": \"sts:AssumeRole\",
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Principal\": {
/// \t\t\t\t\"Service\": [
/// \t\t\t\t  \"oss.aliyuncs.com\"
/// \t\t\t\t]
/// \t\t\t  }
/// \t\t\t}
/// \t\t  ],
/// \t\t  \"Version\": \"1\"
/// \t\t}
/// `),
/// 			Description: pulumi.String("this is a test"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := ram.NewPolicy(ctx, "policy", &ram.PolicyArgs{
/// 			PolicyName: pulumi.Sprintf("example-policy-%v", _default.Result),
/// 			PolicyDocument: pulumi.String(`\t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ],
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Resource\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  ],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// `),
/// 			Description: pulumi.String("this is a policy test"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ram.NewRolePolicyAttachment(ctx, "attach", &ram.RolePolicyAttachmentArgs{
/// 			PolicyName: policy.PolicyName,
/// 			PolicyType: policy.Type,
/// 			RoleName:   role.RoleName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		key, err := kms.NewKey(ctx, "key", &kms.KeyArgs{
/// 			Description:         pulumi.String("Hello KMS"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 			Status:              pulumi.String("Enabled"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketReplication(ctx, "cross-region-replication", &oss.BucketReplicationArgs{
/// 			Bucket:                      bucketSrc.ID(),
/// 			Action:                      pulumi.String("PUT,DELETE"),
/// 			HistoricalObjectReplication: pulumi.String("enabled"),
/// 			PrefixSet: &oss.BucketReplicationPrefixSetArgs{
/// 				Prefixes: pulumi.StringArray{
/// 					pulumi.String("prefix1/"),
/// 					pulumi.String("prefix2/"),
/// 				},
/// 			},
/// 			Destination: &oss.BucketReplicationDestinationArgs{
/// 				Bucket:   bucketDest.ID(),
/// 				Location: bucketDest.Location,
/// 			},
/// 			SyncRole: role.RoleName,
/// 			EncryptionConfiguration: &oss.BucketReplicationEncryptionConfigurationArgs{
/// 				ReplicaKmsKeyId: key.ID(),
/// 			},
/// 			SourceSelectionCriteria: &oss.BucketReplicationSourceSelectionCriteriaArgs{
/// 				SseKmsEncryptedObjects: &oss.BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjectsArgs{
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.Policy;
/// import com.pulumi.alicloud.ram.PolicyArgs;
/// import com.pulumi.alicloud.ram.RolePolicyAttachment;
/// import com.pulumi.alicloud.ram.RolePolicyAttachmentArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.oss.BucketReplication;
/// import com.pulumi.alicloud.oss.BucketReplicationArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketReplicationPrefixSetArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketReplicationDestinationArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketReplicationEncryptionConfigurationArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketReplicationSourceSelectionCriteriaArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjectsArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var bucketSrc = new Bucket("bucketSrc", BucketArgs.builder()
///             .bucket(String.format("example-src-%s", default_.result()))
///             .build());
///
///         var bucketDest = new Bucket("bucketDest", BucketArgs.builder()
///             .bucket(String.format("example-dest-%s", default_.result()))
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .roleName(String.format("example-role-%s", default_.result()))
///             .assumeRolePolicyDocument("""
/// \t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": \"sts:AssumeRole\",
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Principal\": {
/// \t\t\t\t\"Service\": [
/// \t\t\t\t  \"oss.aliyuncs.com\"
/// \t\t\t\t]
/// \t\t\t  }
/// \t\t\t}
/// \t\t  ],
/// \t\t  \"Version\": \"1\"
/// \t\t}
///             """)
///             .description("this is a test")
///             .force(true)
///             .build());
///
///         var policy = new Policy("policy", PolicyArgs.builder()
///             .policyName(String.format("example-policy-%s", default_.result()))
///             .policyDocument("""
/// \t\t{
/// \t\t  \"Statement\": [
/// \t\t\t{
/// \t\t\t  \"Action\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ],
/// \t\t\t  \"Effect\": \"Allow\",
/// \t\t\t  \"Resource\": [
/// \t\t\t\t\"*\"
/// \t\t\t  ]
/// \t\t\t}
/// \t\t  ],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
///             """)
///             .description("this is a policy test")
///             .force(true)
///             .build());
///
///         var attach = new RolePolicyAttachment("attach", RolePolicyAttachmentArgs.builder()
///             .policyName(policy.policyName())
///             .policyType(policy.type())
///             .roleName(role.roleName())
///             .build());
///
///         var key = new Key("key", KeyArgs.builder()
///             .description("Hello KMS")
///             .pendingWindowInDays(7)
///             .status("Enabled")
///             .build());
///
///         var cross_region_replication = new BucketReplication("cross-region-replication", BucketReplicationArgs.builder()
///             .bucket(bucketSrc.id())
///             .action("PUT,DELETE")
///             .historicalObjectReplication("enabled")
///             .prefixSet(BucketReplicationPrefixSetArgs.builder()
///                 .prefixes(
///                     "prefix1/",
///                     "prefix2/")
///                 .build())
///             .destination(BucketReplicationDestinationArgs.builder()
///                 .bucket(bucketDest.id())
///                 .location(bucketDest.location())
///                 .build())
///             .syncRole(role.roleName())
///             .encryptionConfiguration(BucketReplicationEncryptionConfigurationArgs.builder()
///                 .replicaKmsKeyId(key.id())
///                 .build())
///             .sourceSelectionCriteria(BucketReplicationSourceSelectionCriteriaArgs.builder()
///                 .sseKmsEncryptedObjects(BucketReplicationSourceSelectionCriteriaSseKmsEncryptedObjectsArgs.builder()
///                     .status("Enabled")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   bucketSrc:
///     type: alicloud:oss:Bucket
///     name: bucket_src
///     properties:
///       bucket: example-src-${default.result}
///   bucketDest:
///     type: alicloud:oss:Bucket
///     name: bucket_dest
///     properties:
///       bucket: example-dest-${default.result}
///   role:
///     type: alicloud:ram:Role
///     properties:
///       roleName: example-role-${default.result}
///       assumeRolePolicyDocument: |
///         \t\t{
///         \t\t  \"Statement\": [
///         \t\t\t{
///         \t\t\t  \"Action\": \"sts:AssumeRole\",
///         \t\t\t  \"Effect\": \"Allow\",
///         \t\t\t  \"Principal\": {
///         \t\t\t\t\"Service\": [
///         \t\t\t\t  \"oss.aliyuncs.com\"
///         \t\t\t\t]
///         \t\t\t  }
///         \t\t\t}
///         \t\t  ],
///         \t\t  \"Version\": \"1\"
///         \t\t}
///       description: this is a test
///       force: true
///   policy:
///     type: alicloud:ram:Policy
///     properties:
///       policyName: example-policy-${default.result}
///       policyDocument: |
///         \t\t{
///         \t\t  \"Statement\": [
///         \t\t\t{
///         \t\t\t  \"Action\": [
///         \t\t\t\t\"*\"
///         \t\t\t  ],
///         \t\t\t  \"Effect\": \"Allow\",
///         \t\t\t  \"Resource\": [
///         \t\t\t\t\"*\"
///         \t\t\t  ]
///         \t\t\t}
///         \t\t  ],
///         \t\t\t\"Version\": \"1\"
///         \t\t}
///       description: this is a policy test
///       force: true
///   attach:
///     type: alicloud:ram:RolePolicyAttachment
///     properties:
///       policyName: ${policy.policyName}
///       policyType: ${policy.type}
///       roleName: ${role.roleName}
///   key:
///     type: alicloud:kms:Key
///     properties:
///       description: Hello KMS
///       pendingWindowInDays: '7'
///       status: Enabled
///   cross-region-replication:
///     type: alicloud:oss:BucketReplication
///     properties:
///       bucket: ${bucketSrc.id}
///       action: PUT,DELETE
///       historicalObjectReplication: enabled
///       prefixSet:
///         prefixes:
///           - prefix1/
///           - prefix2/
///       destination:
///         bucket: ${bucketDest.id}
///         location: ${bucketDest.location}
///       syncRole: ${role.roleName}
///       encryptionConfiguration:
///         replicaKmsKeyId: ${key.id}
///       sourceSelectionCriteria:
///         sseKmsEncryptedObjects:
///           status: Enabled
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Oss Bucket Replication can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketReplication:BucketReplication example
/// ```
class BucketReplication extends pulumi.CustomResource {
  /// The operations that can be synchronized to the destination bucket. You can set action to one or more of the following operation types. Valid values: `ALL`(contains PUT, DELETE, and ABORT), `PUT`, `DELETE` and `ABORT`. Defaults to `ALL`.
  late final pulumi.Output<String?> action;

  /// The name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Specifies the destination for the rule. See `destination` below.
  late final pulumi.Output<BucketReplicationDestination> destination;

  /// Specifies the encryption configuration for the objects replicated to the destination bucket. See `encryption_configuration` below.
  late final pulumi.Output<BucketReplicationEncryptionConfiguration?>
  encryptionConfiguration;

  /// Specifies whether to replicate historical data from the source bucket to the destination bucket before data replication is enabled. Can be `enabled` or `disabled`. Defaults to `enabled`.
  late final pulumi.Output<String?> historicalObjectReplication;

  /// The prefixes used to specify the object to replicate. Only objects that match the prefix are replicated to the destination bucket. See `prefix_set` below.
  late final pulumi.Output<BucketReplicationPrefixSet?> prefixSet;

  /// Specifies the progress for querying the progress of a data replication task of a bucket.
  late final pulumi.Output<BucketReplicationProgress> progress;

  /// Configures the Replication Time Control (RTC) feature for a data replication task of a bucket. See `rtc` below.
  late final pulumi.Output<BucketReplicationRtc> rtc;

  /// The ID of the data replication rule.
  late final pulumi.Output<String> ruleId;

  /// Specifies other conditions used to filter the source objects to replicate. See `source_selection_criteria` below.
  late final pulumi.Output<BucketReplicationSourceSelectionCriteria?>
  sourceSelectionCriteria;

  /// The status of the data replication task. Can be starting, doing and closing.
  late final pulumi.Output<String> status;

  /// Specifies the role that you authorize OSS to use to replicate data. If SSE-KMS is specified to encrypt the objects replicated to the destination bucket, it must be specified.
  late final pulumi.Output<String?> syncRole;

  /// Creates a new [BucketReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketReplication]. {@macro pulumi_oss_bucket_replication_bucket_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketReplication(
    String name, {
    BucketReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketReplication:BucketReplication',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    bucket = registerOutput<String>('bucket');
    destination = registerOutput<BucketReplicationDestination>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationDestination.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionConfiguration =
        registerOutput<BucketReplicationEncryptionConfiguration?>(
          'encryptionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BucketReplicationEncryptionConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    historicalObjectReplication = registerOutput<String?>(
      'historicalObjectReplication',
    );
    prefixSet = registerOutput<BucketReplicationPrefixSet?>(
      'prefixSet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationPrefixSet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    progress = registerOutput<BucketReplicationProgress>(
      'progress',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationProgress.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rtc = registerOutput<BucketReplicationRtc>(
      'rtc',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationRtc.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ruleId = registerOutput<String>('ruleId');
    sourceSelectionCriteria =
        registerOutput<BucketReplicationSourceSelectionCriteria?>(
          'sourceSelectionCriteria',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BucketReplicationSourceSelectionCriteria.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    status = registerOutput<String>('status');
    syncRole = registerOutput<String?>('syncRole');
  }

  /// Gets an existing [BucketReplication] resource's state with the given [name] and [id].
  static BucketReplication get(
    String name,
    pulumi.Input<String> id, {
    BucketReplicationState? state,
  }) {
    return BucketReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:oss/bucketReplication:BucketReplication',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    bucket = registerOutput<String>('bucket');
    destination = registerOutput<BucketReplicationDestination>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationDestination.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    encryptionConfiguration =
        registerOutput<BucketReplicationEncryptionConfiguration?>(
          'encryptionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BucketReplicationEncryptionConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    historicalObjectReplication = registerOutput<String?>(
      'historicalObjectReplication',
    );
    prefixSet = registerOutput<BucketReplicationPrefixSet?>(
      'prefixSet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationPrefixSet.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    progress = registerOutput<BucketReplicationProgress>(
      'progress',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationProgress.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rtc = registerOutput<BucketReplicationRtc>(
      'rtc',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BucketReplicationRtc.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    ruleId = registerOutput<String>('ruleId');
    sourceSelectionCriteria =
        registerOutput<BucketReplicationSourceSelectionCriteria?>(
          'sourceSelectionCriteria',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BucketReplicationSourceSelectionCriteria.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    status = registerOutput<String>('status');
    syncRole = registerOutput<String?>('syncRole');
  }
}
