import 'package:pulumi/pulumi.dart';
import '../ai_logic_config_generative_language_config/ai_logic_config_generative_language_config.dart';
import '../ai_logic_config_telemetry_config/ai_logic_config_telemetry_config.dart';
import 'ai_logic_config_args.dart';

/// Configuration for Firebase AI Logic.
///
/// To get more information about Config, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/ai-logic/rest)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/ai-logic)
///
///
///
/// > **Note:**  All arguments marked as write-only values will not be stored in the state: `generative_language_config.api_key_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Firebaseailogic Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "basic",
/// name: "Firebase Project",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const _default = new gcp.firebase.Project("default", {project: project.projectId});
/// const firebase = new gcp.projects.Service("firebase", {
/// project: project.projectId,
/// service: "firebase.googleapis.com",
/// });
/// const ailogic = new gcp.projects.Service("ailogic", {
/// project: project.projectId,
/// service: "firebasevertexai.googleapis.com",
/// });
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
/// dependsOn: [
/// ailogic,
/// firebase,
/// ],
/// });
/// const defaultAiLogicConfig = new gcp.firebase.AiLogicConfig("default", {
/// project: _default.project,
/// location: "global",
/// }, {
/// dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
/// project_id="basic",
/// name="Firebase Project",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// default = gcp.firebase.Project("default", project=project.project_id)
/// firebase = gcp.projects.Service("firebase",
/// project=project.project_id,
/// service="firebase.googleapis.com")
/// ailogic = gcp.projects.Service("ailogic",
/// project=project.project_id,
/// service="firebasevertexai.googleapis.com")
/// # It takes a while for permissions to propagate
/// # If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[
/// ailogic,
/// firebase,
/// ]))
/// default_ai_logic_config = gcp.firebase.AiLogicConfig("default",
/// project=default.project,
/// location="global",
/// opts = pulumi.ResourceOptions(depends_on=[wait30s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "basic",
/// Name = "Firebase Project",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var @default = new Gcp.Firebase.Project("default", new()
/// {
/// ProjectID = project.ProjectId,
/// });
///
/// var firebase = new Gcp.Projects.Service("firebase", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "firebase.googleapis.com",
/// });
///
/// var ailogic = new Gcp.Projects.Service("ailogic", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "firebasevertexai.googleapis.com",
/// });
///
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// var wait30s = new Time.Sleep("wait_30s", new()
/// {
/// CreateDuration = "30s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// ailogic,
/// firebase,
/// },
/// });
///
/// var defaultAiLogicConfig = new Gcp.Firebase.AiLogicConfig("default", new()
/// {
/// Project = @default.ProjectID,
/// Location = "global",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait30s,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("basic"),
/// Name:           pulumi.String("Firebase Project"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := firebase.NewProject(ctx, "default", &firebase.ProjectArgs{
/// Project: project.ProjectId,
/// })
/// if err != nil {
/// return err
/// }
/// firebase, err := projects.NewService(ctx, "firebase", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("firebase.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// ailogic, err := projects.NewService(ctx, "ailogic", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("firebasevertexai.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s, err := time.NewSleep(ctx, "wait_30s", &time.SleepArgs{
/// CreateDuration: pulumi.String("30s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// ailogic,
/// firebase,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewAiLogicConfig(ctx, "default", &firebase.AiLogicConfigArgs{
/// Project:  _default.Project,
/// Location: pulumi.String("global"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait30s,
/// }))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AiLogicConfig;
/// import com.pulumi.gcp.firebase.AiLogicConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var project = new com.pulumi.gcp.organizations.Project("project", com.pulumi.gcp.organizations.ProjectArgs.builder()
/// .projectId("basic")
/// .name("Firebase Project")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var default_ = new com.pulumi.gcp.firebase.Project("default", com.pulumi.gcp.firebase.ProjectArgs.builder()
/// .project(project.projectId())
/// .build());
///
/// var firebase = new Service("firebase", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("firebase.googleapis.com")
/// .build());
///
/// var ailogic = new Service("ailogic", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("firebasevertexai.googleapis.com")
/// .build());
///
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// var wait30s = new Sleep("wait30s", SleepArgs.builder()
/// .createDuration("30s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// ailogic,
/// firebase)
/// .build());
///
/// var defaultAiLogicConfig = new AiLogicConfig("defaultAiLogicConfig", AiLogicConfigArgs.builder()
/// .project(default_.project())
/// .location("global")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait30s)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: basic
/// name: Firebase Project
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// default:
/// type: gcp:firebase:Project
/// properties:
/// project: ${project.projectId}
/// firebase:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: firebase.googleapis.com
/// ailogic:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: firebasevertexai.googleapis.com
/// # It takes a while for permissions to propagate
/// # If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s:
/// type: time:Sleep
/// name: wait_30s
/// properties:
/// createDuration: 30s
/// options:
/// dependsOn:
/// - ${ailogic}
/// - ${firebase}
/// defaultAiLogicConfig:
/// type: gcp:firebase:AiLogicConfig
/// name: default
/// properties:
/// project: ${default.project}
/// location: global
/// options:
/// dependsOn:
/// - ${wait30s}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firebaseailogic Config Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
/// projectId: "full",
/// name: "Firebase Project",
/// orgId: "123456789",
/// billingAccount: "000000-0000000-0000000-000000",
/// deletionPolicy: "DELETE",
/// });
/// const _default = new gcp.firebase.Project("default", {project: project.projectId});
/// const firebase = new gcp.projects.Service("firebase", {
/// project: project.projectId,
/// service: "firebase.googleapis.com",
/// });
/// const ailogic = new gcp.projects.Service("ailogic", {
/// project: project.projectId,
/// service: "firebasevertexai.googleapis.com",
/// });
/// const gemini = new gcp.projects.ApiKey("gemini", {
/// project: project.projectId,
/// name: "gemini-api-key",
/// displayName: "Gemini Developer API key",
/// restrictions: {
/// apiTargets: [{
/// service: "generativelanguage.googleapis.com",
/// }],
/// },
/// });
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// const wait30s = new time.Sleep("wait_30s", {createDuration: "30s"}, {
/// dependsOn: [
/// ailogic,
/// firebase,
/// ],
/// });
/// const defaultAiLogicConfig = new gcp.firebase.AiLogicConfig("default", {
/// project: _default.project,
/// location: "global",
/// generativeLanguageConfig: {
/// apiKey: gemini.keyString,
/// },
/// telemetryConfig: {
/// mode: "ALL",
/// samplingRate: 1,
/// },
/// }, {
/// dependsOn: [wait30s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
/// project_id="full",
/// name="Firebase Project",
/// org_id="123456789",
/// billing_account="000000-0000000-0000000-000000",
/// deletion_policy="DELETE")
/// default = gcp.firebase.Project("default", project=project.project_id)
/// firebase = gcp.projects.Service("firebase",
/// project=project.project_id,
/// service="firebase.googleapis.com")
/// ailogic = gcp.projects.Service("ailogic",
/// project=project.project_id,
/// service="firebasevertexai.googleapis.com")
/// gemini = gcp.projects.ApiKey("gemini",
/// project=project.project_id,
/// name="gemini-api-key",
/// display_name="Gemini Developer API key",
/// restrictions={
/// "api_targets": [{
/// "service": "generativelanguage.googleapis.com",
/// }],
/// })
/// # It takes a while for permissions to propagate
/// # If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s = time.Sleep("wait_30s", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[
/// ailogic,
/// firebase,
/// ]))
/// default_ai_logic_config = gcp.firebase.AiLogicConfig("default",
/// project=default.project,
/// location="global",
/// generative_language_config={
/// "api_key": gemini.key_string,
/// },
/// telemetry_config={
/// "mode": "ALL",
/// "sampling_rate": 1,
/// },
/// opts = pulumi.ResourceOptions(depends_on=[wait30s]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = new Gcp.Organizations.Project("project", new()
/// {
/// ProjectId = "full",
/// Name = "Firebase Project",
/// OrgId = "123456789",
/// BillingAccount = "000000-0000000-0000000-000000",
/// DeletionPolicy = "DELETE",
/// });
///
/// var @default = new Gcp.Firebase.Project("default", new()
/// {
/// ProjectID = project.ProjectId,
/// });
///
/// var firebase = new Gcp.Projects.Service("firebase", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "firebase.googleapis.com",
/// });
///
/// var ailogic = new Gcp.Projects.Service("ailogic", new()
/// {
/// Project = project.ProjectId,
/// ServiceName = "firebasevertexai.googleapis.com",
/// });
///
/// var gemini = new Gcp.Projects.ApiKey("gemini", new()
/// {
/// Project = project.ProjectId,
/// Name = "gemini-api-key",
/// DisplayName = "Gemini Developer API key",
/// Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
/// {
/// ApiTargets = new[]
/// {
/// new Gcp.Projects.Inputs.ApiKeyRestrictionsApiTargetArgs
/// {
/// Service = "generativelanguage.googleapis.com",
/// },
/// },
/// },
/// });
///
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// var wait30s = new Time.Sleep("wait_30s", new()
/// {
/// CreateDuration = "30s",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// ailogic,
/// firebase,
/// },
/// });
///
/// var defaultAiLogicConfig = new Gcp.Firebase.AiLogicConfig("default", new()
/// {
/// Project = @default.ProjectID,
/// Location = "global",
/// GenerativeLanguageConfig = new Gcp.Firebase.Inputs.AiLogicConfigGenerativeLanguageConfigArgs
/// {
/// ApiKey = gemini.KeyString,
/// },
/// TelemetryConfig = new Gcp.Firebase.Inputs.AiLogicConfigTelemetryConfigArgs
/// {
/// Mode = "ALL",
/// SamplingRate = 1,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// wait30s,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// ProjectId:      pulumi.String("full"),
/// Name:           pulumi.String("Firebase Project"),
/// OrgId:          pulumi.String("123456789"),
/// BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// DeletionPolicy: pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := firebase.NewProject(ctx, "default", &firebase.ProjectArgs{
/// Project: project.ProjectId,
/// })
/// if err != nil {
/// return err
/// }
/// firebase, err := projects.NewService(ctx, "firebase", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("firebase.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// ailogic, err := projects.NewService(ctx, "ailogic", &projects.ServiceArgs{
/// Project: project.ProjectId,
/// Service: pulumi.String("firebasevertexai.googleapis.com"),
/// })
/// if err != nil {
/// return err
/// }
/// gemini, err := projects.NewApiKey(ctx, "gemini", &projects.ApiKeyArgs{
/// Project:     project.ProjectId,
/// Name:        pulumi.String("gemini-api-key"),
/// DisplayName: pulumi.String("Gemini Developer API key"),
/// Restrictions: &projects.ApiKeyRestrictionsArgs{
/// ApiTargets: projects.ApiKeyRestrictionsApiTargetArray{
/// &projects.ApiKeyRestrictionsApiTargetArgs{
/// Service: pulumi.String("generativelanguage.googleapis.com"),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s, err := time.NewSleep(ctx, "wait_30s", &time.SleepArgs{
/// CreateDuration: pulumi.String("30s"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// ailogic,
/// firebase,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewAiLogicConfig(ctx, "default", &firebase.AiLogicConfigArgs{
/// Project:  _default.Project,
/// Location: pulumi.String("global"),
/// GenerativeLanguageConfig: &firebase.AiLogicConfigGenerativeLanguageConfigArgs{
/// ApiKey: gemini.KeyString,
/// },
/// TelemetryConfig: &firebase.AiLogicConfigTelemetryConfigArgs{
/// Mode:         pulumi.String("ALL"),
/// SamplingRate: pulumi.Float64(1),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// wait30s,
/// }))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.projects.ApiKey;
/// import com.pulumi.gcp.projects.ApiKeyArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.firebase.AiLogicConfig;
/// import com.pulumi.gcp.firebase.AiLogicConfigArgs;
/// import com.pulumi.gcp.firebase.inputs.AiLogicConfigGenerativeLanguageConfigArgs;
/// import com.pulumi.gcp.firebase.inputs.AiLogicConfigTelemetryConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var project = new com.pulumi.gcp.organizations.Project("project", com.pulumi.gcp.organizations.ProjectArgs.builder()
/// .projectId("full")
/// .name("Firebase Project")
/// .orgId("123456789")
/// .billingAccount("000000-0000000-0000000-000000")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var default_ = new com.pulumi.gcp.firebase.Project("default", com.pulumi.gcp.firebase.ProjectArgs.builder()
/// .project(project.projectId())
/// .build());
///
/// var firebase = new Service("firebase", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("firebase.googleapis.com")
/// .build());
///
/// var ailogic = new Service("ailogic", ServiceArgs.builder()
/// .project(project.projectId())
/// .service("firebasevertexai.googleapis.com")
/// .build());
///
/// var gemini = new ApiKey("gemini", ApiKeyArgs.builder()
/// .project(project.projectId())
/// .name("gemini-api-key")
/// .displayName("Gemini Developer API key")
/// .restrictions(ApiKeyRestrictionsArgs.builder()
/// .apiTargets(ApiKeyRestrictionsApiTargetArgs.builder()
/// .service("generativelanguage.googleapis.com")
/// .build())
/// .build())
/// .build());
///
/// // It takes a while for permissions to propagate
/// // If your Terraform setup has a retry mechanism, this wait is unnecessary
/// var wait30s = new Sleep("wait30s", SleepArgs.builder()
/// .createDuration("30s")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// ailogic,
/// firebase)
/// .build());
///
/// var defaultAiLogicConfig = new AiLogicConfig("defaultAiLogicConfig", AiLogicConfigArgs.builder()
/// .project(default_.project())
/// .location("global")
/// .generativeLanguageConfig(AiLogicConfigGenerativeLanguageConfigArgs.builder()
/// .apiKey(gemini.keyString())
/// .build())
/// .telemetryConfig(AiLogicConfigTelemetryConfigArgs.builder()
/// .mode("ALL")
/// .samplingRate(1.0)
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(wait30s)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// project:
/// type: gcp:organizations:Project
/// properties:
/// projectId: full
/// name: Firebase Project
/// orgId: '123456789'
/// billingAccount: 000000-0000000-0000000-000000
/// deletionPolicy: DELETE
/// default:
/// type: gcp:firebase:Project
/// properties:
/// project: ${project.projectId}
/// firebase:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: firebase.googleapis.com
/// ailogic:
/// type: gcp:projects:Service
/// properties:
/// project: ${project.projectId}
/// service: firebasevertexai.googleapis.com
/// gemini:
/// type: gcp:projects:ApiKey
/// properties:
/// project: ${project.projectId}
/// name: gemini-api-key
/// displayName: Gemini Developer API key
/// restrictions:
/// apiTargets:
/// - service: generativelanguage.googleapis.com
/// # It takes a while for permissions to propagate
/// # If your Terraform setup has a retry mechanism, this wait is unnecessary
/// wait30s:
/// type: time:Sleep
/// name: wait_30s
/// properties:
/// createDuration: 30s
/// options:
/// dependsOn:
/// - ${ailogic}
/// - ${firebase}
/// defaultAiLogicConfig:
/// type: gcp:firebase:AiLogicConfig
/// name: default
/// properties:
/// project: ${default.project}
/// location: global
/// generativeLanguageConfig:
/// apiKey: ${gemini.keyString}
/// telemetryConfig:
/// mode: ALL
/// samplingRate: 1
/// options:
/// dependsOn:
/// - ${wait30s}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/config`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default projects/{{project}}/locations/{{location}}/config
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/aiLogicConfig:AiLogicConfig default {{location}}
/// ```
class AiLogicConfig extends CustomResource {
  /// Configuration for using the Gemini Developer API via Firebase AI Logic.
  /// When using the Gemini Developer API via Firebase AI Logic, a separate Gemini
  /// API key is stored in this configuration *on the server* so that you do
  /// **not** add your Gemini API key directly into your app's codebase.
  /// Structure is documented below.
  late final Output<AiLogicConfigGenerativeLanguageConfig?>
      generativeLanguageConfig;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String?> location;

  /// Identifier. The resource name of the config.
  /// Format: projects/{project}/locations/{location}/config
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configuration for telemetry.
  /// Telemetry is the collection of metrics, logs, and traces recorded by the
  /// Firebase AI Logic backend.
  /// Structure is documented below.
  late final Output<AiLogicConfigTelemetryConfig?> telemetryConfig;

  AiLogicConfig(
    String name, {
    AiLogicConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/aiLogicConfig:AiLogicConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.generativeLanguageConfig =
        registerOutput<AiLogicConfigGenerativeLanguageConfig?>(
            'generativeLanguageConfig');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.telemetryConfig =
        registerOutput<AiLogicConfigTelemetryConfig?>('telemetryConfig');
  }
}
