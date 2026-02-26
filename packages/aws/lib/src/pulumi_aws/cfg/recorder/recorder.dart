import 'package:pulumi/pulumi.dart';
import '../recorder_recording_group/recorder_recording_group.dart';
import '../recorder_recording_mode/recorder_recording_mode.dart';
import 'recorder_args.dart';

/// Provides an AWS Config Configuration Recorder. Please note that this resource **does not start** the created recorder automatically.
///
/// > **Note:** _Starting_ the Configuration Recorder requires a delivery channel (while delivery channel creation requires Configuration Recorder). This is why <span pulumi-lang-nodejs="`aws.cfg.RecorderStatus`" pulumi-lang-dotnet="`aws.cfg.RecorderStatus`" pulumi-lang-go="`cfg.RecorderStatus`" pulumi-lang-python="`cfg.RecorderStatus`" pulumi-lang-yaml="`aws.cfg.RecorderStatus`" pulumi-lang-java="`aws.cfg.RecorderStatus`">`aws.cfg.RecorderStatus`</span> is a separate resource.
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
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["config.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const r = new aws.iam.Role("r", {
/// name: "awsconfig-example",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const foo = new aws.cfg.Recorder("foo", {
/// name: "example",
/// roleArn: r.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["config.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// r = aws.iam.Role("r",
/// name="awsconfig-example",
/// assume_role_policy=assume_role.json)
/// foo = aws.cfg.Recorder("foo",
/// name="example",
/// role_arn=r.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "config.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var r = new Aws.Iam.Role("r", new()
/// {
/// Name = "awsconfig-example",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var foo = new Aws.Cfg.Recorder("foo", new()
/// {
/// Name = "example",
/// RoleArn = r.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "config.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// r, err := iam.NewRole(ctx, "r", &iam.RoleArgs{
/// Name:             pulumi.String("awsconfig-example"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: r.Arn,
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
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
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
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("config.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var r = new Role("r", RoleArgs.builder()
/// .name("awsconfig-example")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// var foo = new Recorder("foo", RecorderArgs.builder()
/// .name("example")
/// .roleArn(r.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:cfg:Recorder
/// properties:
/// name: example
/// roleArn: ${r.arn}
/// r:
/// type: aws:iam:Role
/// properties:
/// name: awsconfig-example
/// assumeRolePolicy: ${assumeRole.json}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - config.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Exclude Resources Types Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.cfg.Recorder("foo", {
/// name: "example",
/// roleArn: r.arn,
/// recordingGroup: {
/// allSupported: false,
/// exclusionByResourceTypes: [{
/// resourceTypes: ["AWS::EC2::Instance"],
/// }],
/// recordingStrategies: [{
/// useOnly: "EXCLUSION_BY_RESOURCE_TYPES",
/// }],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.cfg.Recorder("foo",
/// name="example",
/// role_arn=r["arn"],
/// recording_group={
/// "all_supported": False,
/// "exclusion_by_resource_types": [{
/// "resource_types": ["AWS::EC2::Instance"],
/// }],
/// "recording_strategies": [{
/// "use_only": "EXCLUSION_BY_RESOURCE_TYPES",
/// }],
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
/// var foo = new Aws.Cfg.Recorder("foo", new()
/// {
/// Name = "example",
/// RoleArn = r.Arn,
/// RecordingGroup = new Aws.Cfg.Inputs.RecorderRecordingGroupArgs
/// {
/// AllSupported = false,
/// ExclusionByResourceTypes = new[]
/// {
/// new Aws.Cfg.Inputs.RecorderRecordingGroupExclusionByResourceTypeArgs
/// {
/// ResourceTypes = new[]
/// {
/// "AWS::EC2::Instance",
/// },
/// },
/// },
/// RecordingStrategies = new[]
/// {
/// new Aws.Cfg.Inputs.RecorderRecordingGroupRecordingStrategyArgs
/// {
/// UseOnly = "EXCLUSION_BY_RESOURCE_TYPES",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: pulumi.Any(r.Arn),
/// RecordingGroup: &cfg.RecorderRecordingGroupArgs{
/// AllSupported: pulumi.Bool(false),
/// ExclusionByResourceTypes: cfg.RecorderRecordingGroupExclusionByResourceTypeArray{
/// &cfg.RecorderRecordingGroupExclusionByResourceTypeArgs{
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::EC2::Instance"),
/// },
/// },
/// },
/// RecordingStrategies: cfg.RecorderRecordingGroupRecordingStrategyArray{
/// &cfg.RecorderRecordingGroupRecordingStrategyArgs{
/// UseOnly: pulumi.String("EXCLUSION_BY_RESOURCE_TYPES"),
/// },
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
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingGroupArgs;
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
/// var foo = new Recorder("foo", RecorderArgs.builder()
/// .name("example")
/// .roleArn(r.arn())
/// .recordingGroup(RecorderRecordingGroupArgs.builder()
/// .allSupported(false)
/// .exclusionByResourceTypes(RecorderRecordingGroupExclusionByResourceTypeArgs.builder()
/// .resourceTypes("AWS::EC2::Instance")
/// .build())
/// .recordingStrategies(RecorderRecordingGroupRecordingStrategyArgs.builder()
/// .useOnly("EXCLUSION_BY_RESOURCE_TYPES")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:cfg:Recorder
/// properties:
/// name: example
/// roleArn: ${r.arn}
/// recordingGroup:
/// allSupported: false
/// exclusionByResourceTypes:
/// - resourceTypes:
/// - AWS::EC2::Instance
/// recordingStrategies:
/// - useOnly: EXCLUSION_BY_RESOURCE_TYPES
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Periodic Recording
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.cfg.Recorder("foo", {
/// name: "example",
/// roleArn: r.arn,
/// recordingGroup: {
/// allSupported: false,
/// includeGlobalResourceTypes: false,
/// resourceTypes: [
/// "AWS::EC2::Instance",
/// "AWS::EC2::NetworkInterface",
/// ],
/// },
/// recordingMode: {
/// recordingFrequency: "CONTINUOUS",
/// recordingModeOverride: {
/// description: "Only record EC2 network interfaces daily",
/// resourceTypes: ["AWS::EC2::NetworkInterface"],
/// recordingFrequency: "DAILY",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.cfg.Recorder("foo",
/// name="example",
/// role_arn=r["arn"],
/// recording_group={
/// "all_supported": False,
/// "include_global_resource_types": False,
/// "resource_types": [
/// "AWS::EC2::Instance",
/// "AWS::EC2::NetworkInterface",
/// ],
/// },
/// recording_mode={
/// "recording_frequency": "CONTINUOUS",
/// "recording_mode_override": {
/// "description": "Only record EC2 network interfaces daily",
/// "resource_types": ["AWS::EC2::NetworkInterface"],
/// "recording_frequency": "DAILY",
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
/// var foo = new Aws.Cfg.Recorder("foo", new()
/// {
/// Name = "example",
/// RoleArn = r.Arn,
/// RecordingGroup = new Aws.Cfg.Inputs.RecorderRecordingGroupArgs
/// {
/// AllSupported = false,
/// IncludeGlobalResourceTypes = false,
/// ResourceTypes = new[]
/// {
/// "AWS::EC2::Instance",
/// "AWS::EC2::NetworkInterface",
/// },
/// },
/// RecordingMode = new Aws.Cfg.Inputs.RecorderRecordingModeArgs
/// {
/// RecordingFrequency = "CONTINUOUS",
/// RecordingModeOverride = new Aws.Cfg.Inputs.RecorderRecordingModeRecordingModeOverrideArgs
/// {
/// Description = "Only record EC2 network interfaces daily",
/// ResourceTypes = new[]
/// {
/// "AWS::EC2::NetworkInterface",
/// },
/// RecordingFrequency = "DAILY",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: pulumi.Any(r.Arn),
/// RecordingGroup: &cfg.RecorderRecordingGroupArgs{
/// AllSupported:               pulumi.Bool(false),
/// IncludeGlobalResourceTypes: pulumi.Bool(false),
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::EC2::Instance"),
/// pulumi.String("AWS::EC2::NetworkInterface"),
/// },
/// },
/// RecordingMode: &cfg.RecorderRecordingModeArgs{
/// RecordingFrequency: pulumi.String("CONTINUOUS"),
/// RecordingModeOverride: &cfg.RecorderRecordingModeRecordingModeOverrideArgs{
/// Description: pulumi.String("Only record EC2 network interfaces daily"),
/// ResourceTypes: pulumi.StringArray{
/// pulumi.String("AWS::EC2::NetworkInterface"),
/// },
/// RecordingFrequency: pulumi.String("DAILY"),
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
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingGroupArgs;
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingModeArgs;
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingModeRecordingModeOverrideArgs;
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
/// var foo = new Recorder("foo", RecorderArgs.builder()
/// .name("example")
/// .roleArn(r.arn())
/// .recordingGroup(RecorderRecordingGroupArgs.builder()
/// .allSupported(false)
/// .includeGlobalResourceTypes(false)
/// .resourceTypes(
/// "AWS::EC2::Instance",
/// "AWS::EC2::NetworkInterface")
/// .build())
/// .recordingMode(RecorderRecordingModeArgs.builder()
/// .recordingFrequency("CONTINUOUS")
/// .recordingModeOverride(RecorderRecordingModeRecordingModeOverrideArgs.builder()
/// .description("Only record EC2 network interfaces daily")
/// .resourceTypes("AWS::EC2::NetworkInterface")
/// .recordingFrequency("DAILY")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:cfg:Recorder
/// properties:
/// name: example
/// roleArn: ${r.arn}
/// recordingGroup:
/// allSupported: false
/// includeGlobalResourceTypes: false
/// resourceTypes:
/// - AWS::EC2::Instance
/// - AWS::EC2::NetworkInterface
/// recordingMode:
/// recordingFrequency: CONTINUOUS
/// recordingModeOverride:
/// description: Only record EC2 network interfaces daily
/// resourceTypes:
/// - AWS::EC2::NetworkInterface
/// recordingFrequency: DAILY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/recorder:Recorder foo example
/// ```
class Recorder extends CustomResource {
  /// The name of the recorder. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>. Changing it recreates the resource.
  late final Output<String> name;

  /// Recording group - see below.
  late final Output<RecorderRecordingGroup> recordingGroup;

  /// Recording mode - see below.
  late final Output<RecorderRecordingMode> recordingMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. See [AWS Docs](http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html) for more details.
  late final Output<String> roleArn;

  Recorder(
    String name, {
    RecorderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorder:Recorder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.recordingGroup = Output.createUnknown<RecorderRecordingGroup>();
    this.recordingMode = Output.createUnknown<RecorderRecordingMode>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
  }
}
