import 'package:pulumi/pulumi.dart';
import '../rule_compilation_diagnostic/rule_compilation_diagnostic.dart';
import '../rule_severity/rule_severity.dart';
import 'rule_args.dart';

/// The Rule resource represents a user-created rule.
///
///
/// To get more information about Rule, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.rules)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Rule Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Rule("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// deletionPolicy: "DEFAULT",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Rule("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// deletion_policy="DEFAULT",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.Rule("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DeletionPolicy = "DEFAULT",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// Location:       pulumi.String("us"),
/// Instance:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DeletionPolicy: pulumi.String("DEFAULT"),
/// Text:           pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
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
/// var example = new Rule("example", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .deletionPolicy("DEFAULT")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:Rule
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// deletionPolicy: DEFAULT
/// text: |
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Rule With Force Deletion
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Rule("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// deletionPolicy: "FORCE",
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Rule("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// deletion_policy="FORCE",
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.Rule("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DeletionPolicy = "FORCE",
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// Location:       pulumi.String("us"),
/// Instance:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DeletionPolicy: pulumi.String("FORCE"),
/// Text:           pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
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
/// var example = new Rule("example", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .deletionPolicy("FORCE")
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:Rule
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// deletionPolicy: FORCE
/// text: |
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Rule With Data Access Scope
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataAccessScopeTest = new gcp.chronicle.DataAccessScope("data_access_scope_test", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-name",
/// description: "scope-description",
/// allowedDataAccessLabels: [{
/// logType: "GCP_CLOUDAUDIT",
/// }],
/// });
/// const example = new gcp.chronicle.Rule("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// scope: googleChronicleDataAccessScope.dataAccessScopeTest.name,
/// text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_access_scope_test = gcp.chronicle.DataAccessScope("data_access_scope_test",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-name",
/// description="scope-description",
/// allowed_data_access_labels=[{
/// "log_type": "GCP_CLOUDAUDIT",
/// }])
/// example = gcp.chronicle.Rule("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// scope=google_chronicle_data_access_scope["dataAccessScopeTest"]["name"],
/// text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataAccessScopeTest = new Gcp.Chronicle.DataAccessScope("data_access_scope_test", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-name",
/// Description = "scope-description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// LogType = "GCP_CLOUDAUDIT",
/// },
/// },
/// });
///
/// var example = new Gcp.Chronicle.Rule("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// Scope = googleChronicleDataAccessScope.DataAccessScopeTest.Name,
/// Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessScope(ctx, "data_access_scope_test", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-name"),
/// Description:       pulumi.String("scope-description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// Location: pulumi.String("us"),
/// Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// Scope:    pulumi.Any(googleChronicleDataAccessScope.DataAccessScopeTest.Name),
/// Text:     pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.Rule;
/// import com.pulumi.gcp.chronicle.RuleArgs;
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
/// var dataAccessScopeTest = new DataAccessScope("dataAccessScopeTest", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-name")
/// .description("scope-description")
/// .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .logType("GCP_CLOUDAUDIT")
/// .build())
/// .build());
///
/// var example = new Rule("example", RuleArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .scope(googleChronicleDataAccessScope.dataAccessScopeTest().name())
/// .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataAccessScopeTest:
/// type: gcp:chronicle:DataAccessScope
/// name: data_access_scope_test
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-name
/// description: scope-description
/// allowedDataAccessLabels:
/// - logType: GCP_CLOUDAUDIT
/// example:
/// type: gcp:chronicle:Rule
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// scope: ${googleChronicleDataAccessScope.dataAccessScopeTest.name}
/// text: |
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Rule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{rule_id}}`
///
/// * `{{location}}/{{instance}}/{{rule_id}}`
///
/// When using the `pulumi import` command, Rule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default projects/{{project}}/locations/{{location}}/instances/{{instance}}/rules/{{rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default {{project}}/{{location}}/{{instance}}/{{rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/rule:Rule default {{location}}/{{instance}}/{{rule_id}}
/// ```
class Rule extends CustomResource {
  /// Output only. The run frequencies that are allowed for the rule.
  /// Populated in BASIC view and FULL view.
  late final Output<List<String>> allowedRunFrequencies;

  /// Output only. The author of the rule. Extracted from the meta section of text.
  /// Populated in BASIC view and FULL view.
  late final Output<String> author;

  /// Output only. A list of a rule's corresponding compilation diagnostic messages
  /// such as compilation errors and compilation warnings.
  /// Populated in FULL view.
  /// Structure is documented below.
  late final Output<List<RuleCompilationDiagnostic>> compilationDiagnostics;

  /// Output only. The current compilation state of the rule.
  /// Populated in FULL view.
  /// Possible values:
  /// COMPILATION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  late final Output<String> compilationState;

  /// Output only. The timestamp of when the rule was created.
  /// Populated in FULL view.
  late final Output<String> createTime;

  /// Output only. Resource names of the data tables used in this rule.
  late final Output<List<String>> dataTables;

  /// Policy to determine if the rule should be deleted forcefully.
  /// If<span pulumi-lang-nodejs=" deletionPolicy " pulumi-lang-dotnet=" DeletionPolicy " pulumi-lang-go=" deletionPolicy " pulumi-lang-python=" deletion_policy " pulumi-lang-yaml=" deletionPolicy " pulumi-lang-java=" deletionPolicy "> deletion_policy </span>= "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If<span pulumi-lang-nodejs=" deletionPolicy " pulumi-lang-dotnet=" DeletionPolicy " pulumi-lang-go=" deletionPolicy " pulumi-lang-python=" deletion_policy " pulumi-lang-yaml=" deletionPolicy " pulumi-lang-java=" deletionPolicy "> deletion_policy </span>= "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of this field's value, the rule
  /// deployment associated with this rule will also be deleted.
  /// Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// The display name of the severity level. Extracted from the meta section of
  /// the rule text.
  late final Output<String> displayName;

  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  late final Output<String> etag;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// Output only. Additional metadata specified in the meta section of text.
  /// Populated in FULL view.
  late final Output<Map<String, String>> metadata;

  /// Full resource name for the rule. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final Output<String> name;

  /// Output only. Indicate the rule can run in near real time live rule.
  /// If this is true, the rule uses the near real time live rule when the run
  /// frequency is set to LIVE.
  late final Output<bool> nearRealTimeLiveRuleEligible;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Resource names of the reference lists used in this rule.
  /// Populated in FULL view.
  late final Output<List<String>> referenceLists;

  /// Output only. The timestamp of when the rule revision was created.
  /// Populated in FULL, REVISION_METADATA_ONLY views.
  late final Output<String> revisionCreateTime;

  /// Output only. The revision ID of the rule.
  /// A new revision is created whenever the rule text is changed in any way.
  /// Format: v_{10 digits}_{9 digits}
  /// Populated in REVISION_METADATA_ONLY view and FULL view.
  late final Output<String> revisionId;

  /// Rule Id is the ID of the Rule.
  late final Output<String> ruleId;

  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  late final Output<String?> scope;

  /// (Output)
  /// Output only. The severity of a rule's compilation diagnostic.
  /// Possible values:
  /// SEVERITY_UNSPECIFIED
  /// WARNING
  /// ERROR
  late final Output<List<RuleSeverity>> severities;

  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  late final Output<String?> text;

  /// Possible values:
  /// RULE_TYPE_UNSPECIFIED
  /// SINGLE_EVENT
  /// MULTI_EVENT
  late final Output<String> type;

  Rule(
    String name, {
    RuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/rule:Rule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedRunFrequencies = Output.createUnknown<List<String>>();
    this.author = Output.createUnknown<String>();
    this.compilationDiagnostics =
        Output.createUnknown<List<RuleCompilationDiagnostic>>();
    this.compilationState = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.dataTables = Output.createUnknown<List<String>>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.name = Output.createUnknown<String>();
    this.nearRealTimeLiveRuleEligible = Output.createUnknown<bool>();
    this.project = Output.createUnknown<String>();
    this.referenceLists = Output.createUnknown<List<String>>();
    this.revisionCreateTime = Output.createUnknown<String>();
    this.revisionId = Output.createUnknown<String>();
    this.ruleId = Output.createUnknown<String>();
    this.scope = Output.createUnknown<String?>();
    this.severities = Output.createUnknown<List<RuleSeverity>>();
    this.text = Output.createUnknown<String?>();
    this.type = Output.createUnknown<String>();
  }
}
