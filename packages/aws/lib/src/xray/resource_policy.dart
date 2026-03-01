import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';

/// Resource for managing an AWS X-Ray Resource Policy.
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
/// const test = new aws.xray.ResourcePolicy("test", {
///     policyName: "test",
///     policyDocument: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AllowXRayAccess\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Action\":[\"xray:*\",\"xray:PutResourcePolicy\"],\"Resource\":\"*\"}]}",
///     bypassPolicyLockoutCheck: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.xray.ResourcePolicy("test",
///     policy_name="test",
///     policy_document="{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AllowXRayAccess\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Action\":[\"xray:*\",\"xray:PutResourcePolicy\"],\"Resource\":\"*\"}]}",
///     bypass_policy_lockout_check=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Xray.ResourcePolicy("test", new()
///     {
///         PolicyName = "test",
///         PolicyDocument = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AllowXRayAccess\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Action\":[\"xray:*\",\"xray:PutResourcePolicy\"],\"Resource\":\"*\"}]}",
///         BypassPolicyLockoutCheck = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewResourcePolicy(ctx, "test", &xray.ResourcePolicyArgs{
/// 			PolicyName:               pulumi.String("test"),
/// 			PolicyDocument:           pulumi.String("{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AllowXRayAccess\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Action\":[\"xray:*\",\"xray:PutResourcePolicy\"],\"Resource\":\"*\"}]}"),
/// 			BypassPolicyLockoutCheck: pulumi.Bool(true),
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
/// import com.pulumi.aws.xray.ResourcePolicy;
/// import com.pulumi.aws.xray.ResourcePolicyArgs;
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
///         var test = new ResourcePolicy("test", ResourcePolicyArgs.builder()
///             .policyName("test")
///             .policyDocument("{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"AllowXRayAccess\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Action\":[\"xray:*\",\"xray:PutResourcePolicy\"],\"Resource\":\"*\"}]}")
///             .bypassPolicyLockoutCheck(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:xray:ResourcePolicy
///     properties:
///       policyName: test
///       policyDocument: '{"Version":"2012-10-17","Statement":[{"Sid":"AllowXRayAccess","Effect":"Allow","Principal":{"AWS":"*"},"Action":["xray:*","xray:PutResourcePolicy"],"Resource":"*"}]}'
///       bypassPolicyLockoutCheck: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import X-Ray Resource Policy using the `policy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:xray/resourcePolicy:ResourcePolicy example resource_policy-name
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// Flag to indicate whether to bypass the resource policy lockout safety check. Setting this value to true increases the risk that the policy becomes unmanageable. Do not set this value to true indiscriminately. Use this parameter only when you include a policy in the request and you intend to prevent the principal that is making the request from making a subsequent PutResourcePolicy request. The default value is `false`.
  late final pulumi.Output<bool?> bypassPolicyLockoutCheck;

  /// When the policy was last updated, in Unix time seconds.
  late final pulumi.Output<String> lastUpdatedTime;

  /// JSON string of the resource policy or resource policy document, which can be up to 5kb in size.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policyDocument;

  /// name of the resource policy. Must be unique within a specific Amazon Web Services account.
  late final pulumi.Output<String> policyName;

  /// Specifies a specific policy revision, to ensure an atomic create operation. By default the resource policy is created if it does not exist, or updated with an incremented revision id. The revision id is unique to each policy in the account. If the policy revision id does not match the latest revision id, the operation will fail with an InvalidPolicyRevisionIdException exception. You can also provide a PolicyRevisionId of 0. In this case, the operation will fail with an InvalidPolicyRevisionIdException exception if a resource policy with the same name already exists.
  late final pulumi.Output<String> policyRevisionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_xray_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:xray/resourcePolicy:ResourcePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bypassPolicyLockoutCheck = registerOutput<bool?>(
      'bypassPolicyLockoutCheck',
    );
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyName = registerOutput<String>('policyName');
    this.policyRevisionId = registerOutput<String>('policyRevisionId');
    this.region = registerOutput<String>('region');
  }
}
