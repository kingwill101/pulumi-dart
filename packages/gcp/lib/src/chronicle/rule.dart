import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_compilation_diagnostic.dart';
import 'rule_severity.dart';

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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Rule("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     deletionPolicy: "DEFAULT",
///     text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Rule("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     deletion_policy="DEFAULT",
///     text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.Rule("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DeletionPolicy = "DEFAULT",
///         Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// 			Location:       pulumi.String("us"),
/// 			Instance:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DeletionPolicy: pulumi.String("DEFAULT"),
/// 			Text:           pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Rule("example", RuleArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .deletionPolicy("DEFAULT")
///             .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Rule
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       deletionPolicy: DEFAULT
///       text: |
///         rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
///
/// ### Chronicle Rule With Force Deletion
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.Rule("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     deletionPolicy: "FORCE",
///     text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.Rule("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     deletion_policy="FORCE",
///     text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Chronicle.Rule("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DeletionPolicy = "FORCE",
///         Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// 			Location:       pulumi.String("us"),
/// 			Instance:       pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DeletionPolicy: pulumi.String("FORCE"),
/// 			Text:           pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Rule("example", RuleArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .deletionPolicy("FORCE")
///             .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:chronicle:Rule
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       deletionPolicy: FORCE
///       text: |
///         rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
///
/// ### Chronicle Rule With Data Access Scope
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataAccessScopeTest = new gcp.chronicle.DataAccessScope("data_access_scope_test", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     dataAccessScopeId: "scope-name",
///     description: "scope-description",
///     allowedDataAccessLabels: [{
///         logType: "GCP_CLOUDAUDIT",
///     }],
/// });
/// const example = new gcp.chronicle.Rule("example", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     scope: googleChronicleDataAccessScope.dataAccessScopeTest.name,
///     text: "rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_access_scope_test = gcp.chronicle.DataAccessScope("data_access_scope_test",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     data_access_scope_id="scope-name",
///     description="scope-description",
///     allowed_data_access_labels=[{
///         "log_type": "GCP_CLOUDAUDIT",
///     }])
/// example = gcp.chronicle.Rule("example",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     scope=google_chronicle_data_access_scope["dataAccessScopeTest"]["name"],
///     text="rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataAccessScopeTest = new Gcp.Chronicle.DataAccessScope("data_access_scope_test", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DataAccessScopeId = "scope-name",
///         Description = "scope-description",
///         AllowedDataAccessLabels = new[]
///         {
///             new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
///             {
///                 LogType = "GCP_CLOUDAUDIT",
///             },
///         },
///     });
///
///     var example = new Gcp.Chronicle.Rule("example", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         Scope = googleChronicleDataAccessScope.DataAccessScopeTest.Name,
///         Text = @"rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chronicle.NewDataAccessScope(ctx, "data_access_scope_test", &chronicle.DataAccessScopeArgs{
/// 			Location:          pulumi.String("us"),
/// 			Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DataAccessScopeId: pulumi.String("scope-name"),
/// 			Description:       pulumi.String("scope-description"),
/// 			AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// 				&chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// 					LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewRule(ctx, "example", &chronicle.RuleArgs{
/// 			Location: pulumi.String("us"),
/// 			Instance: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			Scope:    pulumi.Any(googleChronicleDataAccessScope.DataAccessScopeTest.Name),
/// 			Text:     pulumi.String("rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }\n"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var dataAccessScopeTest = new DataAccessScope("dataAccessScopeTest", DataAccessScopeArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .dataAccessScopeId("scope-name")
///             .description("scope-description")
///             .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
///                 .logType("GCP_CLOUDAUDIT")
///                 .build())
///             .build());
///
///         var example = new Rule("example", RuleArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .scope(googleChronicleDataAccessScope.dataAccessScopeTest().name())
///             .text("""
/// rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataAccessScopeTest:
///     type: gcp:chronicle:DataAccessScope
///     name: data_access_scope_test
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       dataAccessScopeId: scope-name
///       description: scope-description
///       allowedDataAccessLabels:
///         - logType: GCP_CLOUDAUDIT
///   example:
///     type: gcp:chronicle:Rule
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       scope: ${googleChronicleDataAccessScope.dataAccessScopeTest.name}
///       text: |
///         rule test_rule { meta: events:  $userid = $e.principal.user.userid  match: $userid over 10m condition: $e }
/// ```
///
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
class Rule extends pulumi.CustomResource {
  /// Output only. The run frequencies that are allowed for the rule.
  /// Populated in BASIC view and FULL view.
  late final pulumi.Output<List<String>> allowedRunFrequencies;

  /// Output only. The author of the rule. Extracted from the meta section of text.
  /// Populated in BASIC view and FULL view.
  late final pulumi.Output<String> author;

  /// Output only. A list of a rule's corresponding compilation diagnostic messages
  /// such as compilation errors and compilation warnings.
  /// Populated in FULL view.
  /// Structure is documented below.
  late final pulumi.Output<List<RuleCompilationDiagnostic>>
  compilationDiagnostics;

  /// Output only. The current compilation state of the rule.
  /// Populated in FULL view.
  /// Possible values:
  /// COMPILATION_STATE_UNSPECIFIED
  /// SUCCEEDED
  /// FAILED
  late final pulumi.Output<String> compilationState;

  /// Output only. The timestamp of when the rule was created.
  /// Populated in FULL view.
  late final pulumi.Output<String> createTime;

  /// Output only. Resource names of the data tables used in this rule.
  late final pulumi.Output<List<String>> dataTables;

  /// Policy to determine if the rule should be deleted forcefully.
  /// If deletion_policy = "FORCE", any retrohunts and any detections associated with the rule
  /// will also be deleted. If deletion_policy = "DEFAULT", the call will only succeed if the
  /// rule has no associated retrohunts, including completed retrohunts, and no
  /// associated detections. Regardless of this field's value, the rule
  /// deployment associated with this rule will also be deleted.
  /// Possible values: DEFAULT, FORCE
  late final pulumi.Output<String?> deletionPolicy;

  /// The display name of the severity level. Extracted from the meta section of
  /// the rule text.
  late final pulumi.Output<String> displayName;

  /// The etag for this rule.
  /// If this is provided on update, the request will succeed if and only if it
  /// matches the server-computed value, and will fail with an ABORTED error
  /// otherwise.
  /// Populated in BASIC view and FULL view.
  late final pulumi.Output<String> etag;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final pulumi.Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final pulumi.Output<String> location;

  /// Output only. Additional metadata specified in the meta section of text.
  /// Populated in FULL view.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Full resource name for the rule. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/rules/{rule}
  late final pulumi.Output<String> name;

  /// Output only. Indicate the rule can run in near real time live rule.
  /// If this is true, the rule uses the near real time live rule when the run
  /// frequency is set to LIVE.
  late final pulumi.Output<bool> nearRealTimeLiveRuleEligible;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. Resource names of the reference lists used in this rule.
  /// Populated in FULL view.
  late final pulumi.Output<List<String>> referenceLists;

  /// Output only. The timestamp of when the rule revision was created.
  /// Populated in FULL, REVISION_METADATA_ONLY views.
  late final pulumi.Output<String> revisionCreateTime;

  /// Output only. The revision ID of the rule.
  /// A new revision is created whenever the rule text is changed in any way.
  /// Format: v_{10 digits}_{9 digits}
  /// Populated in REVISION_METADATA_ONLY view and FULL view.
  late final pulumi.Output<String> revisionId;

  /// Rule Id is the ID of the Rule.
  late final pulumi.Output<String> ruleId;

  /// Resource name of the DataAccessScope bound to this rule.
  /// Populated in BASIC view and FULL view.
  /// If reference lists are used in the rule, validations will be performed
  /// against this scope to ensure that the reference lists are compatible with
  /// both the user's and the rule's scopes.
  /// The scope should be in the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope}".
  late final pulumi.Output<String?> scope;

  /// (Output)
  /// Output only. The severity of a rule's compilation diagnostic.
  /// Possible values:
  /// SEVERITY_UNSPECIFIED
  /// WARNING
  /// ERROR
  late final pulumi.Output<List<RuleSeverity>> severities;

  /// The YARA-L content of the rule.
  /// Populated in FULL view.
  late final pulumi.Output<String?> text;

  /// Possible values:
  /// RULE_TYPE_UNSPECIFIED
  /// SINGLE_EVENT
  /// MULTI_EVENT
  late final pulumi.Output<String> type;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_chronicle_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(String name, {RuleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:chronicle/rule:Rule',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.allowedRunFrequencies = registerOutput<List<String>>(
      'allowedRunFrequencies',
    );
    this.author = registerOutput<String>('author');
    this.compilationDiagnostics =
        registerOutput<List<RuleCompilationDiagnostic>>(
          'compilationDiagnostics',
        );
    this.compilationState = registerOutput<String>('compilationState');
    this.createTime = registerOutput<String>('createTime');
    this.dataTables = registerOutput<List<String>>('dataTables');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    this.nearRealTimeLiveRuleEligible = registerOutput<bool>(
      'nearRealTimeLiveRuleEligible',
    );
    this.project = registerOutput<String>('project');
    this.referenceLists = registerOutput<List<String>>('referenceLists');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.ruleId = registerOutput<String>('ruleId');
    this.scope = registerOutput<String?>('scope');
    this.severities = registerOutput<List<RuleSeverity>>('severities');
    this.text = registerOutput<String?>('text');
    this.type = registerOutput<String>('type');
  }
}
