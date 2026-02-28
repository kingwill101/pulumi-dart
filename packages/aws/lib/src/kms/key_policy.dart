import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_policy_args.dart';

/// Attaches a policy to a KMS Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "example"});
/// const exampleKeyPolicy = new aws.kms.KeyPolicy("example", {
///     keyId: example.id,
///     policy: JSON.stringify({
///         Id: "example",
///         Statement: [{
///             Action: "kms:*",
///             Effect: "Allow",
///             Principal: {
///                 AWS: "*",
///             },
///             Resource: "*",
///             Sid: "Enable IAM User Permissions",
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="example")
/// example_key_policy = aws.kms.KeyPolicy("example",
///     key_id=example.id,
///     policy=json.dumps({
///         "Id": "example",
///         "Statement": [{
///             "Action": "kms:*",
///             "Effect": "Allow",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Resource": "*",
///             "Sid": "Enable IAM User Permissions",
///         }],
///         "Version": "2012-10-17",
///     }))
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///     });
///
///     var exampleKeyPolicy = new Aws.Kms.KeyPolicy("example", new()
///     {
///         KeyId = example.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Id"] = "example",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "kms:*",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Resource"] = "*",
///                     ["Sid"] = "Enable IAM User Permissions",
///                 },
///             },
///             ["Version"] = "2012-10-17",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Id": "example",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "kms:*",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]interface{}{
/// 						"AWS": "*",
/// 					},
/// 					"Resource": "*",
/// 					"Sid":      "Enable IAM User Permissions",
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = kms.NewKeyPolicy(ctx, "example", &kms.KeyPolicyArgs{
/// 			KeyId:  example.ID(),
/// 			Policy: pulumi.String(json0),
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
/// import com.pulumi.aws.kms.KeyPolicy;
/// import com.pulumi.aws.kms.KeyPolicyArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .build());
///
///         var exampleKeyPolicy = new KeyPolicy("exampleKeyPolicy", KeyPolicyArgs.builder()
///             .keyId(example.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Id", "example"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "kms:*"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Resource", "*"),
///                         jsonProperty("Sid", "Enable IAM User Permissions")
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: example
///   exampleKeyPolicy:
///     type: aws:kms:KeyPolicy
///     name: example
///     properties:
///       keyId: ${example.id}
///       policy:
///         fn::toJSON:
///           Id: example
///           Statement:
///             - Action: kms:*
///               Effect: Allow
///               Principal:
///                 AWS: '*'
///               Resource: '*'
///               Sid: Enable IAM User Permissions
///           Version: 2012-10-17
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import KMS Key Policies using the `key_id`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/keyPolicy:KeyPolicy a 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class KeyPolicy extends pulumi.CustomResource {
  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately. If this value is set, and the resource is destroyed, a warning will be shown, and the resource will be removed from state.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  late final pulumi.Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// The ID of the KMS Key to attach the policy.
  late final pulumi.Output<String> keyId;

  /// A valid policy JSON document. Although this is a key policy, not an IAM policy, an `aws.iam.getPolicyDocument`, in the form that designates a principal, can be used. For more information about building policy documents, see the AWS IAM Policy Document Guide.
  ///
  /// > **NOTE:** All KMS keys must have a key policy. If a key policy is not specified, or this resource is destroyed, AWS gives the KMS key a [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) that gives all principals in the owning account unlimited access to all KMS operations for the key. This default key policy effectively delegates all access control to IAM policies and KMS grants.
  late final pulumi.Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [KeyPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyPolicy]. {@macro pulumi_kms_key_policy_key_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyPolicy(
    String name, {
    KeyPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kms/keyPolicy:KeyPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.keyId = registerOutput<String>('keyId');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
