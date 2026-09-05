import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_args.dart';
import 'rule_set_rule.dart';
import 'rule_set_state.dart';

/// Manages an AWS SES Mail Manager Rule Set.
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
/// const example = new aws.mailmanager.RuleSet("example", {
///     rules: [{
///         actions: [{
///             addHeader: {
///                 headerName: "X-Example",
///                 headerValue: "example",
///             },
///         }],
///         name: "add-header",
///     }],
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mailmanager.RuleSet("example",
///     rules=[{
///         "actions": [{
///             "add_header": {
///                 "header_name": "X-Example",
///                 "header_value": "example",
///             },
///         }],
///         "name": "add-header",
///     }],
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MailManager.RuleSet("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.MailManager.Inputs.RuleSetRuleArgs
///             {
///                 Actions = new[]
///                 {
///                     new Aws.MailManager.Inputs.RuleSetRuleActionArgs
///                     {
///                         AddHeader = new Aws.MailManager.Inputs.RuleSetRuleActionAddHeaderArgs
///                         {
///                             HeaderName = "X-Example",
///                             HeaderValue = "example",
///                         },
///                     },
///                 },
///                 Name = "add-header",
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mailmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mailmanager.NewRuleSet(ctx, "example", &mailmanager.RuleSetArgs{
/// 			Rules: mailmanager.RuleSetRuleArray{
/// 				&mailmanager.RuleSetRuleArgs{
/// 					Actions: mailmanager.RuleSetRuleActionArray{
/// 						&mailmanager.RuleSetRuleActionArgs{
/// 							AddHeader: &mailmanager.RuleSetRuleActionAddHeaderArgs{
/// 								HeaderName:  pulumi.String("X-Example"),
/// 								HeaderValue: pulumi.String("example"),
/// 							},
/// 						},
/// 					},
/// 					Name: pulumi.String("add-header"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
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
/// resource "aws_mailmanager_ruleset" "example" {
///   rules {
///     actions {
///       add_header = {
///         header_name  = "X-Example"
///         header_value = "example"
///       }
///     }
///     name = "add-header"
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mailmanager.RuleSet;
/// import com.pulumi.aws.mailmanager.RuleSetArgs;
/// import com.pulumi.aws.mailmanager.inputs.RuleSetRuleArgs;
/// import com.pulumi.aws.mailmanager.inputs.RuleSetRuleActionArgs;
/// import com.pulumi.aws.mailmanager.inputs.RuleSetRuleActionAddHeaderArgs;
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
///         var example = new RuleSet("example", RuleSetArgs.builder()
///             .rules(RuleSetRuleArgs.builder()
///                 .actions(RuleSetRuleActionArgs.builder()
///                     .addHeader(RuleSetRuleActionAddHeaderArgs.builder()
///                         .headerName("X-Example")
///                         .headerValue("example")
///                         .build())
///                     .build())
///                 .name("add-header")
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mailmanager:RuleSet
///     properties:
///       rules:
///         - actions:
///             - addHeader:
///                 headerName: X-Example
///                 headerValue: example
///           name: add-header
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Identifier of the rule set.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an SES Mail Manager Rule Set using its identifier. For example:
///
/// ```sh
/// $ pulumi import aws:mailmanager/ruleSet:RuleSet example rule-set-id
/// ```
class RuleSet extends pulumi.CustomResource {
  /// ARN of the rule set.
  late final pulumi.Output<String> arn;
  /// Date and time when the rule set was created.
  late final pulumi.Output<String> createdDate;
  /// Date and time when the rule set was last modified.
  late final pulumi.Output<String> lastModificationDate;
  /// Name of the rule set.
  late final pulumi.Output<String> name;
  /// Region where this resource is managed.
  late final pulumi.Output<String> region;
  /// One or more rules that define filtering and action logic. Up to 40 rules are supported. See `rule` Block.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<RuleSetRule>?> rules;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleSet]. {@macro pulumi_mailmanager_rule_set_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleSet(
    String name, {
    RuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/ruleSet:RuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastModificationDate = registerOutput<String>('lastModificationDate');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleSetRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleSetRule>(guardedValue, (value) => RuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [RuleSet] resource's state with the given [name] and [id].
  static RuleSet get(
    String name,
    pulumi.Input<String> id, {
    RuleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RuleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RuleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mailmanager/ruleSet:RuleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastModificationDate = registerOutput<String>('lastModificationDate');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleSetRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleSetRule>(guardedValue, (value) => RuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [RuleSet] resource.
  RuleSet.reference(String urn)
    : super(
        'aws:mailmanager/ruleSet:RuleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    lastModificationDate = registerOutput<String>('lastModificationDate');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RuleSetRule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RuleSetRule>(guardedValue, (value) => RuleSetRule.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
