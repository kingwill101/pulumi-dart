import 'package:pulumi/pulumi.dart';
import '../policy_store_validation_settings/policy_store_validation_settings.dart';
import 'policy_store_args.dart';

/// This is a Terraform resource for managing an AWS Verified Permissions Policy Store.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedpermissions.PolicyStore("example", {validationSettings: {
/// mode: "STRICT",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.PolicyStore("example", validation_settings={
/// "mode": "STRICT",
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
/// var example = new Aws.VerifiedPermissions.PolicyStore("example", new()
/// {
/// ValidationSettings = new Aws.VerifiedPermissions.Inputs.PolicyStoreValidationSettingsArgs
/// {
/// Mode = "STRICT",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedpermissions"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := verifiedpermissions.NewPolicyStore(ctx, "example", &verifiedpermissions.PolicyStoreArgs{
/// ValidationSettings: &verifiedpermissions.PolicyStoreValidationSettingsArgs{
/// Mode: pulumi.String("STRICT"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new PolicyStore("example", PolicyStoreArgs.builder()
/// .validationSettings(PolicyStoreValidationSettingsArgs.builder()
/// .mode("STRICT")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedpermissions:PolicyStore
/// properties:
/// validationSettings:
/// mode: STRICT
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store using the <span pulumi-lang-nodejs="`policyStoreId`" pulumi-lang-dotnet="`PolicyStoreId`" pulumi-lang-go="`policyStoreId`" pulumi-lang-python="`policy_store_id`" pulumi-lang-yaml="`policyStoreId`" pulumi-lang-java="`policyStoreId`">`policy_store_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policyStore:PolicyStore example DxQg2j8xvXJQ1tQCYNWj9T
/// ```
class PolicyStore extends CustomResource {
  /// The ARN of the Policy Store.
  late final Output<String> arn;

  /// Specifies whether the policy store can be deleted. If enabled, the policy store can't be deleted. Valid Values: `ENABLED`, `DISABLED`. Default value: `DISABLED`.
  late final Output<String> deletionProtection;

  /// A description of the Policy Store.
  late final Output<String?> description;

  /// The ID of the Policy Store.
  late final Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Validation settings for the policy store.
  late final Output<PolicyStoreValidationSettings> validationSettings;

  PolicyStore(
    String name, {
    PolicyStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policyStore:PolicyStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.deletionProtection = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.policyStoreId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.validationSettings =
        Output.createUnknown<PolicyStoreValidationSettings>();
  }
}
