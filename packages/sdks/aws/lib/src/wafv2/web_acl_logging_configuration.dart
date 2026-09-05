import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_logging_configuration_args.dart';
import 'web_acl_logging_configuration_logging_filter.dart';
import 'web_acl_logging_configuration_redacted_field.dart';
import 'web_acl_logging_configuration_state.dart';

/// This resource creates a WAFv2 Web ACL Logging Configuration.
///
/// &gt; **WARNING:** When logging from a WAFv2 Web ACL to a CloudWatch Log Group, the WAFv2 service tries to create or update a generic Log Resource Policy named `AWSWAF-LOGS`. However, if there are a large number of Web ACLs or if the account frequently creates and deletes Web ACLs, this policy may exceed the maximum policy size. As a result, this resource type will fail to be created. More details about this issue can be found in this issue. To prevent this issue, you can manage a specific resource policy. Please refer to the example below for managing a CloudWatch Log Group with a managed CloudWatch Log Resource Policy.
///
/// ## Example Usage
///
/// ### With Redacted Fields
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclLoggingConfiguration("example", {
///     redactedFields: [{
///         singleHeader: {
///             name: "user-agent",
///         },
///     }],
///     logDestinationConfigs: [exampleAwsKinesisFirehoseDeliveryStream.arn],
///     resourceArn: exampleAwsWafv2WebAcl.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAclLoggingConfiguration("example",
///     redacted_fields=[{
///         "single_header": {
///             "name": "user-agent",
///         },
///     }],
///     log_destination_configs=[example_aws_kinesis_firehose_delivery_stream["arn"]],
///     resource_arn=example_aws_wafv2_web_acl["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.WebAclLoggingConfiguration("example", new()
///     {
///         RedactedFields = new[]
///         {
///             new Aws.WafV2.Inputs.WebAclLoggingConfigurationRedactedFieldArgs
///             {
///                 SingleHeader = new Aws.WafV2.Inputs.WebAclLoggingConfigurationRedactedFieldSingleHeaderArgs
///                 {
///                     Name = "user-agent",
///                 },
///             },
///         },
///         LogDestinationConfigs = new[]
///         {
///             exampleAwsKinesisFirehoseDeliveryStream.Arn,
///         },
///         ResourceArn = exampleAwsWafv2WebAcl.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewWebAclLoggingConfiguration(ctx, "example", &wafv2.WebAclLoggingConfigurationArgs{
/// 			RedactedFields: wafv2.WebAclLoggingConfigurationRedactedFieldArray{
/// 				&wafv2.WebAclLoggingConfigurationRedactedFieldArgs{
/// 					SingleHeader: &wafv2.WebAclLoggingConfigurationRedactedFieldSingleHeaderArgs{
/// 						Name: pulumi.String("user-agent"),
/// 					},
/// 				},
/// 			},
/// 			LogDestinationConfigs: pulumi.StringArray{
/// 				exampleAwsKinesisFirehoseDeliveryStream.Arn,
/// 			},
/// 			ResourceArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// resource "aws_wafv2_webaclloggingconfiguration" "example" {
///   redacted_fields {
///     single_header = {
///       name = "user-agent"
///     }
///   }
///   log_destination_configs = [exampleAwsKinesisFirehoseDeliveryStream.arn]
///   resource_arn            = exampleAwsWafv2WebAcl.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclLoggingConfiguration;
/// import com.pulumi.aws.wafv2.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationRedactedFieldArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationRedactedFieldSingleHeaderArgs;
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
///         var example = new WebAclLoggingConfiguration("example", WebAclLoggingConfigurationArgs.builder()
///             .redactedFields(WebAclLoggingConfigurationRedactedFieldArgs.builder()
///                 .singleHeader(WebAclLoggingConfigurationRedactedFieldSingleHeaderArgs.builder()
///                     .name("user-agent")
///                     .build())
///                 .build())
///             .logDestinationConfigs(exampleAwsKinesisFirehoseDeliveryStream.arn())
///             .resourceArn(exampleAwsWafv2WebAcl.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:WebAclLoggingConfiguration
///     properties:
///       redactedFields:
///         - singleHeader:
///             name: user-agent
///       logDestinationConfigs:
///         - ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///       resourceArn: ${exampleAwsWafv2WebAcl.arn}
/// ```
///
///
/// ### With Logging Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.WebAclLoggingConfiguration("example", {
///     loggingFilter: {
///         filters: [
///             {
///                 conditions: [
///                     {
///                         actionCondition: {
///                             action: "COUNT",
///                         },
///                     },
///                     {
///                         labelNameCondition: {
///                             labelName: "awswaf:111122223333:rulegroup:testRules:LabelNameZ",
///                         },
///                     },
///                 ],
///                 behavior: "DROP",
///                 requirement: "MEETS_ALL",
///             },
///             {
///                 conditions: [{
///                     actionCondition: {
///                         action: "ALLOW",
///                     },
///                 }],
///                 behavior: "KEEP",
///                 requirement: "MEETS_ANY",
///             },
///         ],
///         defaultBehavior: "KEEP",
///     },
///     logDestinationConfigs: [exampleAwsKinesisFirehoseDeliveryStream.arn],
///     resourceArn: exampleAwsWafv2WebAcl.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.WebAclLoggingConfiguration("example",
///     logging_filter={
///         "filters": [
///             {
///                 "conditions": [
///                     {
///                         "action_condition": {
///                             "action": "COUNT",
///                         },
///                     },
///                     {
///                         "label_name_condition": {
///                             "label_name": "awswaf:111122223333:rulegroup:testRules:LabelNameZ",
///                         },
///                     },
///                 ],
///                 "behavior": "DROP",
///                 "requirement": "MEETS_ALL",
///             },
///             {
///                 "conditions": [{
///                     "action_condition": {
///                         "action": "ALLOW",
///                     },
///                 }],
///                 "behavior": "KEEP",
///                 "requirement": "MEETS_ANY",
///             },
///         ],
///         "default_behavior": "KEEP",
///     },
///     log_destination_configs=[example_aws_kinesis_firehose_delivery_stream["arn"]],
///     resource_arn=example_aws_wafv2_web_acl["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.WebAclLoggingConfiguration("example", new()
///     {
///         LoggingFilter = new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterArgs
///         {
///             Filters = new[]
///             {
///                 new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterArgs
///                 {
///                     Conditions = new[]
///                     {
///                         new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs
///                         {
///                             ActionCondition = new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs
///                             {
///                                 Action = "COUNT",
///                             },
///                         },
///                         new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs
///                         {
///                             LabelNameCondition = new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameConditionArgs
///                             {
///                                 LabelName = "awswaf:111122223333:rulegroup:testRules:LabelNameZ",
///                             },
///                         },
///                     },
///                     Behavior = "DROP",
///                     Requirement = "MEETS_ALL",
///                 },
///                 new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterArgs
///                 {
///                     Conditions = new[]
///                     {
///                         new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs
///                         {
///                             ActionCondition = new Aws.WafV2.Inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs
///                             {
///                                 Action = "ALLOW",
///                             },
///                         },
///                     },
///                     Behavior = "KEEP",
///                     Requirement = "MEETS_ANY",
///                 },
///             },
///             DefaultBehavior = "KEEP",
///         },
///         LogDestinationConfigs = new[]
///         {
///             exampleAwsKinesisFirehoseDeliveryStream.Arn,
///         },
///         ResourceArn = exampleAwsWafv2WebAcl.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewWebAclLoggingConfiguration(ctx, "example", &wafv2.WebAclLoggingConfigurationArgs{
/// 			LoggingFilter: &wafv2.WebAclLoggingConfigurationLoggingFilterArgs{
/// 				Filters: wafv2.WebAclLoggingConfigurationLoggingFilterFilterArray{
/// 					&wafv2.WebAclLoggingConfigurationLoggingFilterFilterArgs{
/// 						Conditions: wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionArray{
/// 							&wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs{
/// 								ActionCondition: &wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs{
/// 									Action: pulumi.String("COUNT"),
/// 								},
/// 							},
/// 							&wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs{
/// 								LabelNameCondition: &wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameConditionArgs{
/// 									LabelName: pulumi.String("awswaf:111122223333:rulegroup:testRules:LabelNameZ"),
/// 								},
/// 							},
/// 						},
/// 						Behavior:    pulumi.String("DROP"),
/// 						Requirement: pulumi.String("MEETS_ALL"),
/// 					},
/// 					&wafv2.WebAclLoggingConfigurationLoggingFilterFilterArgs{
/// 						Conditions: wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionArray{
/// 							&wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs{
/// 								ActionCondition: &wafv2.WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs{
/// 									Action: pulumi.String("ALLOW"),
/// 								},
/// 							},
/// 						},
/// 						Behavior:    pulumi.String("KEEP"),
/// 						Requirement: pulumi.String("MEETS_ANY"),
/// 					},
/// 				},
/// 				DefaultBehavior: pulumi.String("KEEP"),
/// 			},
/// 			LogDestinationConfigs: pulumi.StringArray{
/// 				exampleAwsKinesisFirehoseDeliveryStream.Arn,
/// 			},
/// 			ResourceArn: pulumi.Any(exampleAwsWafv2WebAcl.Arn),
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
/// resource "aws_wafv2_webaclloggingconfiguration" "example" {
///   logging_filter = {
///     filters = [{
///       "conditions" = [{
///         "actionCondition" = {
///           "action" = "COUNT"
///         }
///         }, {
///         "labelNameCondition" = {
///           "labelName" = "awswaf:111122223333:rulegroup:testRules:LabelNameZ"
///         }
///       }]
///       "behavior"    = "DROP"
///       "requirement" = "MEETS_ALL"
///       }, {
///       "conditions" = [{
///         "actionCondition" = {
///           "action" = "ALLOW"
///         }
///       }]
///       "behavior"    = "KEEP"
///       "requirement" = "MEETS_ANY"
///     }]
///     default_behavior = "KEEP"
///   }
///   log_destination_configs = [exampleAwsKinesisFirehoseDeliveryStream.arn]
///   resource_arn            = exampleAwsWafv2WebAcl.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafv2.WebAclLoggingConfiguration;
/// import com.pulumi.aws.wafv2.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationLoggingFilterArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationLoggingFilterFilterArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs;
/// import com.pulumi.aws.wafv2.inputs.WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameConditionArgs;
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
///         var example = new WebAclLoggingConfiguration("example", WebAclLoggingConfigurationArgs.builder()
///             .loggingFilter(WebAclLoggingConfigurationLoggingFilterArgs.builder()
///                 .filters(
///                     WebAclLoggingConfigurationLoggingFilterFilterArgs.builder()
///                         .conditions(
///                             WebAclLoggingConfigurationLoggingFilterFilterConditionArgs.builder()
///                                 .actionCondition(WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs.builder()
///                                     .action("COUNT")
///                                     .build())
///                                 .build(),
///                             WebAclLoggingConfigurationLoggingFilterFilterConditionArgs.builder()
///                                 .labelNameCondition(WebAclLoggingConfigurationLoggingFilterFilterConditionLabelNameConditionArgs.builder()
///                                     .labelName("awswaf:111122223333:rulegroup:testRules:LabelNameZ")
///                                     .build())
///                                 .build())
///                         .behavior("DROP")
///                         .requirement("MEETS_ALL")
///                         .build(),
///                     WebAclLoggingConfigurationLoggingFilterFilterArgs.builder()
///                         .conditions(WebAclLoggingConfigurationLoggingFilterFilterConditionArgs.builder()
///                             .actionCondition(WebAclLoggingConfigurationLoggingFilterFilterConditionActionConditionArgs.builder()
///                                 .action("ALLOW")
///                                 .build())
///                             .build())
///                         .behavior("KEEP")
///                         .requirement("MEETS_ANY")
///                         .build())
///                 .defaultBehavior("KEEP")
///                 .build())
///             .logDestinationConfigs(exampleAwsKinesisFirehoseDeliveryStream.arn())
///             .resourceArn(exampleAwsWafv2WebAcl.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:WebAclLoggingConfiguration
///     properties:
///       loggingFilter:
///         filters:
///           - conditions:
///               - actionCondition:
///                   action: COUNT
///               - labelNameCondition:
///                   labelName: awswaf:111122223333:rulegroup:testRules:LabelNameZ
///             behavior: DROP
///             requirement: MEETS_ALL
///           - conditions:
///               - actionCondition:
///                   action: ALLOW
///             behavior: KEEP
///             requirement: MEETS_ANY
///         defaultBehavior: KEEP
///       logDestinationConfigs:
///         - ${exampleAwsKinesisFirehoseDeliveryStream.arn}
///       resourceArn: ${exampleAwsWafv2WebAcl.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 Web ACL Logging Configurations using the ARN of the WAFv2 Web ACL. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration example arn:aws:wafv2:us-west-2:123456789012:regional/webacl/test-logs/a1b2c3d4-5678-90ab-cdef
/// ```
class WebAclLoggingConfiguration extends pulumi.CustomResource {
  /// Configuration block that allows you to associate Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket ARNs with the web ACL. **Note:** data firehose, log group, or bucket name **must** be prefixed with `aws-waf-logs-`, e.g. `aws-waf-logs-example-firehose`, `aws-waf-logs-example-log-group`, or `aws-waf-logs-example-bucket`.
  late final pulumi.Output<List<String>> logDestinationConfigs;
  /// Configuration block that specifies which web requests are kept in the logs and which are dropped. It allows filtering based on the rule action and the web request labels applied by matching rules during web ACL evaluation. For more details, refer to the Logging Filter section below.
  late final pulumi.Output<WebAclLoggingConfigurationLoggingFilter?> loggingFilter;
  /// Configuration for parts of the request that you want to keep out of the logs. Up to 100 `redactedFields` blocks are supported. See Redacted Fields below for more details.
  late final pulumi.Output<List<WebAclLoggingConfigurationRedactedField>?> redactedFields;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the web ACL that you want to associate with `logDestinationConfigs`.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [WebAclLoggingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAclLoggingConfiguration]. {@macro pulumi_wafv2_web_acl_logging_configuration_web_acl_logging_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAclLoggingConfiguration(
    String name, {
    WebAclLoggingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    logDestinationConfigs = registerOutput<List<String>>('logDestinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingFilter = registerOutput<WebAclLoggingConfigurationLoggingFilter?>('loggingFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfigurationLoggingFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redactedFields = registerOutput<List<WebAclLoggingConfigurationRedactedField>?>('redactedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclLoggingConfigurationRedactedField>(guardedValue, (value) => WebAclLoggingConfigurationRedactedField.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [WebAclLoggingConfiguration] resource's state with the given [name] and [id].
  static WebAclLoggingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    WebAclLoggingConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WebAclLoggingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WebAclLoggingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logDestinationConfigs = registerOutput<List<String>>('logDestinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingFilter = registerOutput<WebAclLoggingConfigurationLoggingFilter?>('loggingFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfigurationLoggingFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redactedFields = registerOutput<List<WebAclLoggingConfigurationRedactedField>?>('redactedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclLoggingConfigurationRedactedField>(guardedValue, (value) => WebAclLoggingConfigurationRedactedField.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [WebAclLoggingConfiguration] resource.
  WebAclLoggingConfiguration.reference(String urn)
    : super(
        'aws:wafv2/webAclLoggingConfiguration:WebAclLoggingConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    logDestinationConfigs = registerOutput<List<String>>('logDestinationConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    loggingFilter = registerOutput<WebAclLoggingConfigurationLoggingFilter?>('loggingFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WebAclLoggingConfigurationLoggingFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redactedFields = registerOutput<List<WebAclLoggingConfigurationRedactedField>?>('redactedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebAclLoggingConfigurationRedactedField>(guardedValue, (value) => WebAclLoggingConfigurationRedactedField.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
