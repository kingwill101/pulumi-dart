import 'package:pulumi/pulumi.dart';
import '../rule_group_encryption_configuration/rule_group_encryption_configuration.dart';
import '../rule_group_rule_group/rule_group_rule_group.dart';
import 'rule_group_args.dart';

/// Provides an AWS Network Firewall Rule Group Resource
///
/// ## Example Usage
///
/// ### Stateful Inspection for denying access to a domain
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 100,
/// name: "example",
/// type: "STATEFUL",
/// ruleGroup: {
/// rulesSource: {
/// rulesSourceList: {
/// generatedRulesType: "DENYLIST",
/// targetTypes: ["HTTP_HOST"],
/// targets: ["test.example.com"],
/// },
/// },
/// },
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=100,
/// name="example",
/// type="STATEFUL",
/// rule_group={
/// "rules_source": {
/// "rules_source_list": {
/// "generated_rules_type": "DENYLIST",
/// "target_types": ["HTTP_HOST"],
/// "targets": ["test.example.com"],
/// },
/// },
/// },
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
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
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 100,
/// Name = "example",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// RulesSourceList = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs
/// {
/// GeneratedRulesType = "DENYLIST",
/// TargetTypes = new[]
/// {
/// "HTTP_HOST",
/// },
/// Targets = new[]
/// {
/// "test.example.com",
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(100),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("STATEFUL"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// RulesSourceList: &networkfirewall.RuleGroupRuleGroupRulesSourceRulesSourceListArgs{
/// GeneratedRulesType: pulumi.String("DENYLIST"),
/// TargetTypes: pulumi.StringArray{
/// pulumi.String("HTTP_HOST"),
/// },
/// Targets: pulumi.StringArray{
/// pulumi.String("test.example.com"),
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .capacity(100)
/// .name("example")
/// .type("STATEFUL")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .rulesSourceList(RuleGroupRuleGroupRulesSourceRulesSourceListArgs.builder()
/// .generatedRulesType("DENYLIST")
/// .targetTypes("HTTP_HOST")
/// .targets("test.example.com")
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// capacity: 100
/// name: example
/// type: STATEFUL
/// ruleGroup:
/// rulesSource:
/// rulesSourceList:
/// generatedRulesType: DENYLIST
/// targetTypes:
/// - HTTP_HOST
/// targets:
/// - test.example.com
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Stateful Inspection for permitting packets from a source IP address
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ips = [
/// "1.1.1.1/32",
/// "1.0.0.1/32",
/// ];
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 50,
/// description: "Permits http traffic from source",
/// name: "example",
/// type: "STATEFUL",
/// ruleGroup: {
/// rulesSource: {
/// statefulRules: ips.map((v, k) => ({key: k, value: v})).map(entry => ({
/// action: "PASS",
/// header: {
/// destination: "ANY",
/// destinationPort: "ANY",
/// protocol: "HTTP",
/// direction: "ANY",
/// sourcePort: "ANY",
/// source: entry.value,
/// },
/// ruleOptions: [{
/// keyword: "sid",
/// settings: ["1"],
/// }],
/// })),
/// },
/// },
/// tags: {
/// Name: "permit HTTP from source",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ips = [
/// "1.1.1.1/32",
/// "1.0.0.1/32",
/// ]
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=50,
/// description="Permits http traffic from source",
/// name="example",
/// type="STATEFUL",
/// rule_group={
/// "rules_source": {
/// "stateful_rules": [{
/// "action": "PASS",
/// "header": {
/// "destination": "ANY",
/// "destination_port": "ANY",
/// "protocol": "HTTP",
/// "direction": "ANY",
/// "source_port": "ANY",
/// "source": entry["value"],
/// },
/// "rule_options": [{
/// "keyword": "sid",
/// "settings": ["1"],
/// }],
/// } for entry in [{"key": k, "value": v} for k, v in ips]],
/// },
/// },
/// tags={
/// "Name": "permit HTTP from source",
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
/// var ips = new[]
/// {
/// "1.1.1.1/32",
/// "1.0.0.1/32",
/// };
///
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 50,
/// Description = "Permits http traffic from source",
/// Name = "example",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// StatefulRules = ips.Select((v, k) => new { Key = k, Value = v }).Select(entry =>
/// {
/// return new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleArgs
/// {
/// Action = "PASS",
/// Header = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs
/// {
/// Destination = "ANY",
/// DestinationPort = "ANY",
/// Protocol = "HTTP",
/// Direction = "ANY",
/// SourcePort = "ANY",
/// Source = entry.Value,
/// },
/// RuleOptions = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs
/// {
/// Keyword = "sid",
/// Settings = new[]
/// {
/// "1",
/// },
/// },
/// },
/// };
/// }).ToList(),
/// },
/// },
/// Tags =
/// {
/// { "Name", "permit HTTP from source" },
/// },
/// });
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Stateful Inspection for blocking packets from going to an intended destination
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 100,
/// name: "example",
/// type: "STATEFUL",
/// ruleGroup: {
/// rulesSource: {
/// statefulRules: [{
/// action: "DROP",
/// header: {
/// destination: "124.1.1.24/32",
/// destinationPort: "53",
/// direction: "ANY",
/// protocol: "TCP",
/// source: "1.2.3.4/32",
/// sourcePort: "53",
/// },
/// ruleOptions: [{
/// keyword: "sid",
/// settings: ["1"],
/// }],
/// }],
/// },
/// },
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=100,
/// name="example",
/// type="STATEFUL",
/// rule_group={
/// "rules_source": {
/// "stateful_rules": [{
/// "action": "DROP",
/// "header": {
/// "destination": "124.1.1.24/32",
/// "destination_port": "53",
/// "direction": "ANY",
/// "protocol": "TCP",
/// "source": "1.2.3.4/32",
/// "source_port": "53",
/// },
/// "rule_options": [{
/// "keyword": "sid",
/// "settings": ["1"],
/// }],
/// }],
/// },
/// },
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
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
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 100,
/// Name = "example",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// StatefulRules = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleArgs
/// {
/// Action = "DROP",
/// Header = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs
/// {
/// Destination = "124.1.1.24/32",
/// DestinationPort = "53",
/// Direction = "ANY",
/// Protocol = "TCP",
/// Source = "1.2.3.4/32",
/// SourcePort = "53",
/// },
/// RuleOptions = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs
/// {
/// Keyword = "sid",
/// Settings = new[]
/// {
/// "1",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(100),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("STATEFUL"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// StatefulRules: networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleArgs{
/// Action: pulumi.String("DROP"),
/// Header: &networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs{
/// Destination:     pulumi.String("124.1.1.24/32"),
/// DestinationPort: pulumi.String("53"),
/// Direction:       pulumi.String("ANY"),
/// Protocol:        pulumi.String("TCP"),
/// Source:          pulumi.String("1.2.3.4/32"),
/// SourcePort:      pulumi.String("53"),
/// },
/// RuleOptions: networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs{
/// Keyword: pulumi.String("sid"),
/// Settings: pulumi.StringArray{
/// pulumi.String("1"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .capacity(100)
/// .name("example")
/// .type("STATEFUL")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .statefulRules(RuleGroupRuleGroupRulesSourceStatefulRuleArgs.builder()
/// .action("DROP")
/// .header(RuleGroupRuleGroupRulesSourceStatefulRuleHeaderArgs.builder()
/// .destination("124.1.1.24/32")
/// .destinationPort("53")
/// .direction("ANY")
/// .protocol("TCP")
/// .source("1.2.3.4/32")
/// .sourcePort("53")
/// .build())
/// .ruleOptions(RuleGroupRuleGroupRulesSourceStatefulRuleRuleOptionArgs.builder()
/// .keyword("sid")
/// .settings("1")
/// .build())
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// capacity: 100
/// name: example
/// type: STATEFUL
/// ruleGroup:
/// rulesSource:
/// statefulRules:
/// - action: DROP
/// header:
/// destination: 124.1.1.24/32
/// destinationPort: 53
/// direction: ANY
/// protocol: TCP
/// source: 1.2.3.4/32
/// sourcePort: 53
/// ruleOptions:
/// - keyword: sid
/// settings:
/// - '1'
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Stateful Inspection from rules specifications defined in Suricata flat format
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 100,
/// name: "example",
/// type: "STATEFUL",
/// rules: std.file({
/// input: "example.rules",
/// }).then(invoke => invoke.result),
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=100,
/// name="example",
/// type="STATEFUL",
/// rules=std.file(input="example.rules").result,
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 100,
/// Name = "example",
/// Type = "STATEFUL",
/// Rules = Std.File.Invoke(new()
/// {
/// Input = "example.rules",
/// }).Apply(invoke => invoke.Result),
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "example.rules",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(100),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("STATEFUL"),
/// Rules:    pulumi.String(invokeFile.Result),
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .capacity(100)
/// .name("example")
/// .type("STATEFUL")
/// .rules(StdFunctions.file(FileArgs.builder()
/// .input("example.rules")
/// .build()).result())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// capacity: 100
/// name: example
/// type: STATEFUL
/// rules:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: example.rules
/// return: result
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Stateful Inspection from rule group specifications using rule variables and Suricata format rules
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 100,
/// name: "example",
/// type: "STATEFUL",
/// ruleGroup: {
/// ruleVariables: {
/// ipSets: [
/// {
/// key: "WEBSERVERS_HOSTS",
/// ipSet: {
/// definitions: [
/// "10.0.0.0/16",
/// "10.0.1.0/24",
/// "192.168.0.0/16",
/// ],
/// },
/// },
/// {
/// key: "EXTERNAL_HOST",
/// ipSet: {
/// definitions: ["1.2.3.4/32"],
/// },
/// },
/// ],
/// portSets: [{
/// key: "HTTP_PORTS",
/// portSet: {
/// definitions: [
/// "443",
/// "80",
/// ],
/// },
/// }],
/// },
/// rulesSource: {
/// rulesString: std.file({
/// input: "suricata_rules_file",
/// }).then(invoke => invoke.result),
/// },
/// },
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=100,
/// name="example",
/// type="STATEFUL",
/// rule_group={
/// "rule_variables": {
/// "ip_sets": [
/// {
/// "key": "WEBSERVERS_HOSTS",
/// "ip_set": {
/// "definitions": [
/// "10.0.0.0/16",
/// "10.0.1.0/24",
/// "192.168.0.0/16",
/// ],
/// },
/// },
/// {
/// "key": "EXTERNAL_HOST",
/// "ip_set": {
/// "definitions": ["1.2.3.4/32"],
/// },
/// },
/// ],
/// "port_sets": [{
/// "key": "HTTP_PORTS",
/// "port_set": {
/// "definitions": [
/// "443",
/// "80",
/// ],
/// },
/// }],
/// },
/// "rules_source": {
/// "rules_string": std.file(input="suricata_rules_file").result,
/// },
/// },
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 100,
/// Name = "example",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RuleVariables = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesArgs
/// {
/// IpSets = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
/// {
/// Key = "WEBSERVERS_HOSTS",
/// IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
/// {
/// Definitions = new[]
/// {
/// "10.0.0.0/16",
/// "10.0.1.0/24",
/// "192.168.0.0/16",
/// },
/// },
/// },
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
/// {
/// Key = "EXTERNAL_HOST",
/// IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
/// {
/// Definitions = new[]
/// {
/// "1.2.3.4/32",
/// },
/// },
/// },
/// },
/// PortSets = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs
/// {
/// Key = "HTTP_PORTS",
/// PortSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs
/// {
/// Definitions = new[]
/// {
/// "443",
/// "80",
/// },
/// },
/// },
/// },
/// },
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// RulesString = Std.File.Invoke(new()
/// {
/// Input = "suricata_rules_file",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "suricata_rules_file",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(100),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("STATEFUL"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RuleVariables: &networkfirewall.RuleGroupRuleGroupRuleVariablesArgs{
/// IpSets: networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArray{
/// &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// Key: pulumi.String("WEBSERVERS_HOSTS"),
/// IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// Definitions: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// pulumi.String("10.0.1.0/24"),
/// pulumi.String("192.168.0.0/16"),
/// },
/// },
/// },
/// &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// Key: pulumi.String("EXTERNAL_HOST"),
/// IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// Definitions: pulumi.StringArray{
/// pulumi.String("1.2.3.4/32"),
/// },
/// },
/// },
/// },
/// PortSets: networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArray{
/// &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArgs{
/// Key: pulumi.String("HTTP_PORTS"),
/// PortSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs{
/// Definitions: pulumi.StringArray{
/// pulumi.String("443"),
/// pulumi.String("80"),
/// },
/// },
/// },
/// },
/// },
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// RulesString: pulumi.String(invokeFile.Result),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .capacity(100)
/// .name("example")
/// .type("STATEFUL")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .ruleVariables(RuleGroupRuleGroupRuleVariablesArgs.builder()
/// .ipSets(
/// RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
/// .key("WEBSERVERS_HOSTS")
/// .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
/// .definitions(
/// "10.0.0.0/16",
/// "10.0.1.0/24",
/// "192.168.0.0/16")
/// .build())
/// .build(),
/// RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
/// .key("EXTERNAL_HOST")
/// .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
/// .definitions("1.2.3.4/32")
/// .build())
/// .build())
/// .portSets(RuleGroupRuleGroupRuleVariablesPortSetArgs.builder()
/// .key("HTTP_PORTS")
/// .portSet(RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs.builder()
/// .definitions(
/// "443",
/// "80")
/// .build())
/// .build())
/// .build())
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .rulesString(StdFunctions.file(FileArgs.builder()
/// .input("suricata_rules_file")
/// .build()).result())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// capacity: 100
/// name: example
/// type: STATEFUL
/// ruleGroup:
/// ruleVariables:
/// ipSets:
/// - key: WEBSERVERS_HOSTS
/// ipSet:
/// definitions:
/// - 10.0.0.0/16
/// - 10.0.1.0/24
/// - 192.168.0.0/16
/// - key: EXTERNAL_HOST
/// ipSet:
/// definitions:
/// - 1.2.3.4/32
/// portSets:
/// - key: HTTP_PORTS
/// portSet:
/// definitions:
/// - '443'
/// - '80'
/// rulesSource:
/// rulesString:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: suricata_rules_file
/// return: result
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Stateless Inspection with a Custom Action
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// description: "Stateless Rate Limiting Rule",
/// capacity: 100,
/// name: "example",
/// type: "STATELESS",
/// ruleGroup: {
/// rulesSource: {
/// statelessRulesAndCustomActions: {
/// customActions: [{
/// actionDefinition: {
/// publishMetricAction: {
/// dimensions: [{
/// value: "2",
/// }],
/// },
/// },
/// actionName: "ExampleMetricsAction",
/// }],
/// statelessRules: [{
/// priority: 1,
/// ruleDefinition: {
/// actions: [
/// "aws:pass",
/// "ExampleMetricsAction",
/// ],
/// matchAttributes: {
/// sources: [{
/// addressDefinition: "1.2.3.4/32",
/// }],
/// sourcePorts: [{
/// fromPort: 443,
/// toPort: 443,
/// }],
/// destinations: [{
/// addressDefinition: "124.1.1.5/32",
/// }],
/// destinationPorts: [{
/// fromPort: 443,
/// toPort: 443,
/// }],
/// protocols: [6],
/// tcpFlags: [{
/// flags: ["SYN"],
/// masks: [
/// "SYN",
/// "ACK",
/// ],
/// }],
/// },
/// },
/// }],
/// },
/// },
/// },
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.RuleGroup("example",
/// description="Stateless Rate Limiting Rule",
/// capacity=100,
/// name="example",
/// type="STATELESS",
/// rule_group={
/// "rules_source": {
/// "stateless_rules_and_custom_actions": {
/// "custom_actions": [{
/// "action_definition": {
/// "publish_metric_action": {
/// "dimensions": [{
/// "value": "2",
/// }],
/// },
/// },
/// "action_name": "ExampleMetricsAction",
/// }],
/// "stateless_rules": [{
/// "priority": 1,
/// "rule_definition": {
/// "actions": [
/// "aws:pass",
/// "ExampleMetricsAction",
/// ],
/// "match_attributes": {
/// "sources": [{
/// "address_definition": "1.2.3.4/32",
/// }],
/// "source_ports": [{
/// "from_port": 443,
/// "to_port": 443,
/// }],
/// "destinations": [{
/// "address_definition": "124.1.1.5/32",
/// }],
/// "destination_ports": [{
/// "from_port": 443,
/// "to_port": 443,
/// }],
/// "protocols": [6],
/// "tcp_flags": [{
/// "flags": ["SYN"],
/// "masks": [
/// "SYN",
/// "ACK",
/// ],
/// }],
/// },
/// },
/// }],
/// },
/// },
/// },
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
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
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Description = "Stateless Rate Limiting Rule",
/// Capacity = 100,
/// Name = "example",
/// Type = "STATELESS",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// StatelessRulesAndCustomActions = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs
/// {
/// CustomActions = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs
/// {
/// ActionDefinition = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs
/// {
/// PublishMetricAction = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs
/// {
/// Dimensions = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs
/// {
/// Value = "2",
/// },
/// },
/// },
/// },
/// ActionName = "ExampleMetricsAction",
/// },
/// },
/// StatelessRules = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs
/// {
/// Priority = 1,
/// RuleDefinition = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs
/// {
/// Actions = new[]
/// {
/// "aws:pass",
/// "ExampleMetricsAction",
/// },
/// MatchAttributes = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs
/// {
/// Sources = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs
/// {
/// AddressDefinition = "1.2.3.4/32",
/// },
/// },
/// SourcePorts = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs
/// {
/// FromPort = 443,
/// ToPort = 443,
/// },
/// },
/// Destinations = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs
/// {
/// AddressDefinition = "124.1.1.5/32",
/// },
/// },
/// DestinationPorts = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs
/// {
/// FromPort = 443,
/// ToPort = 443,
/// },
/// },
/// Protocols = new[]
/// {
/// 6,
/// },
/// TcpFlags = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs
/// {
/// Flags = new[]
/// {
/// "SYN",
/// },
/// Masks = new[]
/// {
/// "SYN",
/// "ACK",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Description: pulumi.String("Stateless Rate Limiting Rule"),
/// Capacity:    pulumi.Int(100),
/// Name:        pulumi.String("example"),
/// Type:        pulumi.String("STATELESS"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// StatelessRulesAndCustomActions: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs{
/// CustomActions: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs{
/// ActionDefinition: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs{
/// PublishMetricAction: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs{
/// Dimensions: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs{
/// Value: pulumi.String("2"),
/// },
/// },
/// },
/// },
/// ActionName: pulumi.String("ExampleMetricsAction"),
/// },
/// },
/// StatelessRules: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs{
/// Priority: pulumi.Int(1),
/// RuleDefinition: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs{
/// Actions: pulumi.StringArray{
/// pulumi.String("aws:pass"),
/// pulumi.String("ExampleMetricsAction"),
/// },
/// MatchAttributes: &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs{
/// Sources: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs{
/// AddressDefinition: pulumi.String("1.2.3.4/32"),
/// },
/// },
/// SourcePorts: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs{
/// FromPort: pulumi.Int(443),
/// ToPort:   pulumi.Int(443),
/// },
/// },
/// Destinations: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs{
/// AddressDefinition: pulumi.String("124.1.1.5/32"),
/// },
/// },
/// DestinationPorts: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs{
/// FromPort: pulumi.Int(443),
/// ToPort:   pulumi.Int(443),
/// },
/// },
/// Protocols: pulumi.IntArray{
/// pulumi.Int(6),
/// },
/// TcpFlags: networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArray{
/// &networkfirewall.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs{
/// Flags: pulumi.StringArray{
/// pulumi.String("SYN"),
/// },
/// Masks: pulumi.StringArray{
/// pulumi.String("SYN"),
/// pulumi.String("ACK"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .description("Stateless Rate Limiting Rule")
/// .capacity(100)
/// .name("example")
/// .type("STATELESS")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .statelessRulesAndCustomActions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsArgs.builder()
/// .customActions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionArgs.builder()
/// .actionDefinition(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionArgs.builder()
/// .publishMetricAction(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionArgs.builder()
/// .dimensions(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimensionArgs.builder()
/// .value("2")
/// .build())
/// .build())
/// .build())
/// .actionName("ExampleMetricsAction")
/// .build())
/// .statelessRules(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleArgs.builder()
/// .priority(1)
/// .ruleDefinition(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionArgs.builder()
/// .actions(
/// "aws:pass",
/// "ExampleMetricsAction")
/// .matchAttributes(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesArgs.builder()
/// .sources(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourceArgs.builder()
/// .addressDefinition("1.2.3.4/32")
/// .build())
/// .sourcePorts(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesSourcePortArgs.builder()
/// .fromPort(443)
/// .toPort(443)
/// .build())
/// .destinations(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationArgs.builder()
/// .addressDefinition("124.1.1.5/32")
/// .build())
/// .destinationPorts(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesDestinationPortArgs.builder()
/// .fromPort(443)
/// .toPort(443)
/// .build())
/// .protocols(6)
/// .tcpFlags(RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsStatelessRuleRuleDefinitionMatchAttributesTcpFlagArgs.builder()
/// .flags("SYN")
/// .masks(
/// "SYN",
/// "ACK")
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// description: Stateless Rate Limiting Rule
/// capacity: 100
/// name: example
/// type: STATELESS
/// ruleGroup:
/// rulesSource:
/// statelessRulesAndCustomActions:
/// customActions:
/// - actionDefinition:
/// publishMetricAction:
/// dimensions:
/// - value: '2'
/// actionName: ExampleMetricsAction
/// statelessRules:
/// - priority: 1
/// ruleDefinition:
/// actions:
/// - aws:pass
/// - ExampleMetricsAction
/// matchAttributes:
/// sources:
/// - addressDefinition: 1.2.3.4/32
/// sourcePorts:
/// - fromPort: 443
/// toPort: 443
/// destinations:
/// - addressDefinition: 124.1.1.5/32
/// destinationPorts:
/// - fromPort: 443
/// toPort: 443
/// protocols:
/// - 6
/// tcpFlags:
/// - flags:
/// - SYN
/// masks:
/// - SYN
/// - ACK
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### IP Set References to the Rule Group
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.RuleGroup("example", {
/// capacity: 100,
/// name: "example",
/// type: "STATEFUL",
/// ruleGroup: {
/// rulesSource: {
/// rulesSourceList: {
/// generatedRulesType: "DENYLIST",
/// targetTypes: ["HTTP_HOST"],
/// targets: ["test.example.com"],
/// },
/// },
/// referenceSets: {
/// ipSetReferences: [{
/// key: "example",
/// ipSetReferences: [{
/// referenceArn: _this.arn,
/// }],
/// }],
/// },
/// },
/// tags: {
/// Tag1: "Value1",
/// Tag2: "Value2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.RuleGroup("example",
/// capacity=100,
/// name="example",
/// type="STATEFUL",
/// rule_group={
/// "rules_source": {
/// "rules_source_list": {
/// "generated_rules_type": "DENYLIST",
/// "target_types": ["HTTP_HOST"],
/// "targets": ["test.example.com"],
/// },
/// },
/// "reference_sets": {
/// "ip_set_references": [{
/// "key": "example",
/// "ip_set_references": [{
/// "reference_arn": this["arn"],
/// }],
/// }],
/// },
/// },
/// tags={
/// "Tag1": "Value1",
/// "Tag2": "Value2",
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
/// var example = new Aws.NetworkFirewall.RuleGroup("example", new()
/// {
/// Capacity = 100,
/// Name = "example",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// RulesSourceList = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs
/// {
/// GeneratedRulesType = "DENYLIST",
/// TargetTypes = new[]
/// {
/// "HTTP_HOST",
/// },
/// Targets = new[]
/// {
/// "test.example.com",
/// },
/// },
/// },
/// ReferenceSets = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsArgs
/// {
/// IpSetReferences = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs
/// {
/// Key = "example",
/// IpSetReferences = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs
/// {
/// ReferenceArn = @this.Arn,
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Tag1", "Value1" },
/// { "Tag2", "Value2" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.NewRuleGroup(ctx, "example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(100),
/// Name:     pulumi.String("example"),
/// Type:     pulumi.String("STATEFUL"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// RulesSourceList: &networkfirewall.RuleGroupRuleGroupRulesSourceRulesSourceListArgs{
/// GeneratedRulesType: pulumi.String("DENYLIST"),
/// TargetTypes: pulumi.StringArray{
/// pulumi.String("HTTP_HOST"),
/// },
/// Targets: pulumi.StringArray{
/// pulumi.String("test.example.com"),
/// },
/// },
/// },
/// ReferenceSets: &networkfirewall.RuleGroupRuleGroupReferenceSetsArgs{
/// IpSetReferences: networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceArray{
/// &networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs{
/// Key: pulumi.String("example"),
/// IpSetReferences: networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArray{
/// &networkfirewall.RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs{
/// ReferenceArn: pulumi.Any(this.Arn),
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Tag1": pulumi.String("Value1"),
/// "Tag2": pulumi.String("Value2"),
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
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceRulesSourceListArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupReferenceSetsArgs;
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
/// var example = new RuleGroup("example", RuleGroupArgs.builder()
/// .capacity(100)
/// .name("example")
/// .type("STATEFUL")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .rulesSourceList(RuleGroupRuleGroupRulesSourceRulesSourceListArgs.builder()
/// .generatedRulesType("DENYLIST")
/// .targetTypes("HTTP_HOST")
/// .targets("test.example.com")
/// .build())
/// .build())
/// .referenceSets(RuleGroupRuleGroupReferenceSetsArgs.builder()
/// .ipSetReferences(RuleGroupRuleGroupReferenceSetsIpSetReferenceArgs.builder()
/// .key("example")
/// .ipSetReferences(RuleGroupRuleGroupReferenceSetsIpSetReferenceIpSetReferenceArgs.builder()
/// .referenceArn(this_.arn())
/// .build())
/// .build())
/// .build())
/// .build())
/// .tags(Map.ofEntries(
/// Map.entry("Tag1", "Value1"),
/// Map.entry("Tag2", "Value2")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:RuleGroup
/// properties:
/// capacity: 100
/// name: example
/// type: STATEFUL
/// ruleGroup:
/// rulesSource:
/// rulesSourceList:
/// generatedRulesType: DENYLIST
/// targetTypes:
/// - HTTP_HOST
/// targets:
/// - test.example.com
/// referenceSets:
/// ipSetReferences:
/// - key: example
/// ipSetReferences:
/// - referenceArn: ${this.arn}
/// tags:
/// Tag1: Value1
/// Tag2: Value2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Example with S3 as source for the suricata rules
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const suricataRules = aws.s3.getObject({
/// bucket: suricataRulesAwsS3Bucket.id,
/// key: "rules/custom.rules",
/// });
/// const s3RulesExample = new aws.networkfirewall.RuleGroup("s3_rules_example", {
/// capacity: 1000,
/// name: "my-terraform-s3-rules",
/// type: "STATEFUL",
/// ruleGroup: {
/// ruleVariables: {
/// ipSets: [{
/// key: "HOME_NET",
/// ipSet: {
/// definitions: [
/// "10.0.0.0/16",
/// "192.168.0.0/16",
/// "172.16.0.0/12",
/// ],
/// },
/// }],
/// portSets: [{
/// key: "HTTP_PORTS",
/// portSet: {
/// definitions: [
/// "443",
/// "80",
/// ],
/// },
/// }],
/// },
/// rulesSource: {
/// rulesString: suricataRules.then(suricataRules => suricataRules.body),
/// },
/// },
/// tags: {
/// ManagedBy: "terraform",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// suricata_rules = aws.s3.get_object(bucket=suricata_rules_aws_s3_bucket["id"],
/// key="rules/custom.rules")
/// s3_rules_example = aws.networkfirewall.RuleGroup("s3_rules_example",
/// capacity=1000,
/// name="my-terraform-s3-rules",
/// type="STATEFUL",
/// rule_group={
/// "rule_variables": {
/// "ip_sets": [{
/// "key": "HOME_NET",
/// "ip_set": {
/// "definitions": [
/// "10.0.0.0/16",
/// "192.168.0.0/16",
/// "172.16.0.0/12",
/// ],
/// },
/// }],
/// "port_sets": [{
/// "key": "HTTP_PORTS",
/// "port_set": {
/// "definitions": [
/// "443",
/// "80",
/// ],
/// },
/// }],
/// },
/// "rules_source": {
/// "rules_string": suricata_rules.body,
/// },
/// },
/// tags={
/// "ManagedBy": "terraform",
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
/// var suricataRules = Aws.S3.GetObject.Invoke(new()
/// {
/// Bucket = suricataRulesAwsS3Bucket.Id,
/// Key = "rules/custom.rules",
/// });
///
/// var s3RulesExample = new Aws.NetworkFirewall.RuleGroup("s3_rules_example", new()
/// {
/// Capacity = 1000,
/// Name = "my-terraform-s3-rules",
/// Type = "STATEFUL",
/// RuleGroupConfiguration = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupArgs
/// {
/// RuleVariables = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesArgs
/// {
/// IpSets = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetArgs
/// {
/// Key = "HOME_NET",
/// IpSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs
/// {
/// Definitions = new[]
/// {
/// "10.0.0.0/16",
/// "192.168.0.0/16",
/// "172.16.0.0/12",
/// },
/// },
/// },
/// },
/// PortSets = new[]
/// {
/// new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetArgs
/// {
/// Key = "HTTP_PORTS",
/// PortSet = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs
/// {
/// Definitions = new[]
/// {
/// "443",
/// "80",
/// },
/// },
/// },
/// },
/// },
/// RulesSource = new Aws.NetworkFirewall.Inputs.RuleGroupRuleGroupRulesSourceArgs
/// {
/// RulesString = suricataRules.Apply(getObjectResult => getObjectResult.Body),
/// },
/// },
/// Tags =
/// {
/// { "ManagedBy", "terraform" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// suricataRules, err := s3.GetObject(ctx, &s3.GetObjectArgs{
/// Bucket: suricataRulesAwsS3Bucket.Id,
/// Key:    "rules/custom.rules",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = networkfirewall.NewRuleGroup(ctx, "s3_rules_example", &networkfirewall.RuleGroupArgs{
/// Capacity: pulumi.Int(1000),
/// Name:     pulumi.String("my-terraform-s3-rules"),
/// Type:     pulumi.String("STATEFUL"),
/// RuleGroup: &networkfirewall.RuleGroupRuleGroupArgs{
/// RuleVariables: &networkfirewall.RuleGroupRuleGroupRuleVariablesArgs{
/// IpSets: networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArray{
/// &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetArgs{
/// Key: pulumi.String("HOME_NET"),
/// IpSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs{
/// Definitions: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// pulumi.String("192.168.0.0/16"),
/// pulumi.String("172.16.0.0/12"),
/// },
/// },
/// },
/// },
/// PortSets: networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArray{
/// &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetArgs{
/// Key: pulumi.String("HTTP_PORTS"),
/// PortSet: &networkfirewall.RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs{
/// Definitions: pulumi.StringArray{
/// pulumi.String("443"),
/// pulumi.String("80"),
/// },
/// },
/// },
/// },
/// },
/// RulesSource: &networkfirewall.RuleGroupRuleGroupRulesSourceArgs{
/// RulesString: pulumi.String(suricataRules.Body),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "ManagedBy": pulumi.String("terraform"),
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
/// import com.pulumi.aws.s3.S3Functions;
/// import com.pulumi.aws.s3.inputs.GetObjectArgs;
/// import com.pulumi.aws.networkfirewall.RuleGroup;
/// import com.pulumi.aws.networkfirewall.RuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRuleVariablesArgs;
/// import com.pulumi.aws.networkfirewall.inputs.RuleGroupRuleGroupRulesSourceArgs;
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
/// final var suricataRules = S3Functions.getObject(GetObjectArgs.builder()
/// .bucket(suricataRulesAwsS3Bucket.id())
/// .key("rules/custom.rules")
/// .build());
///
/// var s3RulesExample = new RuleGroup("s3RulesExample", RuleGroupArgs.builder()
/// .capacity(1000)
/// .name("my-terraform-s3-rules")
/// .type("STATEFUL")
/// .ruleGroup(RuleGroupRuleGroupArgs.builder()
/// .ruleVariables(RuleGroupRuleGroupRuleVariablesArgs.builder()
/// .ipSets(RuleGroupRuleGroupRuleVariablesIpSetArgs.builder()
/// .key("HOME_NET")
/// .ipSet(RuleGroupRuleGroupRuleVariablesIpSetIpSetArgs.builder()
/// .definitions(
/// "10.0.0.0/16",
/// "192.168.0.0/16",
/// "172.16.0.0/12")
/// .build())
/// .build())
/// .portSets(RuleGroupRuleGroupRuleVariablesPortSetArgs.builder()
/// .key("HTTP_PORTS")
/// .portSet(RuleGroupRuleGroupRuleVariablesPortSetPortSetArgs.builder()
/// .definitions(
/// "443",
/// "80")
/// .build())
/// .build())
/// .build())
/// .rulesSource(RuleGroupRuleGroupRulesSourceArgs.builder()
/// .rulesString(suricataRules.body())
/// .build())
/// .build())
/// .tags(Map.of("ManagedBy", "terraform"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3RulesExample:
/// type: aws:networkfirewall:RuleGroup
/// name: s3_rules_example
/// properties:
/// capacity: 1000
/// name: my-terraform-s3-rules
/// type: STATEFUL
/// ruleGroup:
/// ruleVariables:
/// ipSets:
/// - key: HOME_NET
/// ipSet:
/// definitions:
/// - 10.0.0.0/16
/// - 192.168.0.0/16
/// - 172.16.0.0/12
/// portSets:
/// - key: HTTP_PORTS
/// portSet:
/// definitions:
/// - '443'
/// - '80'
/// rulesSource:
/// rulesString: ${suricataRules.body}
/// tags:
/// ManagedBy: terraform
/// variables:
/// suricataRules:
/// fn::invoke:
/// function: aws:s3:getObject
/// arguments:
/// bucket: ${suricataRulesAwsS3Bucket.id}
/// key: rules/custom.rules
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Rule Groups using their <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/ruleGroup:RuleGroup example arn:aws:network-firewall:us-west-1:123456789012:stateful-rulegroup/example
/// ```
class RuleGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) that identifies the rule group.
  late final Output<String> arn;

  /// The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules.
  late final Output<int> capacity;

  /// A friendly description of the rule group.
  late final Output<String?> description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final Output<RuleGroupEncryptionConfiguration?> encryptionConfiguration;

  /// A friendly name of the rule group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A configuration block that defines the rule group rules. Required unless <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> is specified. See Rule Group below for details.
  late final Output<RuleGroupRuleGroup> ruleGroup;

  /// The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless <span pulumi-lang-nodejs="`ruleGroup`" pulumi-lang-dotnet="`RuleGroup`" pulumi-lang-go="`ruleGroup`" pulumi-lang-python="`rule_group`" pulumi-lang-yaml="`ruleGroup`" pulumi-lang-java="`ruleGroup`">`rule_group`</span> is specified.
  late final Output<String?> rules;

  /// A map of key:value pairs to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: `STATEFUL` or `STATELESS`.
  late final Output<String> type;

  /// A string token used when updating the rule group.
  late final Output<String> updateToken;

  RuleGroup(
    String name, {
    RuleGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/ruleGroup:RuleGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.capacity = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.encryptionConfiguration =
        Output.createUnknown<RuleGroupEncryptionConfiguration?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.ruleGroup = Output.createUnknown<RuleGroupRuleGroup>();
    this.rules = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
    this.updateToken = Output.createUnknown<String>();
  }
}
