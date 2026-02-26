import 'package:pulumi/pulumi.dart';
import '../web_acl_default_action/web_acl_default_action2.dart';
import '../web_acl_logging_configuration/web_acl_logging_configuration2.dart';
import '../web_acl_rule/web_acl_rule2.dart';
import 'web_acl_args2.dart';

/// Provides a WAF Regional Web ACL Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// ### Regular Rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.wafregional.IpSet("ipset", {
/// name: "tfIPSet",
/// ipSetDescriptors: [{
/// type: "IPV4",
/// value: "192.0.7.0/24",
/// }],
/// });
/// const wafrule = new aws.wafregional.Rule("wafrule", {
/// name: "tfWAFRule",
/// metricName: "tfWAFRule",
/// predicates: [{
/// dataId: ipset.id,
/// negated: false,
/// type: "IPMatch",
/// }],
/// });
/// const wafacl = new aws.wafregional.WebAcl("wafacl", {
/// name: "tfWebACL",
/// metricName: "tfWebACL",
/// defaultAction: {
/// type: "ALLOW",
/// },
/// rules: [{
/// action: {
/// type: "BLOCK",
/// },
/// priority: 1,
/// ruleId: wafrule.id,
/// type: "REGULAR",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.wafregional.IpSet("ipset",
/// name="tfIPSet",
/// ip_set_descriptors=[{
/// "type": "IPV4",
/// "value": "192.0.7.0/24",
/// }])
/// wafrule = aws.wafregional.Rule("wafrule",
/// name="tfWAFRule",
/// metric_name="tfWAFRule",
/// predicates=[{
/// "data_id": ipset.id,
/// "negated": False,
/// "type": "IPMatch",
/// }])
/// wafacl = aws.wafregional.WebAcl("wafacl",
/// name="tfWebACL",
/// metric_name="tfWebACL",
/// default_action={
/// "type": "ALLOW",
/// },
/// rules=[{
/// "action": {
/// "type": "BLOCK",
/// },
/// "priority": 1,
/// "rule_id": wafrule.id,
/// "type": "REGULAR",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var ipset = new Aws.WafRegional.IpSet("ipset", new()
/// {
/// Name = "tfIPSet",
/// IpSetDescriptors = new[]
/// {
/// new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
/// {
/// Type = "IPV4",
/// Value = "192.0.7.0/24",
/// },
/// },
/// });
///
/// var wafrule = new Aws.WafRegional.Rule("wafrule", new()
/// {
/// Name = "tfWAFRule",
/// MetricName = "tfWAFRule",
/// Predicates = new[]
/// {
/// new Aws.WafRegional.Inputs.RulePredicateArgs
/// {
/// DataId = ipset.Id,
/// Negated = false,
/// Type = "IPMatch",
/// },
/// },
/// });
///
/// var wafacl = new Aws.WafRegional.WebAcl("wafacl", new()
/// {
/// Name = "tfWebACL",
/// MetricName = "tfWebACL",
/// DefaultAction = new Aws.WafRegional.Inputs.WebAclDefaultActionArgs
/// {
/// Type = "ALLOW",
/// },
/// Rules = new[]
/// {
/// new Aws.WafRegional.Inputs.WebAclRuleArgs
/// {
/// Action = new Aws.WafRegional.Inputs.WebAclRuleActionArgs
/// {
/// Type = "BLOCK",
/// },
/// Priority = 1,
/// RuleId = wafrule.Id,
/// Type = "REGULAR",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// ipset, err := wafregional.NewIpSet(ctx, "ipset", &wafregional.IpSetArgs{
/// Name: pulumi.String("tfIPSet"),
/// IpSetDescriptors: wafregional.IpSetIpSetDescriptorArray{
/// &wafregional.IpSetIpSetDescriptorArgs{
/// Type:  pulumi.String("IPV4"),
/// Value: pulumi.String("192.0.7.0/24"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// wafrule, err := wafregional.NewRule(ctx, "wafrule", &wafregional.RuleArgs{
/// Name:       pulumi.String("tfWAFRule"),
/// MetricName: pulumi.String("tfWAFRule"),
/// Predicates: wafregional.RulePredicateArray{
/// &wafregional.RulePredicateArgs{
/// DataId:  ipset.ID(),
/// Negated: pulumi.Bool(false),
/// Type:    pulumi.String("IPMatch"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = wafregional.NewWebAcl(ctx, "wafacl", &wafregional.WebAclArgs{
/// Name:       pulumi.String("tfWebACL"),
/// MetricName: pulumi.String("tfWebACL"),
/// DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// Type: pulumi.String("ALLOW"),
/// },
/// Rules: wafregional.WebAclRuleArray{
/// &wafregional.WebAclRuleArgs{
/// Action: &wafregional.WebAclRuleActionArgs{
/// Type: pulumi.String("BLOCK"),
/// },
/// Priority: pulumi.Int(1),
/// RuleId:   wafrule.ID(),
/// Type:     pulumi.String("REGULAR"),
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
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
/// import com.pulumi.aws.wafregional.Rule;
/// import com.pulumi.aws.wafregional.RuleArgs;
/// import com.pulumi.aws.wafregional.inputs.RulePredicateArgs;
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleActionArgs;
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
/// var ipset = new IpSet("ipset", IpSetArgs.builder()
/// .name("tfIPSet")
/// .ipSetDescriptors(IpSetIpSetDescriptorArgs.builder()
/// .type("IPV4")
/// .value("192.0.7.0/24")
/// .build())
/// .build());
///
/// var wafrule = new Rule("wafrule", RuleArgs.builder()
/// .name("tfWAFRule")
/// .metricName("tfWAFRule")
/// .predicates(RulePredicateArgs.builder()
/// .dataId(ipset.id())
/// .negated(false)
/// .type("IPMatch")
/// .build())
/// .build());
///
/// var wafacl = new WebAcl("wafacl", WebAclArgs.builder()
/// .name("tfWebACL")
/// .metricName("tfWebACL")
/// .defaultAction(WebAclDefaultActionArgs.builder()
/// .type("ALLOW")
/// .build())
/// .rules(WebAclRuleArgs.builder()
/// .action(WebAclRuleActionArgs.builder()
/// .type("BLOCK")
/// .build())
/// .priority(1)
/// .ruleId(wafrule.id())
/// .type("REGULAR")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ipset:
/// type: aws:wafregional:IpSet
/// properties:
/// name: tfIPSet
/// ipSetDescriptors:
/// - type: IPV4
/// value: 192.0.7.0/24
/// wafrule:
/// type: aws:wafregional:Rule
/// properties:
/// name: tfWAFRule
/// metricName: tfWAFRule
/// predicates:
/// - dataId: ${ipset.id}
/// negated: false
/// type: IPMatch
/// wafacl:
/// type: aws:wafregional:WebAcl
/// properties:
/// name: tfWebACL
/// metricName: tfWebACL
/// defaultAction:
/// type: ALLOW
/// rules:
/// - action:
/// type: BLOCK
/// priority: 1
/// ruleId: ${wafrule.id}
/// type: REGULAR
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Group Rule
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.WebAcl("example", {
/// name: "example",
/// metricName: "example",
/// defaultAction: {
/// type: "ALLOW",
/// },
/// rules: [{
/// priority: 1,
/// ruleId: exampleAwsWafregionalRuleGroup.id,
/// type: "GROUP",
/// overrideAction: {
/// type: "NONE",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.WebAcl("example",
/// name="example",
/// metric_name="example",
/// default_action={
/// "type": "ALLOW",
/// },
/// rules=[{
/// "priority": 1,
/// "rule_id": example_aws_wafregional_rule_group["id"],
/// "type": "GROUP",
/// "override_action": {
/// "type": "NONE",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.WafRegional.WebAcl("example", new()
/// {
/// Name = "example",
/// MetricName = "example",
/// DefaultAction = new Aws.WafRegional.Inputs.WebAclDefaultActionArgs
/// {
/// Type = "ALLOW",
/// },
/// Rules = new[]
/// {
/// new Aws.WafRegional.Inputs.WebAclRuleArgs
/// {
/// Priority = 1,
/// RuleId = exampleAwsWafregionalRuleGroup.Id,
/// Type = "GROUP",
/// OverrideAction = new Aws.WafRegional.Inputs.WebAclRuleOverrideActionArgs
/// {
/// Type = "NONE",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafregional.NewWebAcl(ctx, "example", &wafregional.WebAclArgs{
/// Name:       pulumi.String("example"),
/// MetricName: pulumi.String("example"),
/// DefaultAction: &wafregional.WebAclDefaultActionArgs{
/// Type: pulumi.String("ALLOW"),
/// },
/// Rules: wafregional.WebAclRuleArray{
/// &wafregional.WebAclRuleArgs{
/// Priority: pulumi.Int(1),
/// RuleId:   pulumi.Any(exampleAwsWafregionalRuleGroup.Id),
/// Type:     pulumi.String("GROUP"),
/// OverrideAction: &wafregional.WebAclRuleOverrideActionArgs{
/// Type: pulumi.String("NONE"),
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
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclDefaultActionArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclRuleOverrideActionArgs;
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
/// var example = new WebAcl("example", WebAclArgs.builder()
/// .name("example")
/// .metricName("example")
/// .defaultAction(WebAclDefaultActionArgs.builder()
/// .type("ALLOW")
/// .build())
/// .rules(WebAclRuleArgs.builder()
/// .priority(1)
/// .ruleId(exampleAwsWafregionalRuleGroup.id())
/// .type("GROUP")
/// .overrideAction(WebAclRuleOverrideActionArgs.builder()
/// .type("NONE")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:wafregional:WebAcl
/// properties:
/// name: example
/// metricName: example
/// defaultAction:
/// type: ALLOW
/// rules:
/// - priority: 1
/// ruleId: ${exampleAwsWafregionalRuleGroup.id}
/// type: GROUP
/// overrideAction:
/// type: NONE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Logging
///
/// > *NOTE:* The Kinesis Firehose Delivery Stream name must begin with `aws-waf-logs-`. See the [AWS WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/logging.html) for more information about enabling WAF logging.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafregional.WebAcl("example", {loggingConfiguration: {
/// logDestination: exampleAwsKinesisFirehoseDeliveryStream.arn,
/// redactedFields: {
/// fieldToMatches: [
/// {
/// type: "URI",
/// },
/// {
/// data: "referer",
/// type: "HEADER",
/// },
/// ],
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafregional.WebAcl("example", logging_configuration={
/// "log_destination": example_aws_kinesis_firehose_delivery_stream["arn"],
/// "redacted_fields": {
/// "field_to_matches": [
/// {
/// "type": "URI",
/// },
/// {
/// "data": "referer",
/// "type": "HEADER",
/// },
/// ],
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
/// var example = new Aws.WafRegional.WebAcl("example", new()
/// {
/// LoggingConfiguration = new Aws.WafRegional.Inputs.WebAclLoggingConfigurationArgs
/// {
/// LogDestination = exampleAwsKinesisFirehoseDeliveryStream.Arn,
/// RedactedFields = new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsArgs
/// {
/// FieldToMatches = new[]
/// {
/// new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
/// {
/// Type = "URI",
/// },
/// new Aws.WafRegional.Inputs.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs
/// {
/// Data = "referer",
/// Type = "HEADER",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafregional.NewWebAcl(ctx, "example", &wafregional.WebAclArgs{
/// LoggingConfiguration: &wafregional.WebAclLoggingConfigurationArgs{
/// LogDestination: pulumi.Any(exampleAwsKinesisFirehoseDeliveryStream.Arn),
/// RedactedFields: &wafregional.WebAclLoggingConfigurationRedactedFieldsArgs{
/// FieldToMatches: wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArray{
/// &wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
/// Type: pulumi.String("URI"),
/// },
/// &wafregional.WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs{
/// Data: pulumi.String("referer"),
/// Type: pulumi.String("HEADER"),
/// },
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
/// import com.pulumi.aws.wafregional.WebAcl;
/// import com.pulumi.aws.wafregional.WebAclArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclLoggingConfigurationArgs;
/// import com.pulumi.aws.wafregional.inputs.WebAclLoggingConfigurationRedactedFieldsArgs;
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
/// var example = new WebAcl("example", WebAclArgs.builder()
/// .loggingConfiguration(WebAclLoggingConfigurationArgs.builder()
/// .logDestination(exampleAwsKinesisFirehoseDeliveryStream.arn())
/// .redactedFields(WebAclLoggingConfigurationRedactedFieldsArgs.builder()
/// .fieldToMatches(
/// WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs.builder()
/// .type("URI")
/// .build(),
/// WebAclLoggingConfigurationRedactedFieldsFieldToMatchArgs.builder()
/// .data("referer")
/// .type("HEADER")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:wafregional:WebAcl
/// properties:
/// loggingConfiguration:
/// logDestination: ${exampleAwsKinesisFirehoseDeliveryStream.arn}
/// redactedFields:
/// fieldToMatches:
/// - type: URI
/// - data: referer
/// type: HEADER
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Web ACL using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/webAcl:WebAcl wafacl a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class WebAcl2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the WAF Regional WebACL.
  late final Output<String> arn;

  /// The action that you want AWS WAF Regional to take when a request doesn't match the criteria in any of the rules that are associated with the web ACL.
  late final Output<WebAclDefaultAction2> defaultAction;

  /// Configuration block to enable WAF logging. Detailed below.
  late final Output<WebAclLoggingConfiguration2?> loggingConfiguration;

  /// The name or description for the Amazon CloudWatch metric of this web ACL.
  late final Output<String> metricName;

  /// The name or description of the web ACL.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of configuration blocks containing rules for the web ACL. Detailed below.
  late final Output<List<WebAclRule2>?> rules;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  WebAcl2(
    String name, {
    WebAclArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/webAcl:WebAcl',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultAction = registerOutput<WebAclDefaultAction2>('defaultAction');
    this.loggingConfiguration =
        registerOutput<WebAclLoggingConfiguration2?>('loggingConfiguration');
    this.metricName = registerOutput<String>('metricName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<WebAclRule2>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
