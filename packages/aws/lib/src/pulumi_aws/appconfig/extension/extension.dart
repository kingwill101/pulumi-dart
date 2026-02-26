import 'package:pulumi/pulumi.dart';
import '../extension_action_point/extension_action_point.dart';
import '../extension_parameter/extension_parameter.dart';
import 'extension_args.dart';

/// Provides an AppConfig Extension resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testTopic = new aws.sns.Topic("test", {name: "test"});
/// const test = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// type: "Service",
/// identifiers: ["appconfig.amazonaws.com"],
/// }],
/// }],
/// });
/// const testRole = new aws.iam.Role("test", {
/// name: "test",
/// assumeRolePolicy: test.then(test => test.json),
/// });
/// const testExtension = new aws.appconfig.Extension("test", {
/// name: "test",
/// description: "test description",
/// actionPoints: [{
/// point: "ON_DEPLOYMENT_COMPLETE",
/// actions: [{
/// name: "test",
/// roleArn: testRole.arn,
/// uri: testTopic.arn,
/// }],
/// }],
/// tags: {
/// Type: "AppConfig Extension",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_topic = aws.sns.Topic("test", name="test")
/// test = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["appconfig.amazonaws.com"],
/// }],
/// }])
/// test_role = aws.iam.Role("test",
/// name="test",
/// assume_role_policy=test.json)
/// test_extension = aws.appconfig.Extension("test",
/// name="test",
/// description="test description",
/// action_points=[{
/// "point": "ON_DEPLOYMENT_COMPLETE",
/// "actions": [{
/// "name": "test",
/// "role_arn": test_role.arn,
/// "uri": test_topic.arn,
/// }],
/// }],
/// tags={
/// "Type": "AppConfig Extension",
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
/// var testTopic = new Aws.Sns.Topic("test", new()
/// {
/// Name = "test",
/// });
///
/// var test = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "appconfig.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var testRole = new Aws.Iam.Role("test", new()
/// {
/// Name = "test",
/// AssumeRolePolicy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var testExtension = new Aws.AppConfig.Extension("test", new()
/// {
/// Name = "test",
/// Description = "test description",
/// ActionPoints = new[]
/// {
/// new Aws.AppConfig.Inputs.ExtensionActionPointArgs
/// {
/// Point = "ON_DEPLOYMENT_COMPLETE",
/// Actions = new[]
/// {
/// new Aws.AppConfig.Inputs.ExtensionActionPointActionArgs
/// {
/// Name = "test",
/// RoleArn = testRole.Arn,
/// Uri = testTopic.Arn,
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Type", "AppConfig Extension" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testTopic, err := sns.NewTopic(ctx, "test", &sns.TopicArgs{
/// Name: pulumi.String("test"),
/// })
/// if err != nil {
/// return err
/// }
/// test, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "appconfig.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// testRole, err := iam.NewRole(ctx, "test", &iam.RoleArgs{
/// Name:             pulumi.String("test"),
/// AssumeRolePolicy: pulumi.String(test.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appconfig.NewExtension(ctx, "test", &appconfig.ExtensionArgs{
/// Name:        pulumi.String("test"),
/// Description: pulumi.String("test description"),
/// ActionPoints: appconfig.ExtensionActionPointArray{
/// &appconfig.ExtensionActionPointArgs{
/// Point: pulumi.String("ON_DEPLOYMENT_COMPLETE"),
/// Actions: appconfig.ExtensionActionPointActionArray{
/// &appconfig.ExtensionActionPointActionArgs{
/// Name:    pulumi.String("test"),
/// RoleArn: testRole.Arn,
/// Uri:     testTopic.Arn,
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Type": pulumi.String("AppConfig Extension"),
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.appconfig.Extension;
/// import com.pulumi.aws.appconfig.ExtensionArgs;
/// import com.pulumi.aws.appconfig.inputs.ExtensionActionPointArgs;
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
/// var testTopic = new Topic("testTopic", TopicArgs.builder()
/// .name("test")
/// .build());
///
/// final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("appconfig.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// var testRole = new Role("testRole", RoleArgs.builder()
/// .name("test")
/// .assumeRolePolicy(test.json())
/// .build());
///
/// var testExtension = new Extension("testExtension", ExtensionArgs.builder()
/// .name("test")
/// .description("test description")
/// .actionPoints(ExtensionActionPointArgs.builder()
/// .point("ON_DEPLOYMENT_COMPLETE")
/// .actions(ExtensionActionPointActionArgs.builder()
/// .name("test")
/// .roleArn(testRole.arn())
/// .uri(testTopic.arn())
/// .build())
/// .build())
/// .tags(Map.of("Type", "AppConfig Extension"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testTopic:
/// type: aws:sns:Topic
/// name: test
/// properties:
/// name: test
/// testRole:
/// type: aws:iam:Role
/// name: test
/// properties:
/// name: test
/// assumeRolePolicy: ${test.json}
/// testExtension:
/// type: aws:appconfig:Extension
/// name: test
/// properties:
/// name: test
/// description: test description
/// actionPoints:
/// - point: ON_DEPLOYMENT_COMPLETE
/// actions:
/// - name: test
/// roleArn: ${testRole.arn}
/// uri: ${testTopic.arn}
/// tags:
/// Type: AppConfig Extension
/// variables:
/// test:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - appconfig.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Extensions using their extension ID. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/extension:Extension example 71rxuzt
/// ```
class Extension extends CustomResource {
  /// The action points defined in the extension. Detailed below.
  late final Output<List<ExtensionActionPoint>> actionPoints;

  /// ARN of the AppConfig Extension.
  late final Output<String> arn;

  /// Information about the extension.
  late final Output<String> description;

  /// A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
  late final Output<String> name;

  /// The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
  late final Output<List<ExtensionParameter>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The version number for the extension.
  late final Output<int> version;

  Extension(
    String name, {
    ExtensionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/extension:Extension',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionPoints =
        registerOutput<List<ExtensionActionPoint>>('actionPoints');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<List<ExtensionParameter>>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
