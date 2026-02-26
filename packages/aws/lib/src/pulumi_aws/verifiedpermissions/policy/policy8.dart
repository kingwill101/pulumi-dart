import 'package:pulumi/pulumi.dart';
import '../policy_definition/policy_definition.dart';
import 'policy_args8.dart';

/// Resource for managing an AWS Verified Permissions Policy.
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
/// const test = new aws.verifiedpermissions.Policy("test", {
/// policyStoreId: testAwsVerifiedpermissionsPolicyStore.id,
/// definition: {
/// static: {
/// statement: "permit (principal, action == Action::\"view\", resource in Album:: \"test_album\");",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.verifiedpermissions.Policy("test",
/// policy_store_id=test_aws_verifiedpermissions_policy_store["id"],
/// definition={
/// "static": {
/// "statement": "permit (principal, action == Action::\"view\", resource in Album:: \"test_album\");",
/// },
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
/// var test = new Aws.VerifiedPermissions.Policy("test", new()
/// {
/// PolicyStoreId = testAwsVerifiedpermissionsPolicyStore.Id,
/// Definition = new Aws.VerifiedPermissions.Inputs.PolicyDefinitionArgs
/// {
/// Static = new Aws.VerifiedPermissions.Inputs.PolicyDefinitionStaticArgs
/// {
/// Statement = "permit (principal, action == Action::\"view\", resource in Album:: \"test_album\");",
/// },
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
/// _, err := verifiedpermissions.NewPolicy(ctx, "test", &verifiedpermissions.PolicyArgs{
/// PolicyStoreId: pulumi.Any(testAwsVerifiedpermissionsPolicyStore.Id),
/// Definition: &verifiedpermissions.PolicyDefinitionArgs{
/// Static: &verifiedpermissions.PolicyDefinitionStaticArgs{
/// Statement: pulumi.String("permit (principal, action == Action::\"view\", resource in Album:: \"test_album\");"),
/// },
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
/// import com.pulumi.aws.verifiedpermissions.Policy;
/// import com.pulumi.aws.verifiedpermissions.PolicyArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.PolicyDefinitionArgs;
/// import com.pulumi.aws.verifiedpermissions.inputs.PolicyDefinitionStaticArgs;
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
/// var test = new Policy("test", PolicyArgs.builder()
/// .policyStoreId(testAwsVerifiedpermissionsPolicyStore.id())
/// .definition(PolicyDefinitionArgs.builder()
/// .static_(PolicyDefinitionStaticArgs.builder()
/// .statement("permit (principal, action == Action::\"view\", resource in Album:: \"test_album\");")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:verifiedpermissions:Policy
/// properties:
/// policyStoreId: ${testAwsVerifiedpermissionsPolicyStore.id}
/// definition:
/// static:
/// statement: 'permit (principal, action == Action::"view", resource in Album:: "test_album");'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy using the `policy_id,policy_store_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policy:Policy example policy-id-12345678,policy-store-id-12345678
/// ```
class Policy8 extends CustomResource {
  /// The date the policy was created.
  late final Output<String> createdDate;

  /// The definition of the policy. See Definition below.
  late final Output<PolicyDefinition> definition;

  /// The Policy ID of the policy.
  late final Output<String> policyId;

  /// The Policy Store ID of the policy store.
  late final Output<String> policyStoreId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Policy8(
    String name, {
    PolicyArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdDate = Output.createUnknown<String>();
    this.definition = Output.createUnknown<PolicyDefinition>();
    this.policyId = Output.createUnknown<String>();
    this.policyStoreId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
