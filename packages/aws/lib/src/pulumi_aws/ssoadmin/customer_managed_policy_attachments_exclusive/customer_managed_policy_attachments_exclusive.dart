import 'package:pulumi/pulumi.dart';
import '../customer_managed_policy_attachments_exclusive_customer_managed_policy_reference/customer_managed_policy_attachments_exclusive_customer_managed_policy_reference.dart';
import '../customer_managed_policy_attachments_exclusive_timeouts/customer_managed_policy_attachments_exclusive_timeouts.dart';
import 'customer_managed_policy_attachments_exclusive_args.dart';

/// Resource for managing exclusive AWS SSO Admin Customer Managed Policy Attachments.
///
/// This resource is designed to manage all customer managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any customer managed policies attached to the permission set that are not defined in the configuration.
///
/// !> **WARNING:** Do not use this resource together with the <span pulumi-lang-nodejs="`aws.ssoadmin.CustomerManagedPolicyAttachment`" pulumi-lang-dotnet="`aws.ssoadmin.CustomerManagedPolicyAttachment`" pulumi-lang-go="`ssoadmin.CustomerManagedPolicyAttachment`" pulumi-lang-python="`ssoadmin.CustomerManagedPolicyAttachment`" pulumi-lang-yaml="`aws.ssoadmin.CustomerManagedPolicyAttachment`" pulumi-lang-java="`aws.ssoadmin.CustomerManagedPolicyAttachment`">`aws.ssoadmin.CustomerManagedPolicyAttachment`</span> resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// > Destruction of this resource means Terraform will no longer manage the customer managed policy attachments, **but will not detach any policies**. The permission set will retain all customer managed policies that were attached at the time of destruction.
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
/// const exampleCustomerManagedPolicyAttachmentsExclusive = new aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example", {
/// instanceArn: example.then(example => example.arns?.[0]),
/// permissionSetArn: examplePermissionSet.arn,
/// customerManagedPolicyReferences: [{
/// name: examplePolicy.name,
/// path: "/",
/// }],
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
/// example_customer_managed_policy_attachments_exclusive = aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example",
/// instance_arn=example.arns[0],
/// permission_set_arn=example_permission_set.arn,
/// customer_managed_policy_references=[{
/// "name": example_policy.name,
/// "path": "/",
/// }])
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
/// var exampleCustomerManagedPolicyAttachmentsExclusive = new Aws.SsoAdmin.CustomerManagedPolicyAttachmentsExclusive("example", new()
/// {
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// PermissionSetArn = examplePermissionSet.Arn,
/// CustomerManagedPolicyReferences = new[]
/// {
/// new Aws.SsoAdmin.Inputs.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs
/// {
/// Name = examplePolicy.Name,
/// Path = "/",
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
/// _, err = ssoadmin.NewCustomerManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs{
/// InstanceArn:      pulumi.String(example.Arns[0]),
/// PermissionSetArn: examplePermissionSet.Arn,
/// CustomerManagedPolicyReferences: ssoadmin.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArray{
/// &ssoadmin.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs{
/// Name: examplePolicy.Name,
/// Path: pulumi.String("/"),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs;
/// import com.pulumi.aws.ssoadmin.inputs.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs;
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
/// var exampleCustomerManagedPolicyAttachmentsExclusive = new CustomerManagedPolicyAttachmentsExclusive("exampleCustomerManagedPolicyAttachmentsExclusive", CustomerManagedPolicyAttachmentsExclusiveArgs.builder()
/// .instanceArn(example.arns()[0])
/// .permissionSetArn(examplePermissionSet.arn())
/// .customerManagedPolicyReferences(CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs.builder()
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
/// exampleCustomerManagedPolicyAttachmentsExclusive:
/// type: aws:ssoadmin:CustomerManagedPolicyAttachmentsExclusive
/// name: example
/// properties:
/// instanceArn: ${example.arns[0]}
/// permissionSetArn: ${examplePermissionSet.arn}
/// customerManagedPolicyReferences:
/// - name: ${examplePolicy.name}
/// path: /
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Disallow Customer Managed Policy Attachments
///
/// To disallow all customer managed policy attachments, omit the <span pulumi-lang-nodejs="`customerManagedPolicyReference`" pulumi-lang-dotnet="`CustomerManagedPolicyReference`" pulumi-lang-go="`customerManagedPolicyReference`" pulumi-lang-python="`customer_managed_policy_reference`" pulumi-lang-yaml="`customerManagedPolicyReference`" pulumi-lang-java="`customerManagedPolicyReference`">`customer_managed_policy_reference`</span> block.
///
/// > Any customer managed policies attached to the permission set will be **removed**.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example", {
/// instanceArn: exampleAwsSsoadminInstances.arns[0],
/// permissionSetArn: exampleAwsSsoadminPermissionSet.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example",
/// instance_arn=example_aws_ssoadmin_instances["arns"][0],
/// permission_set_arn=example_aws_ssoadmin_permission_set["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.SsoAdmin.CustomerManagedPolicyAttachmentsExclusive("example", new()
/// {
/// InstanceArn = exampleAwsSsoadminInstances.Arns[0],
/// PermissionSetArn = exampleAwsSsoadminPermissionSet.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssoadmin.NewCustomerManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs{
/// InstanceArn:      pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// PermissionSetArn: pulumi.Any(exampleAwsSsoadminPermissionSet.Arn),
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
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs;
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
/// var example = new CustomerManagedPolicyAttachmentsExclusive("example", CustomerManagedPolicyAttachmentsExclusiveArgs.builder()
/// .instanceArn(exampleAwsSsoadminInstances.arns()[0])
/// .permissionSetArn(exampleAwsSsoadminPermissionSet.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ssoadmin:CustomerManagedPolicyAttachmentsExclusive
/// properties:
/// instanceArn: ${exampleAwsSsoadminInstances.arns[0]}
/// permissionSetArn: ${exampleAwsSsoadminPermissionSet.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> (String) ARN of the SSO Instance.
/// * <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span> (String) ARN of the Permission Set.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Customer Managed Policy Attachments Exclusive using the <span pulumi-lang-nodejs="`instanceArn`" pulumi-lang-dotnet="`InstanceArn`" pulumi-lang-go="`instanceArn`" pulumi-lang-python="`instance_arn`" pulumi-lang-yaml="`instanceArn`" pulumi-lang-java="`instanceArn`">`instance_arn`</span> and <span pulumi-lang-nodejs="`permissionSetArn`" pulumi-lang-dotnet="`PermissionSetArn`" pulumi-lang-go="`permissionSetArn`" pulumi-lang-python="`permission_set_arn`" pulumi-lang-yaml="`permissionSetArn`" pulumi-lang-java="`permissionSetArn`">`permission_set_arn`</span> arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class CustomerManagedPolicyAttachmentsExclusive extends CustomResource {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  late final Output<
          List<
              CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>?>
      customerManagedPolicyReferences;

  /// ARN of the SSO Instance.
  late final Output<String> instanceArn;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>
      timeouts;

  CustomerManagedPolicyAttachmentsExclusive(
    String name, {
    CustomerManagedPolicyAttachmentsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customerManagedPolicyReferences = registerOutput<
            List<
                CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>?>(
        'customerManagedPolicyReferences');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>(
            'timeouts');
  }
}
