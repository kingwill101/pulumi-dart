import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_sse_configuration.dart';
import 'group_state.dart';

/// Resource for managing a Verified Access Group.
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
/// const example = new aws.verifiedaccess.Group("example", {verifiedaccessInstanceId: exampleAwsVerifiedaccessInstance.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Group("example", verifiedaccess_instance_id=example_aws_verifiedaccess_instance["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Group("example", new()
///     {
///         VerifiedaccessInstanceId = exampleAwsVerifiedaccessInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedaccess.NewGroup(ctx, "example", &verifiedaccess.GroupArgs{
/// 			VerifiedaccessInstanceId: pulumi.Any(exampleAwsVerifiedaccessInstance.Id),
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
/// import com.pulumi.aws.verifiedaccess.Group;
/// import com.pulumi.aws.verifiedaccess.GroupArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .verifiedaccessInstanceId(exampleAwsVerifiedaccessInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Group
///     properties:
///       verifiedaccessInstanceId: ${exampleAwsVerifiedaccessInstance.id}
/// ```
///
///
/// ### Usage with KMS Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testKey = new aws.kms.Key("test_key", {description: "KMS key for Verified Access Group test"});
/// const test = new aws.verifiedaccess.Group("test", {
///     verifiedaccessInstanceId: testAwsVerifiedaccessInstanceTrustProviderAttachment.verifiedaccessInstanceId,
///     sseConfiguration: {
///         kmsKeyArn: testKey.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_key = aws.kms.Key("test_key", description="KMS key for Verified Access Group test")
/// test = aws.verifiedaccess.Group("test",
///     verifiedaccess_instance_id=test_aws_verifiedaccess_instance_trust_provider_attachment["verifiedaccessInstanceId"],
///     sse_configuration={
///         "kms_key_arn": test_key.arn,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testKey = new Aws.Kms.Key("test_key", new()
///     {
///         Description = "KMS key for Verified Access Group test",
///     });
///
///     var test = new Aws.VerifiedAccess.Group("test", new()
///     {
///         VerifiedaccessInstanceId = testAwsVerifiedaccessInstanceTrustProviderAttachment.VerifiedaccessInstanceId,
///         SseConfiguration = new Aws.VerifiedAccess.Inputs.GroupSseConfigurationArgs
///         {
///             KmsKeyArn = testKey.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testKey, err := kms.NewKey(ctx, "test_key", &kms.KeyArgs{
/// 			Description: pulumi.String("KMS key for Verified Access Group test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = verifiedaccess.NewGroup(ctx, "test", &verifiedaccess.GroupArgs{
/// 			VerifiedaccessInstanceId: pulumi.Any(testAwsVerifiedaccessInstanceTrustProviderAttachment.VerifiedaccessInstanceId),
/// 			SseConfiguration: &verifiedaccess.GroupSseConfigurationArgs{
/// 				KmsKeyArn: testKey.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.verifiedaccess.Group;
/// import com.pulumi.aws.verifiedaccess.GroupArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.GroupSseConfigurationArgs;
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
///         var testKey = new Key("testKey", KeyArgs.builder()
///             .description("KMS key for Verified Access Group test")
///             .build());
///
///         var test = new Group("test", GroupArgs.builder()
///             .verifiedaccessInstanceId(testAwsVerifiedaccessInstanceTrustProviderAttachment.verifiedaccessInstanceId())
///             .sseConfiguration(GroupSseConfigurationArgs.builder()
///                 .kmsKeyArn(testKey.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testKey:
///     type: aws:kms:Key
///     name: test_key
///     properties:
///       description: KMS key for Verified Access Group test
///   test:
///     type: aws:verifiedaccess:Group
///     properties:
///       verifiedaccessInstanceId: ${testAwsVerifiedaccessInstanceTrustProviderAttachment.verifiedaccessInstanceId}
///       sseConfiguration:
///         kmsKeyArn: ${testKey.arn}
/// ```
class Group extends pulumi.CustomResource {
  /// Timestamp when the access group was created.
  late final pulumi.Output<String> creationTime;

  /// Timestamp when the access group was deleted.
  late final pulumi.Output<String> deletionTime;

  /// Description of the verified access group.
  late final pulumi.Output<String> description;

  /// Timestamp when the access group was last updated.
  late final pulumi.Output<String> lastUpdatedTime;

  /// AWS account number owning this resource.
  late final pulumi.Output<String> owner;

  /// The policy document that is associated with this resource.
  late final pulumi.Output<String?> policyDocument;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block to use KMS keys for server-side encryption.
  late final pulumi.Output<GroupSseConfiguration> sseConfiguration;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of this verified acess group.
  late final pulumi.Output<String> verifiedaccessGroupArn;

  /// ID of this verified access group.
  late final pulumi.Output<String> verifiedaccessGroupId;

  /// The id of the verified access instance this group is associated with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> verifiedaccessInstanceId;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_verifiedaccess_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(String name, {GroupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:verifiedaccess/group:Group',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    creationTime = registerOutput<String>('creationTime');
    deletionTime = registerOutput<String>('deletionTime');
    description = registerOutput<String>('description');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    owner = registerOutput<String>('owner');
    policyDocument = registerOutput<String?>('policyDocument');
    region = registerOutput<String>('region');
    sseConfiguration = registerOutput<GroupSseConfiguration>(
      'sseConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupSseConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    verifiedaccessGroupArn = registerOutput<String>('verifiedaccessGroupArn');
    verifiedaccessGroupId = registerOutput<String>('verifiedaccessGroupId');
    verifiedaccessInstanceId = registerOutput<String>(
      'verifiedaccessInstanceId',
    );
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(String name, pulumi.Input<String> id, {GroupState? state}) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:verifiedaccess/group:Group',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTime = registerOutput<String>('creationTime');
    deletionTime = registerOutput<String>('deletionTime');
    description = registerOutput<String>('description');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    owner = registerOutput<String>('owner');
    policyDocument = registerOutput<String?>('policyDocument');
    region = registerOutput<String>('region');
    sseConfiguration = registerOutput<GroupSseConfiguration>(
      'sseConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GroupSseConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    verifiedaccessGroupArn = registerOutput<String>('verifiedaccessGroupArn');
    verifiedaccessGroupId = registerOutput<String>('verifiedaccessGroupId');
    verifiedaccessInstanceId = registerOutput<String>(
      'verifiedaccessInstanceId',
    );
  }
}
