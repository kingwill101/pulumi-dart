import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_store_args.dart';
import 'policy_store_validation_settings.dart';

/// This is a Terraform resource for managing an AWS Verified Permissions Policy Store.
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
/// const example = new aws.verifiedpermissions.PolicyStore("example", {validationSettings: {
///     mode: "STRICT",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.PolicyStore("example", validation_settings={
///     "mode": "STRICT",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedPermissions.PolicyStore("example", new()
///     {
///         ValidationSettings = new Aws.VerifiedPermissions.Inputs.PolicyStoreValidationSettingsArgs
///         {
///             Mode = "STRICT",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := verifiedpermissions.NewPolicyStore(ctx, "example", &verifiedpermissions.PolicyStoreArgs{
/// 			ValidationSettings: &verifiedpermissions.PolicyStoreValidationSettingsArgs{
/// 				Mode: pulumi.String("STRICT"),
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
/// import com.pulumi.aws.verifiedpermissions.PolicyStore;
/// import com.pulumi.aws.verifiedpermissions.PolicyStoreArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.PolicyStoreValidationSettingsArgs;
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
///         var example = new PolicyStore("example", PolicyStoreArgs.builder()
///             .validationSettings(PolicyStoreValidationSettingsArgs.builder()
///                 .mode("STRICT")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedpermissions:PolicyStore
///     properties:
///       validationSettings:
///         mode: STRICT
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store using the `policy_store_id`. For example:
///
/// ```sh
///  $ pulumi import aws:verifiedpermissions/policyStore:PolicyStore example DxQg2j8xvXJQ1tQCYNWj9T
/// ```
class PolicyStore extends pulumi.CustomResource {
  /// The ARN of the Policy Store.
  late final pulumi.Output<String> arn;
  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  late final pulumi.Output<String> deletionProtection;
  /// A description of the Policy Store.
  late final pulumi.Output<String?> description;
  /// The ID of the Policy Store.
  late final pulumi.Output<String> policyStoreId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Validation settings for the policy store.
  late final pulumi.Output<PolicyStoreValidationSettings> validationSettings;

  /// Creates a new [PolicyStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyStore]. {@macro pulumi_verifiedpermissions_policy_store_policy_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyStore(
    String name, {
    PolicyStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policyStore:PolicyStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionProtection = registerOutput<String>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.validationSettings = registerOutput<PolicyStoreValidationSettings>('validationSettings');
  }
}
