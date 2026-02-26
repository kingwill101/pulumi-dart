import 'package:pulumi/pulumi.dart';
import 'policy_template_args.dart';

/// Resource for managing an AWS Verified Permissions Policy Template.
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
/// const example = new aws.verifiedpermissions.PolicyTemplate("example", {
/// policyStoreId: exampleAwsVerifiedpermissionsPolicyStore.id,
/// statement: "permit (principal in ?principal, action in PhotoFlash::Action::\"FullPhotoAccess\", resource == ?resource) unless { resource.IsPrivate };",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedpermissions.PolicyTemplate("example",
/// policy_store_id=example_aws_verifiedpermissions_policy_store["id"],
/// statement="permit (principal in ?principal, action in PhotoFlash::Action::\"FullPhotoAccess\", resource == ?resource) unless { resource.IsPrivate };")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VerifiedPermissions.PolicyTemplate("example", new()
/// {
/// PolicyStoreId = exampleAwsVerifiedpermissionsPolicyStore.Id,
/// Statement = "permit (principal in ?principal, action in PhotoFlash::Action::\"FullPhotoAccess\", resource == ?resource) unless { resource.IsPrivate };",
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
/// _, err := verifiedpermissions.NewPolicyTemplate(ctx, "example", &verifiedpermissions.PolicyTemplateArgs{
/// PolicyStoreId: pulumi.Any(exampleAwsVerifiedpermissionsPolicyStore.Id),
/// Statement:     pulumi.String("permit (principal in ?principal, action in PhotoFlash::Action::\"FullPhotoAccess\", resource == ?resource) unless { resource.IsPrivate };"),
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
/// import com.pulumi.aws.verifiedpermissions.PolicyTemplate;
/// import com.pulumi.aws.verifiedpermissions.PolicyTemplateArgs;
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
/// var example = new PolicyTemplate("example", PolicyTemplateArgs.builder()
/// .policyStoreId(exampleAwsVerifiedpermissionsPolicyStore.id())
/// .statement("permit (principal in ?principal, action in PhotoFlash::Action::\"FullPhotoAccess\", resource == ?resource) unless { resource.IsPrivate };")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedpermissions:PolicyTemplate
/// properties:
/// policyStoreId: ${exampleAwsVerifiedpermissionsPolicyStore.id}
/// statement: permit (principal in ?principal, action in PhotoFlash::Action::"FullPhotoAccess", resource == ?resource) unless { resource.IsPrivate };
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Verified Permissions Policy Store using the `policy_store_id:policy_template_id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedpermissions/policyTemplate:PolicyTemplate example policyStoreId:policyTemplateId
/// ```
class PolicyTemplate extends CustomResource {
  /// The date the Policy Store was created.
  late final Output<String> createdDate;

  /// Provides a description for the policy template.
  late final Output<String?> description;

  /// The ID of the Policy Store.
  late final Output<String> policyStoreId;

  /// The ID of the Policy Store.
  late final Output<String> policyTemplateId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Defines the content of the statement, written in Cedar policy language.
  ///
  /// The following arguments are optional:
  late final Output<String> statement;

  PolicyTemplate(
    String name, {
    PolicyTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedpermissions/policyTemplate:PolicyTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.policyStoreId = registerOutput<String>('policyStoreId');
    this.policyTemplateId = registerOutput<String>('policyTemplateId');
    this.region = registerOutput<String>('region');
    this.statement = registerOutput<String>('statement');
  }
}
