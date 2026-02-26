import 'package:pulumi/pulumi.dart';
import '../stack_set_auto_deployment/stack_set_auto_deployment.dart';
import '../stack_set_managed_execution/stack_set_managed_execution.dart';
import '../stack_set_operation_preferences/stack_set_operation_preferences.dart';
import 'stack_set_args.dart';

/// Manages a CloudFormation StackSet. StackSets allow CloudFormation templates to be easily deployed across multiple accounts and regions via StackSet Instances (<span pulumi-lang-nodejs="`aws.cloudformation.StackSetInstance`" pulumi-lang-dotnet="`aws.cloudformation.StackSetInstance`" pulumi-lang-go="`cloudformation.StackSetInstance`" pulumi-lang-python="`cloudformation.StackSetInstance`" pulumi-lang-yaml="`aws.cloudformation.StackSetInstance`" pulumi-lang-java="`aws.cloudformation.StackSetInstance`">`aws.cloudformation.StackSetInstance`</span> resource). Additional information about StackSets can be found in the [AWS CloudFormation User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html).
///
/// > **NOTE:** All template parameters, including those with a `Default`, must be configured or ignored with the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument.
///
/// > **NOTE:** All `NoEcho` template parameters must be ignored with the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument.
///
/// > **NOTE:** When using a delegated administrator account, ensure that your IAM User or Role has the `organizations:ListDelegatedAdministrators` permission. Otherwise, you may get an error like `ValidationError: Account used is not a delegated administrator`.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// effect: "Allow",
/// principals: [{
/// identifiers: ["cloudformation.amazonaws.com"],
/// type: "Service",
/// }],
/// }],
/// });
/// const aWSCloudFormationStackSetAdministrationRole = new aws.iam.Role("AWSCloudFormationStackSetAdministrationRole", {
/// assumeRolePolicy: aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.then(aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy => aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.json),
/// name: "AWSCloudFormationStackSetAdministrationRole",
/// });
/// const example = new aws.cloudformation.StackSet("example", {
/// administrationRoleArn: aWSCloudFormationStackSetAdministrationRole.arn,
/// name: "example",
/// parameters: {
/// VPCCidr: "10.0.0.0/16",
/// },
/// templateBody: JSON.stringify({
/// Parameters: {
/// VPCCidr: {
/// Type: "String",
/// Default: "10.0.0.0/16",
/// Description: "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
/// },
/// },
/// Resources: {
/// myVpc: {
/// Type: "AWS::EC2::VPC",
/// Properties: {
/// CidrBlock: {
/// Ref: "VPCCidr",
/// },
/// Tags: [{
/// Key: "Name",
/// Value: "Primary_CF_VPC",
/// }],
/// },
/// },
/// },
/// }),
/// });
/// const aWSCloudFormationStackSetAdministrationRoleExecutionPolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// effect: "Allow",
/// resources: [pulumi.interpolate`arn:aws:iam::*:role/${example.executionRoleName}`],
/// }],
/// });
/// const aWSCloudFormationStackSetAdministrationRoleExecutionPolicyRolePolicy = new aws.iam.RolePolicy("AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy", {
/// name: "ExecutionPolicy",
/// policy: aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.apply(aWSCloudFormationStackSetAdministrationRoleExecutionPolicy => aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.json),
/// role: aWSCloudFormationStackSetAdministrationRole.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// a_ws_cloud_formation_stack_set_administration_role_assume_role_policy = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "effect": "Allow",
/// "principals": [{
/// "identifiers": ["cloudformation.amazonaws.com"],
/// "type": "Service",
/// }],
/// }])
/// a_ws_cloud_formation_stack_set_administration_role = aws.iam.Role("AWSCloudFormationStackSetAdministrationRole",
/// assume_role_policy=a_ws_cloud_formation_stack_set_administration_role_assume_role_policy.json,
/// name="AWSCloudFormationStackSetAdministrationRole")
/// example = aws.cloudformation.StackSet("example",
/// administration_role_arn=a_ws_cloud_formation_stack_set_administration_role.arn,
/// name="example",
/// parameters={
/// "VPCCidr": "10.0.0.0/16",
/// },
/// template_body=json.dumps({
/// "Parameters": {
/// "VPCCidr": {
/// "Type": "String",
/// "Default": "10.0.0.0/16",
/// "Description": "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
/// },
/// },
/// "Resources": {
/// "myVpc": {
/// "Type": "AWS::EC2::VPC",
/// "Properties": {
/// "CidrBlock": {
/// "Ref": "VPCCidr",
/// },
/// "Tags": [{
/// "Key": "Name",
/// "Value": "Primary_CF_VPC",
/// }],
/// },
/// },
/// },
/// }))
/// a_ws_cloud_formation_stack_set_administration_role_execution_policy = aws.iam.get_policy_document_output(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "effect": "Allow",
/// "resources": [example.execution_role_name.apply(lambda execution_role_name: f"arn:aws:iam::*:role/{execution_role_name}")],
/// }])
/// a_ws_cloud_formation_stack_set_administration_role_execution_policy_role_policy = aws.iam.RolePolicy("AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy",
/// name="ExecutionPolicy",
/// policy=a_ws_cloud_formation_stack_set_administration_role_execution_policy.json,
/// role=a_ws_cloud_formation_stack_set_administration_role.name)
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
/// var aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Identifiers = new[]
/// {
/// "cloudformation.amazonaws.com",
/// },
/// Type = "Service",
/// },
/// },
/// },
/// },
/// });
///
/// var aWSCloudFormationStackSetAdministrationRole = new Aws.Iam.Role("AWSCloudFormationStackSetAdministrationRole", new()
/// {
/// AssumeRolePolicy = aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// Name = "AWSCloudFormationStackSetAdministrationRole",
/// });
///
/// var example = new Aws.CloudFormation.StackSet("example", new()
/// {
/// AdministrationRoleArn = aWSCloudFormationStackSetAdministrationRole.Arn,
/// Name = "example",
/// Parameters =
/// {
/// { "VPCCidr", "10.0.0.0/16" },
/// },
/// TemplateBody = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Parameters"] = new Dictionary<string, object?>
/// {
/// ["VPCCidr"] = new Dictionary<string, object?>
/// {
/// ["Type"] = "String",
/// ["Default"] = "10.0.0.0/16",
/// ["Description"] = "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
/// },
/// },
/// ["Resources"] = new Dictionary<string, object?>
/// {
/// ["myVpc"] = new Dictionary<string, object?>
/// {
/// ["Type"] = "AWS::EC2::VPC",
/// ["Properties"] = new Dictionary<string, object?>
/// {
/// ["CidrBlock"] = new Dictionary<string, object?>
/// {
/// ["Ref"] = "VPCCidr",
/// },
/// ["Tags"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Key"] = "Name",
/// ["Value"] = "Primary_CF_VPC",
/// },
/// },
/// },
/// },
/// },
/// }),
/// });
///
/// var aWSCloudFormationStackSetAdministrationRoleExecutionPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Effect = "Allow",
/// Resources = new[]
/// {
/// $"arn:aws:iam::*:role/{example.ExecutionRoleName}",
/// },
/// },
/// },
/// });
///
/// var aWSCloudFormationStackSetAdministrationRoleExecutionPolicyRolePolicy = new Aws.Iam.RolePolicy("AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy", new()
/// {
/// Name = "ExecutionPolicy",
/// Policy = aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// Role = aWSCloudFormationStackSetAdministrationRole.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudformation"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: []string{
/// "cloudformation.amazonaws.com",
/// },
/// Type: "Service",
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// aWSCloudFormationStackSetAdministrationRole, err := iam.NewRole(ctx, "AWSCloudFormationStackSetAdministrationRole", &iam.RoleArgs{
/// AssumeRolePolicy: pulumi.String(aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.Json),
/// Name:             pulumi.String("AWSCloudFormationStackSetAdministrationRole"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Parameters": map[string]interface{}{
/// "VPCCidr": map[string]interface{}{
/// "Type":        "String",
/// "Default":     "10.0.0.0/16",
/// "Description": "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.",
/// },
/// },
/// "Resources": map[string]interface{}{
/// "myVpc": map[string]interface{}{
/// "Type": "AWS::EC2::VPC",
/// "Properties": map[string]interface{}{
/// "CidrBlock": map[string]interface{}{
/// "Ref": "VPCCidr",
/// },
/// "Tags": []map[string]interface{}{
/// map[string]interface{}{
/// "Key":   "Name",
/// "Value": "Primary_CF_VPC",
/// },
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// example, err := cloudformation.NewStackSet(ctx, "example", &cloudformation.StackSetArgs{
/// AdministrationRoleArn: aWSCloudFormationStackSetAdministrationRole.Arn,
/// Name:                  pulumi.String("example"),
/// Parameters: pulumi.StringMap{
/// "VPCCidr": pulumi.String("10.0.0.0/16"),
/// },
/// TemplateBody: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// aWSCloudFormationStackSetAdministrationRoleExecutionPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("sts:AssumeRole"),
/// },
/// Effect: pulumi.String("Allow"),
/// Resources: pulumi.StringArray{
/// example.ExecutionRoleName.ApplyT(func(executionRoleName string) (string, error) {
/// return fmt.Sprintf("arn:aws:iam::*:role/%v", executionRoleName), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// },
/// }, nil)
/// _, err = iam.NewRolePolicy(ctx, "AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy", &iam.RolePolicyArgs{
/// Name: pulumi.String("ExecutionPolicy"),
/// Policy: pulumi.String(aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.ApplyT(func(aWSCloudFormationStackSetAdministrationRoleExecutionPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// Role: aWSCloudFormationStackSetAdministrationRole.Name,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cloudformation.StackSet;
/// import com.pulumi.aws.cloudformation.StackSetArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
/// final var aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("cloudformation.amazonaws.com")
/// .type("Service")
/// .build())
/// .build())
/// .build());
///
/// var aWSCloudFormationStackSetAdministrationRole = new Role("aWSCloudFormationStackSetAdministrationRole", RoleArgs.builder()
/// .assumeRolePolicy(aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.json())
/// .name("AWSCloudFormationStackSetAdministrationRole")
/// .build());
///
/// var example = new StackSet("example", StackSetArgs.builder()
/// .administrationRoleArn(aWSCloudFormationStackSetAdministrationRole.arn())
/// .name("example")
/// .parameters(Map.of("VPCCidr", "10.0.0.0/16"))
/// .templateBody(serializeJson(
/// jsonObject(
/// jsonProperty("Parameters", jsonObject(
/// jsonProperty("VPCCidr", jsonObject(
/// jsonProperty("Type", "String"),
/// jsonProperty("Default", "10.0.0.0/16"),
/// jsonProperty("Description", "Enter the CIDR block for the VPC. Default is 10.0.0.0/16.")
/// ))
/// )),
/// jsonProperty("Resources", jsonObject(
/// jsonProperty("myVpc", jsonObject(
/// jsonProperty("Type", "AWS::EC2::VPC"),
/// jsonProperty("Properties", jsonObject(
/// jsonProperty("CidrBlock", jsonObject(
/// jsonProperty("Ref", "VPCCidr")
/// )),
/// jsonProperty("Tags", jsonArray(jsonObject(
/// jsonProperty("Key", "Name"),
/// jsonProperty("Value", "Primary_CF_VPC")
/// )))
/// ))
/// ))
/// ))
/// )))
/// .build());
///
/// final var aWSCloudFormationStackSetAdministrationRoleExecutionPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .effect("Allow")
/// .resources(example.executionRoleName().applyValue(_executionRoleName -> String.format("arn:aws:iam::*:role/%s", _executionRoleName)))
/// .build())
/// .build());
///
/// var aWSCloudFormationStackSetAdministrationRoleExecutionPolicyRolePolicy = new RolePolicy("aWSCloudFormationStackSetAdministrationRoleExecutionPolicyRolePolicy", RolePolicyArgs.builder()
/// .name("ExecutionPolicy")
/// .policy(aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.applyValue(_aWSCloudFormationStackSetAdministrationRoleExecutionPolicy -> _aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.json()))
/// .role(aWSCloudFormationStackSetAdministrationRole.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// aWSCloudFormationStackSetAdministrationRole:
/// type: aws:iam:Role
/// name: AWSCloudFormationStackSetAdministrationRole
/// properties:
/// assumeRolePolicy: ${aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy.json}
/// name: AWSCloudFormationStackSetAdministrationRole
/// example:
/// type: aws:cloudformation:StackSet
/// properties:
/// administrationRoleArn: ${aWSCloudFormationStackSetAdministrationRole.arn}
/// name: example
/// parameters:
/// VPCCidr: 10.0.0.0/16
/// templateBody:
/// fn::toJSON:
/// Parameters:
/// VPCCidr:
/// Type: String
/// Default: 10.0.0.0/16
/// Description: Enter the CIDR block for the VPC. Default is 10.0.0.0/16.
/// Resources:
/// myVpc:
/// Type: AWS::EC2::VPC
/// Properties:
/// CidrBlock:
/// Ref: VPCCidr
/// Tags:
/// - Key: Name
/// Value: Primary_CF_VPC
/// aWSCloudFormationStackSetAdministrationRoleExecutionPolicyRolePolicy:
/// type: aws:iam:RolePolicy
/// name: AWSCloudFormationStackSetAdministrationRole_ExecutionPolicy
/// properties:
/// name: ExecutionPolicy
/// policy: ${aWSCloudFormationStackSetAdministrationRoleExecutionPolicy.json}
/// role: ${aWSCloudFormationStackSetAdministrationRole.name}
/// variables:
/// aWSCloudFormationStackSetAdministrationRoleAssumeRolePolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// effect: Allow
/// principals:
/// - identifiers:
/// - cloudformation.amazonaws.com
/// type: Service
/// aWSCloudFormationStackSetAdministrationRoleExecutionPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// effect: Allow
/// resources:
/// - arn:aws:iam::*:role/${example.executionRoleName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Import CloudFormation StackSets when acting a delegated administrator in a member account using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`callAs`" pulumi-lang-dotnet="`CallAs`" pulumi-lang-go="`callAs`" pulumi-lang-python="`call_as`" pulumi-lang-yaml="`callAs`" pulumi-lang-java="`callAs`">`call_as`</span> values separated by a comma (`,`). For example:
///
///
/// Using `pulumi import`, import CloudFormation StackSets using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSet:StackSet example example
/// ```
///
/// Using `pulumi import`, import CloudFormation StackSets when acting a delegated administrator in a member account using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> and <span pulumi-lang-nodejs="`callAs`" pulumi-lang-dotnet="`CallAs`" pulumi-lang-go="`callAs`" pulumi-lang-python="`call_as`" pulumi-lang-yaml="`callAs`" pulumi-lang-java="`callAs`">`call_as`</span> values separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:cloudformation/stackSet:StackSet example example,DELEGATED_ADMIN
/// ```
class StackSet extends CustomResource {
  /// Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the `SELF_MANAGED` permission model.
  late final Output<String?> administrationRoleArn;

  /// Amazon Resource Name (ARN) of the StackSet.
  late final Output<String> arn;

  /// Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the `SERVICE_MANAGED` permission model.
  late final Output<StackSetAutoDeployment?> autoDeployment;

  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  late final Output<String?> callAs;

  /// A list of capabilities. Valid values: `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_AUTO_EXPAND`.
  late final Output<List<String>?> capabilities;

  /// Description of the StackSet.
  late final Output<String?> description;

  /// Name of the IAM Role in all target accounts for StackSet operations. Defaults to `AWSCloudFormationStackSetExecutionRole` when using the `SELF_MANAGED` permission model. This should not be defined when using the `SERVICE_MANAGED` permission model.
  late final Output<String> executionRoleName;

  /// Configuration block to allow StackSets to perform non-conflicting operations concurrently and queues conflicting operations.
  late final Output<StackSetManagedExecution?> managedExecution;

  /// Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.
  late final Output<String> name;

  /// Preferences for how AWS CloudFormation performs a stack set update.
  late final Output<StackSetOperationPreferences?> operationPreferences;

  /// Key-value map of input parameters for the StackSet template. All template parameters, including those with a `Default`, must be configured or ignored with <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument. All `NoEcho` template parameters must be ignored with the <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block <span pulumi-lang-nodejs="`ignoreChanges`" pulumi-lang-dotnet="`IgnoreChanges`" pulumi-lang-go="`ignoreChanges`" pulumi-lang-python="`ignore_changes`" pulumi-lang-yaml="`ignoreChanges`" pulumi-lang-java="`ignoreChanges`">`ignore_changes`</span> argument.
  late final Output<Map<String, String>?> parameters;

  /// Describes how the IAM roles required for your StackSet are created. Valid values: `SELF_MANAGED` (default), `SERVICE_MANAGED`.
  late final Output<String?> permissionModel;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Unique identifier of the StackSet.
  late final Output<String> stackSetId;

  /// Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with <span pulumi-lang-nodejs="`templateUrl`" pulumi-lang-dotnet="`TemplateUrl`" pulumi-lang-go="`templateUrl`" pulumi-lang-python="`template_url`" pulumi-lang-yaml="`templateUrl`" pulumi-lang-java="`templateUrl`">`template_url`</span>.
  late final Output<String> templateBody;

  /// String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with <span pulumi-lang-nodejs="`templateBody`" pulumi-lang-dotnet="`TemplateBody`" pulumi-lang-go="`templateBody`" pulumi-lang-python="`template_body`" pulumi-lang-yaml="`templateBody`" pulumi-lang-java="`templateBody`">`template_body`</span>.
  late final Output<String?> templateUrl;

  StackSet(
    String name, {
    StackSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudformation/stackSet:StackSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.administrationRoleArn =
        registerOutput<String?>('administrationRoleArn');
    this.arn = registerOutput<String>('arn');
    this.autoDeployment =
        registerOutput<StackSetAutoDeployment?>('autoDeployment');
    this.callAs = registerOutput<String?>('callAs');
    this.capabilities = registerOutput<List<String>?>('capabilities');
    this.description = registerOutput<String?>('description');
    this.executionRoleName = registerOutput<String>('executionRoleName');
    this.managedExecution =
        registerOutput<StackSetManagedExecution?>('managedExecution');
    this.name = registerOutput<String>('name');
    this.operationPreferences =
        registerOutput<StackSetOperationPreferences?>('operationPreferences');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.permissionModel = registerOutput<String?>('permissionModel');
    this.region = registerOutput<String>('region');
    this.stackSetId = registerOutput<String>('stackSetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.templateBody = registerOutput<String>('templateBody');
    this.templateUrl = registerOutput<String?>('templateUrl');
  }
}
