import 'package:pulumi/pulumi.dart';
import '../customer_managed_policy_attachment_customer_managed_policy_reference/customer_managed_policy_attachment_customer_managed_policy_reference.dart';
import 'customer_managed_policy_attachment_args.dart';

/// Provides a customer managed policy attachment for a Single Sign-On (SSO) Permission Set resource
///
/// !> **WARNING:** Do not use this resource together with the <span pulumi-lang-nodejs="`aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive`" pulumi-lang-dotnet="`aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive`" pulumi-lang-go="`ssoadmin.CustomerManagedPolicyAttachmentsExclusive`" pulumi-lang-python="`ssoadmin.CustomerManagedPolicyAttachmentsExclusive`" pulumi-lang-yaml="`aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive`" pulumi-lang-java="`aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive`">`aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive`</span> resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// > **NOTE:** Creating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
/// name: "Example",
/// instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
/// name: "TestPolicy",
/// description: "My test policy",
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: ["ec2:Describe*"],
/// Effect: "Allow",
/// Resource: "*",
/// }],
/// }),
/// });
/// const exampleCustomerManagedPolicyAttachment = new aws.ssoadmin.CustomerManagedPolicyAttachment("example", {
/// instanceArn: examplePermissionSet.instanceArn,
/// permissionSetArn: examplePermissionSet.arn,
/// customerManagedPolicyReference: {
/// name: examplePolicy.name,
/// path: "/",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
/// name="Example",
/// instance_arn=example.arns[0])
/// example_policy = aws.iam.Policy("example",
/// name="TestPolicy",
/// description="My test policy",
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": ["ec2:Describe*"],
/// "Effect": "Allow",
/// "Resource": "*",
/// }],
/// }))
/// example_customer_managed_policy_attachment = aws.ssoadmin.CustomerManagedPolicyAttachment("example",
/// instance_arn=example_permission_set.instance_arn,
/// permission_set_arn=example_permission_set.arn,
/// customer_managed_policy_reference={
/// "name": example_policy.name,
/// "path": "/",
/// })
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
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
/// {
/// Name = "Example",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// });
///
/// var examplePolicy = new Aws.Iam.Policy("example", new()
/// {
/// Name = "TestPolicy",
/// Description = "My test policy",
/// PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "ec2:Describe*",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = "*",
/// },
/// },
/// }),
/// });
///
/// var exampleCustomerManagedPolicyAttachment = new Aws.SsoAdmin.CustomerManagedPolicyAttachment("example", new()
/// {
/// InstanceArn = examplePermissionSet.InstanceArn,
/// PermissionSetArn = examplePermissionSet.Arn,
/// CustomerManagedPolicyReference = new Aws.SsoAdmin.Inputs.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs
/// {
/// Name = examplePolicy.Name,
/// Path = "/",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// Name:        pulumi.String("Example"),
/// InstanceArn: pulumi.String(example.Arns[0]),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "ec2:Describe*",
/// },
/// "Effect":   "Allow",
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// Name:        pulumi.String("TestPolicy"),
/// Description: pulumi.String("My test policy"),
/// Policy:      pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewCustomerManagedPolicyAttachment(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentArgs{
/// InstanceArn:      examplePermissionSet.InstanceArn,
/// PermissionSetArn: examplePermissionSet.Arn,
/// CustomerManagedPolicyReference: &ssoadmin.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs{
/// Name: examplePolicy.Name,
/// Path: pulumi.String("/"),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachment;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentArgs;
/// import com.pulumi.aws.ssoadmin.inputs.CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
/// .name("Example")
/// .instanceArn(example.arns()[0])
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("TestPolicy")
/// .description("My test policy")
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray("ec2:Describe*")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", "*")
/// )))
/// )))
/// .build());
///
/// var exampleCustomerManagedPolicyAttachment = new CustomerManagedPolicyAttachment("exampleCustomerManagedPolicyAttachment", CustomerManagedPolicyAttachmentArgs.builder()
/// .instanceArn(examplePermissionSet.instanceArn())
/// .permissionSetArn(examplePermissionSet.arn())
/// .customerManagedPolicyReference(CustomerManagedPolicyAttachmentCustomerManagedPolicyReferenceArgs.builder()
/// .name(examplePolicy.name())
/// .path("/")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// examplePermissionSet:
/// type: aws:ssoadmin:PermissionSet
/// name: example
/// properties:
/// name: Example
/// instanceArn: ${example.arns[0]}
/// examplePolicy:
/// type: aws:iam:Policy
/// name: example
/// properties:
/// name: TestPolicy
/// description: My test policy
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - ec2:Describe*
/// Effect: Allow
/// Resource: '*'
/// exampleCustomerManagedPolicyAttachment:
/// type: aws:ssoadmin:CustomerManagedPolicyAttachment
/// name: example
/// properties:
/// instanceArn: ${examplePermissionSet.instanceArn}
/// permissionSetArn: ${examplePermissionSet.arn}
/// customerManagedPolicyReference:
/// name: ${examplePolicy.name}
/// path: /
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SSO Managed Policy Attachments using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span>, <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span>, and <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment example TestPolicy,/,arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class CustomerManagedPolicyAttachment extends CustomResource {
  /// Specifies the name and path of a customer managed policy. See below.
  late final Output<
          CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>
      customerManagedPolicyReference;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  CustomerManagedPolicyAttachment(
    String name, {
    CustomerManagedPolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customerManagedPolicyReference = registerOutput<
            CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(
        'customerManagedPolicyReference');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
  }
}
