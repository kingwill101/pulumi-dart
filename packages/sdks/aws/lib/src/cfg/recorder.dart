import 'package:pulumi/pulumi.dart' as pulumi;
import 'recorder_args.dart';
import 'recorder_recording_group.dart';
import 'recorder_recording_mode.dart';
import 'recorder_state.dart';

/// Provides an AWS Config Configuration Recorder. Please note that this resource **does not start** the created recorder automatically.
///
/// &gt; **Note:** _Starting_ the Configuration Recorder requires a delivery channel (while delivery channel creation requires Configuration Recorder). This is why `aws.cfg.RecorderStatus` is a separate resource.
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
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["config.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const r = new aws.iam.Role("r", {
///     name: "awsconfig-example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const foo = new aws.cfg.Recorder("foo", {
///     name: "example",
///     roleArn: r.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["config.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// r = aws.iam.Role("r",
///     name="awsconfig-example",
///     assume_role_policy=assume_role.json)
/// foo = aws.cfg.Recorder("foo",
///     name="example",
///     role_arn=r.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "config.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var r = new Aws.Iam.Role("r", new()
///     {
///         Name = "awsconfig-example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var foo = new Aws.Cfg.Recorder("foo", new()
///     {
///         Name = "example",
///         RoleArn = r.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"config.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		r, err := iam.NewRole(ctx, "r", &iam.RoleArgs{
/// 			Name:             pulumi.String("awsconfig-example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: r.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["config.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_cfg_recorder" "foo" {
///   name     = "example"
///   role_arn = aws_iam_role.r.arn
/// }
/// resource "aws_iam_role" "r" {
///   name               = "awsconfig-example"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.cfg.Recorder;
/// import com.pulumi.aws.cfg.RecorderArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("config.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var r = new Role("r", RoleArgs.builder()
///             .name("awsconfig-example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var foo = new Recorder("foo", RecorderArgs.builder()
///             .name("example")
///             .roleArn(r.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:cfg:Recorder
///     properties:
///       name: example
///       roleArn: ${r.arn}
///   r:
///     type: aws:iam:Role
///     properties:
///       name: awsconfig-example
///       assumeRolePolicy: ${assumeRole.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - config.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Exclude Resources Types Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.cfg.Recorder("foo", {
///     recordingGroup: {
///         exclusionByResourceTypes: [{
///             resourceTypes: ["AWS::EC2::Instance"],
///         }],
///         recordingStrategies: [{
///             useOnly: "EXCLUSION_BY_RESOURCE_TYPES",
///         }],
///         allSupported: false,
///     },
///     name: "example",
///     roleArn: r.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.cfg.Recorder("foo",
///     recording_group={
///         "exclusion_by_resource_types": [{
///             "resource_types": ["AWS::EC2::Instance"],
///         }],
///         "recording_strategies": [{
///             "use_only": "EXCLUSION_BY_RESOURCE_TYPES",
///         }],
///         "all_supported": False,
///     },
///     name="example",
///     role_arn=r["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Cfg.Recorder("foo", new()
///     {
///         RecordingGroup = new Aws.Cfg.Inputs.RecorderRecordingGroupArgs
///         {
///             ExclusionByResourceTypes = new[]
///             {
///                 new Aws.Cfg.Inputs.RecorderRecordingGroupExclusionByResourceTypeArgs
///                 {
///                     ResourceTypes = new[]
///                     {
///                         "AWS::EC2::Instance",
///                     },
///                 },
///             },
///             RecordingStrategies = new[]
///             {
///                 new Aws.Cfg.Inputs.RecorderRecordingGroupRecordingStrategyArgs
///                 {
///                     UseOnly = "EXCLUSION_BY_RESOURCE_TYPES",
///                 },
///             },
///             AllSupported = false,
///         },
///         Name = "example",
///         RoleArn = r.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// 			RecordingGroup: &cfg.RecorderRecordingGroupArgs{
/// 				ExclusionByResourceTypes: cfg.RecorderRecordingGroupExclusionByResourceTypeArray{
/// 					&cfg.RecorderRecordingGroupExclusionByResourceTypeArgs{
/// 						ResourceTypes: pulumi.StringArray{
/// 							pulumi.String("AWS::EC2::Instance"),
/// 						},
/// 					},
/// 				},
/// 				RecordingStrategies: cfg.RecorderRecordingGroupRecordingStrategyArray{
/// 					&cfg.RecorderRecordingGroupRecordingStrategyArgs{
/// 						UseOnly: pulumi.String("EXCLUSION_BY_RESOURCE_TYPES"),
/// 					},
/// 				},
/// 				AllSupported: pulumi.Bool(false),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(r.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cfg_recorder" "foo" {
///   recording_group = {
///     exclusion_by_resource_types = [{
///       "resourceTypes" = ["AWS::EC2::Instance"]
///     }]
///     recording_strategies = [{
///       "useOnly" = "EXCLUSION_BY_RESOURCE_TYPES"
///     }]
///     all_supported = false
///   }
///   name     = "example"
///   role_arn = r.arn
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
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingGroupExclusionByResourceTypeArgs;
/// import com.pulumi.aws.cfg.inputs.RecorderRecordingGroupRecordingStrategyArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var foo = new Recorder("foo", RecorderArgs.builder()
///             .recordingGroup(RecorderRecordingGroupArgs.builder()
///                 .exclusionByResourceTypes(RecorderRecordingGroupExclusionByResourceTypeArgs.builder()
///                     .resourceTypes("AWS::EC2::Instance")
///                     .build())
///                 .recordingStrategies(RecorderRecordingGroupRecordingStrategyArgs.builder()
///                     .useOnly("EXCLUSION_BY_RESOURCE_TYPES")
///                     .build())
///                 .allSupported(false)
///                 .build())
///             .name("example")
///             .roleArn(r.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:cfg:Recorder
///     properties:
///       recordingGroup:
///         exclusionByResourceTypes:
///           - resourceTypes:
///               - AWS::EC2::Instance
///         recordingStrategies:
///           - useOnly: EXCLUSION_BY_RESOURCE_TYPES
///         allSupported: false
///       name: example
///       roleArn: ${r.arn}
/// ```
///
///
/// ### Periodic Recording
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.cfg.Recorder("foo", {
///     recordingGroup: {
///         allSupported: false,
///         includeGlobalResourceTypes: false,
///         resourceTypes: [
///             "AWS::EC2::Instance",
///             "AWS::EC2::NetworkInterface",
///         ],
///     },
///     recordingMode: {
///         recordingModeOverride: {
///             description: "Only record EC2 network interfaces daily",
///             resourceTypes: ["AWS::EC2::NetworkInterface"],
///             recordingFrequency: "DAILY",
///         },
///         recordingFrequency: "CONTINUOUS",
///     },
///     name: "example",
///     roleArn: r.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.cfg.Recorder("foo",
///     recording_group={
///         "all_supported": False,
///         "include_global_resource_types": False,
///         "resource_types": [
///             "AWS::EC2::Instance",
///             "AWS::EC2::NetworkInterface",
///         ],
///     },
///     recording_mode={
///         "recording_mode_override": {
///             "description": "Only record EC2 network interfaces daily",
///             "resource_types": ["AWS::EC2::NetworkInterface"],
///             "recording_frequency": "DAILY",
///         },
///         "recording_frequency": "CONTINUOUS",
///     },
///     name="example",
///     role_arn=r["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Cfg.Recorder("foo", new()
///     {
///         RecordingGroup = new Aws.Cfg.Inputs.RecorderRecordingGroupArgs
///         {
///             AllSupported = false,
///             IncludeGlobalResourceTypes = false,
///             ResourceTypes = new[]
///             {
///                 "AWS::EC2::Instance",
///                 "AWS::EC2::NetworkInterface",
///             },
///         },
///         RecordingMode = new Aws.Cfg.Inputs.RecorderRecordingModeArgs
///         {
///             RecordingModeOverride = new Aws.Cfg.Inputs.RecorderRecordingModeRecordingModeOverrideArgs
///             {
///                 Description = "Only record EC2 network interfaces daily",
///                 ResourceTypes = new[]
///                 {
///                     "AWS::EC2::NetworkInterface",
///                 },
///                 RecordingFrequency = "DAILY",
///             },
///             RecordingFrequency = "CONTINUOUS",
///         },
///         Name = "example",
///         RoleArn = r.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewRecorder(ctx, "foo", &cfg.RecorderArgs{
/// 			RecordingGroup: &cfg.RecorderRecordingGroupArgs{
/// 				AllSupported:               pulumi.Bool(false),
/// 				IncludeGlobalResourceTypes: pulumi.Bool(false),
/// 				ResourceTypes: pulumi.StringArray{
/// 					pulumi.String("AWS::EC2::Instance"),
/// 					pulumi.String("AWS::EC2::NetworkInterface"),
/// 				},
/// 			},
/// 			RecordingMode: &cfg.RecorderRecordingModeArgs{
/// 				RecordingModeOverride: &cfg.RecorderRecordingModeRecordingModeOverrideArgs{
/// 					Description: pulumi.String("Only record EC2 network interfaces daily"),
/// 					ResourceTypes: pulumi.StringArray{
/// 						pulumi.String("AWS::EC2::NetworkInterface"),
/// 					},
/// 					RecordingFrequency: pulumi.String("DAILY"),
/// 				},
/// 				RecordingFrequency: pulumi.String("CONTINUOUS"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(r.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cfg_recorder" "foo" {
///   recording_group = {
///     all_supported                 = false
///     include_global_resource_types = false
///     resource_types                = ["AWS::EC2::Instance", "AWS::EC2::NetworkInterface"]
///   }
///   recording_mode = {
///     recording_mode_override = {
///       description         = "Only record EC2 network interfaces daily"
///       resource_types      = ["AWS::EC2::NetworkInterface"]
///       recording_frequency = "DAILY"
///     }
///     recording_frequency = "CONTINUOUS"
///   }
///   name     = "example"
///   role_arn = r.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var foo = new Recorder("foo", RecorderArgs.builder()
///             .recordingGroup(RecorderRecordingGroupArgs.builder()
///                 .allSupported(false)
///                 .includeGlobalResourceTypes(false)
///                 .resourceTypes(
///                     "AWS::EC2::Instance",
///                     "AWS::EC2::NetworkInterface")
///                 .build())
///             .recordingMode(RecorderRecordingModeArgs.builder()
///                 .recordingModeOverride(RecorderRecordingModeRecordingModeOverrideArgs.builder()
///                     .description("Only record EC2 network interfaces daily")
///                     .resourceTypes("AWS::EC2::NetworkInterface")
///                     .recordingFrequency("DAILY")
///                     .build())
///                 .recordingFrequency("CONTINUOUS")
///                 .build())
///             .name("example")
///             .roleArn(r.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:cfg:Recorder
///     properties:
///       recordingGroup:
///         allSupported: false
///         includeGlobalResourceTypes: false
///         resourceTypes:
///           - AWS::EC2::Instance
///           - AWS::EC2::NetworkInterface
///       recordingMode:
///         recordingModeOverride:
///           description: Only record EC2 network interfaces daily
///           resourceTypes:
///             - AWS::EC2::NetworkInterface
///           recordingFrequency: DAILY
///         recordingFrequency: CONTINUOUS
///       name: example
///       roleArn: ${r.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the configuration recorder.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Configuration Recorders using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/recorder:Recorder example example
/// ```
class Recorder extends pulumi.CustomResource {
  /// The name of the configuration recorder. Defaults to `default`. Changing it recreates the resource.
  late final pulumi.Output<String> name;
  /// Recording group - see below.
  late final pulumi.Output<RecorderRecordingGroup> recordingGroup;
  /// Recording mode - see below.
  late final pulumi.Output<RecorderRecordingMode> recordingMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. See [AWS Docs](http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html) for more details.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [Recorder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Recorder]. {@macro pulumi_cfg_recorder_recorder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Recorder(
    String name, {
    RecorderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorder:Recorder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    recordingGroup = registerOutput<RecorderRecordingGroup>('recordingGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recordingMode = registerOutput<RecorderRecordingMode>('recordingMode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingMode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Gets an existing [Recorder] resource's state with the given [name] and [id].
  static Recorder get(
    String name,
    pulumi.Input<String> id, {
    RecorderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Recorder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Recorder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/recorder:Recorder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recordingGroup = registerOutput<RecorderRecordingGroup>('recordingGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recordingMode = registerOutput<RecorderRecordingMode>('recordingMode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingMode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Creates a typed reference to an existing [Recorder] resource.
  Recorder.reference(String urn)
    : super(
        'aws:cfg/recorder:Recorder',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    recordingGroup = registerOutput<RecorderRecordingGroup>('recordingGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recordingMode = registerOutput<RecorderRecordingMode>('recordingMode', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecorderRecordingMode.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }
}
