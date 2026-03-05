import 'package:pulumi/pulumi.dart' as pulumi;
import 'remediation_configuration_args.dart';
import 'remediation_configuration_execution_controls.dart';
import 'remediation_configuration_state.dart';

/// Provides an AWS Config Remediation Configuration.
///
/// &gt; **Note:** Config Remediation Configuration requires an existing Config Rule to be present.
///
/// ## Example Usage
///
/// AWS managed rules can be used by setting the source owner to `AWS` and the source identifier to the name of the managed rule. More information about AWS managed rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = new aws.cfg.Rule("this", {
///     name: "example",
///     source: {
///         owner: "AWS",
///         sourceIdentifier: "S3_BUCKET_VERSIONING_ENABLED",
///     },
/// });
/// const thisRemediationConfiguration = new aws.cfg.RemediationConfiguration("this", {
///     configRuleName: _this.name,
///     resourceType: "AWS::S3::Bucket",
///     targetType: "SSM_DOCUMENT",
///     targetId: "AWS-EnableS3BucketEncryption",
///     targetVersion: "1",
///     parameters: [
///         {
///             name: "AutomationAssumeRole",
///             staticValue: "arn:aws:iam::875924563244:role/security_config",
///         },
///         {
///             name: "BucketName",
///             resourceValue: "RESOURCE_ID",
///         },
///         {
///             name: "SSEAlgorithm",
///             staticValue: "AES256",
///         },
///     ],
///     automatic: true,
///     maximumAutomaticAttempts: 10,
///     retryAttemptSeconds: 600,
///     executionControls: {
///         ssmControls: {
///             concurrentExecutionRatePercentage: 25,
///             errorPercentage: 20,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.cfg.Rule("this",
///     name="example",
///     source={
///         "owner": "AWS",
///         "source_identifier": "S3_BUCKET_VERSIONING_ENABLED",
///     })
/// this_remediation_configuration = aws.cfg.RemediationConfiguration("this",
///     config_rule_name=this.name,
///     resource_type="AWS::S3::Bucket",
///     target_type="SSM_DOCUMENT",
///     target_id="AWS-EnableS3BucketEncryption",
///     target_version="1",
///     parameters=[
///         {
///             "name": "AutomationAssumeRole",
///             "static_value": "arn:aws:iam::875924563244:role/security_config",
///         },
///         {
///             "name": "BucketName",
///             "resource_value": "RESOURCE_ID",
///         },
///         {
///             "name": "SSEAlgorithm",
///             "static_value": "AES256",
///         },
///     ],
///     automatic=True,
///     maximum_automatic_attempts=10,
///     retry_attempt_seconds=600,
///     execution_controls={
///         "ssm_controls": {
///             "concurrent_execution_rate_percentage": 25,
///             "error_percentage": 20,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = new Aws.Cfg.Rule("this", new()
///     {
///         Name = "example",
///         Source = new Aws.Cfg.Inputs.RuleSourceArgs
///         {
///             Owner = "AWS",
///             SourceIdentifier = "S3_BUCKET_VERSIONING_ENABLED",
///         },
///     });
///
///     var thisRemediationConfiguration = new Aws.Cfg.RemediationConfiguration("this", new()
///     {
///         ConfigRuleName = @this.Name,
///         ResourceType = "AWS::S3::Bucket",
///         TargetType = "SSM_DOCUMENT",
///         TargetId = "AWS-EnableS3BucketEncryption",
///         TargetVersion = "1",
///         Parameters = new[]
///         {
///             new Aws.Cfg.Inputs.RemediationConfigurationParameterArgs
///             {
///                 Name = "AutomationAssumeRole",
///                 StaticValue = "arn:aws:iam::875924563244:role/security_config",
///             },
///             new Aws.Cfg.Inputs.RemediationConfigurationParameterArgs
///             {
///                 Name = "BucketName",
///                 ResourceValue = "RESOURCE_ID",
///             },
///             new Aws.Cfg.Inputs.RemediationConfigurationParameterArgs
///             {
///                 Name = "SSEAlgorithm",
///                 StaticValue = "AES256",
///             },
///         },
///         Automatic = true,
///         MaximumAutomaticAttempts = 10,
///         RetryAttemptSeconds = 600,
///         ExecutionControls = new Aws.Cfg.Inputs.RemediationConfigurationExecutionControlsArgs
///         {
///             SsmControls = new Aws.Cfg.Inputs.RemediationConfigurationExecutionControlsSsmControlsArgs
///             {
///                 ConcurrentExecutionRatePercentage = 25,
///                 ErrorPercentage = 20,
///             },
///         },
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
/// 		this, err := cfg.NewRule(ctx, "this", &cfg.RuleArgs{
/// 			Name: pulumi.String("example"),
/// 			Source: &cfg.RuleSourceArgs{
/// 				Owner:            pulumi.String("AWS"),
/// 				SourceIdentifier: pulumi.String("S3_BUCKET_VERSIONING_ENABLED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cfg.NewRemediationConfiguration(ctx, "this", &cfg.RemediationConfigurationArgs{
/// 			ConfigRuleName: this.Name,
/// 			ResourceType:   pulumi.String("AWS::S3::Bucket"),
/// 			TargetType:     pulumi.String("SSM_DOCUMENT"),
/// 			TargetId:       pulumi.String("AWS-EnableS3BucketEncryption"),
/// 			TargetVersion:  pulumi.String("1"),
/// 			Parameters: cfg.RemediationConfigurationParameterArray{
/// 				&cfg.RemediationConfigurationParameterArgs{
/// 					Name:        pulumi.String("AutomationAssumeRole"),
/// 					StaticValue: pulumi.String("arn:aws:iam::875924563244:role/security_config"),
/// 				},
/// 				&cfg.RemediationConfigurationParameterArgs{
/// 					Name:          pulumi.String("BucketName"),
/// 					ResourceValue: pulumi.String("RESOURCE_ID"),
/// 				},
/// 				&cfg.RemediationConfigurationParameterArgs{
/// 					Name:        pulumi.String("SSEAlgorithm"),
/// 					StaticValue: pulumi.String("AES256"),
/// 				},
/// 			},
/// 			Automatic:                pulumi.Bool(true),
/// 			MaximumAutomaticAttempts: pulumi.Int(10),
/// 			RetryAttemptSeconds:      pulumi.Int(600),
/// 			ExecutionControls: &cfg.RemediationConfigurationExecutionControlsArgs{
/// 				SsmControls: &cfg.RemediationConfigurationExecutionControlsSsmControlsArgs{
/// 					ConcurrentExecutionRatePercentage: pulumi.Int(25),
/// 					ErrorPercentage:                   pulumi.Int(20),
/// 				},
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
/// import com.pulumi.aws.cfg.Rule;
/// import com.pulumi.aws.cfg.RuleArgs;
/// import com.pulumi.aws.cfg.inputs.RuleSourceArgs;
/// import com.pulumi.aws.cfg.RemediationConfiguration;
/// import com.pulumi.aws.cfg.RemediationConfigurationArgs;
/// import com.pulumi.aws.cfg.inputs.RemediationConfigurationParameterArgs;
/// import com.pulumi.aws.cfg.inputs.RemediationConfigurationExecutionControlsArgs;
/// import com.pulumi.aws.cfg.inputs.RemediationConfigurationExecutionControlsSsmControlsArgs;
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
///         var this_ = new Rule("this", RuleArgs.builder()
///             .name("example")
///             .source(RuleSourceArgs.builder()
///                 .owner("AWS")
///                 .sourceIdentifier("S3_BUCKET_VERSIONING_ENABLED")
///                 .build())
///             .build());
///
///         var thisRemediationConfiguration = new RemediationConfiguration("thisRemediationConfiguration", RemediationConfigurationArgs.builder()
///             .configRuleName(this_.name())
///             .resourceType("AWS::S3::Bucket")
///             .targetType("SSM_DOCUMENT")
///             .targetId("AWS-EnableS3BucketEncryption")
///             .targetVersion("1")
///             .parameters(
///                 RemediationConfigurationParameterArgs.builder()
///                     .name("AutomationAssumeRole")
///                     .staticValue("arn:aws:iam::875924563244:role/security_config")
///                     .build(),
///                 RemediationConfigurationParameterArgs.builder()
///                     .name("BucketName")
///                     .resourceValue("RESOURCE_ID")
///                     .build(),
///                 RemediationConfigurationParameterArgs.builder()
///                     .name("SSEAlgorithm")
///                     .staticValue("AES256")
///                     .build())
///             .automatic(true)
///             .maximumAutomaticAttempts(10)
///             .retryAttemptSeconds(600)
///             .executionControls(RemediationConfigurationExecutionControlsArgs.builder()
///                 .ssmControls(RemediationConfigurationExecutionControlsSsmControlsArgs.builder()
///                     .concurrentExecutionRatePercentage(25)
///                     .errorPercentage(20)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   this:
///     type: aws:cfg:Rule
///     properties:
///       name: example
///       source:
///         owner: AWS
///         sourceIdentifier: S3_BUCKET_VERSIONING_ENABLED
///   thisRemediationConfiguration:
///     type: aws:cfg:RemediationConfiguration
///     name: this
///     properties:
///       configRuleName: ${this.name}
///       resourceType: AWS::S3::Bucket
///       targetType: SSM_DOCUMENT
///       targetId: AWS-EnableS3BucketEncryption
///       targetVersion: '1'
///       parameters:
///         - name: AutomationAssumeRole
///           staticValue: arn:aws:iam::875924563244:role/security_config
///         - name: BucketName
///           resourceValue: RESOURCE_ID
///         - name: SSEAlgorithm
///           staticValue: AES256
///       automatic: true
///       maximumAutomaticAttempts: 10
///       retryAttemptSeconds: 600
///       executionControls:
///         ssmControls:
///           concurrentExecutionRatePercentage: 25
///           errorPercentage: 20
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Remediation Configurations using the name config_rule_name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/remediationConfiguration:RemediationConfiguration this example
/// ```
class RemediationConfiguration extends pulumi.CustomResource {
  /// ARN of the Config Remediation Configuration.
  late final pulumi.Output<String> arn;

  /// Remediation is triggered automatically if `true`.
  late final pulumi.Output<bool?> automatic;

  /// Name of the AWS Config rule.
  late final pulumi.Output<String> configRuleName;

  /// Configuration block for execution controls. See below.
  late final pulumi.Output<RemediationConfigurationExecutionControls?>
  executionControls;

  /// Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  late final pulumi.Output<int?> maximumAutomaticAttempts;

  /// Can be specified multiple times for each parameter. Each parameter block supports arguments below.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Type of resource.
  late final pulumi.Output<String?> resourceType;

  /// Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  late final pulumi.Output<int?> retryAttemptSeconds;

  /// Target ID is the name of the public document.
  late final pulumi.Output<String> targetId;

  /// Type of the target. Target executes remediation. For example, SSM document.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetType;

  /// Version of the target. For example, version of the SSM document
  late final pulumi.Output<String?> targetVersion;

  /// Creates a new [RemediationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RemediationConfiguration]. {@macro pulumi_cfg_remediation_configuration_remediation_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RemediationConfiguration(
    String name, {
    RemediationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/remediationConfiguration:RemediationConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    automatic = registerOutput<bool?>('automatic');
    configRuleName = registerOutput<String>('configRuleName');
    executionControls =
        registerOutput<RemediationConfigurationExecutionControls?>(
          'executionControls',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RemediationConfigurationExecutionControls.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    maximumAutomaticAttempts = registerOutput<int?>('maximumAutomaticAttempts');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String?>('resourceType');
    retryAttemptSeconds = registerOutput<int?>('retryAttemptSeconds');
    targetId = registerOutput<String>('targetId');
    targetType = registerOutput<String>('targetType');
    targetVersion = registerOutput<String?>('targetVersion');
  }

  /// Gets an existing [RemediationConfiguration] resource's state with the given [name] and [id].
  static RemediationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    RemediationConfigurationState? state,
  }) {
    return RemediationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RemediationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cfg/remediationConfiguration:RemediationConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    automatic = registerOutput<bool?>('automatic');
    configRuleName = registerOutput<String>('configRuleName');
    executionControls =
        registerOutput<RemediationConfigurationExecutionControls?>(
          'executionControls',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RemediationConfigurationExecutionControls.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    maximumAutomaticAttempts = registerOutput<int?>('maximumAutomaticAttempts');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    region = registerOutput<String>('region');
    resourceType = registerOutput<String?>('resourceType');
    retryAttemptSeconds = registerOutput<int?>('retryAttemptSeconds');
    targetId = registerOutput<String>('targetId');
    targetType = registerOutput<String>('targetType');
    targetVersion = registerOutput<String?>('targetVersion');
  }
}
