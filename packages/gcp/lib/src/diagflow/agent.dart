import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_args.dart';

/// A Dialogflow agent is a virtual agent that handles conversations with your end-users. It is a natural language
/// understanding module that understands the nuances of human language. Dialogflow translates end-user text or audio
/// during a conversation to structured data that your apps and services can understand. You design and build a Dialogflow
/// agent to handle the types of conversations required for your system.
///
///
/// To get more information about Agent, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Agent Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agentProject = new gcp.organizations.Project("agent_project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const agentProjectService = new gcp.projects.Service("agent_project", {
///     project: agentProject.projectId,
///     service: "dialogflow.googleapis.com",
///     disableDependentServices: false,
/// });
/// const dialogflowServiceAccount = new gcp.serviceaccount.Account("dialogflow_service_account", {accountId: "my-account"});
/// const agentCreate = new gcp.projects.IAMMember("agent_create", {
///     project: agentProjectService.project,
///     role: "roles/dialogflow.admin",
///     member: pulumi.interpolate`serviceAccount:${dialogflowServiceAccount.email}`,
/// });
/// const fullAgent = new gcp.diagflow.Agent("full_agent", {
///     project: agentProject.projectId,
///     displayName: "dialogflow-agent",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableLogging: true,
///     matchMode: "MATCH_MODE_ML_ONLY",
///     classificationThreshold: 0.3,
///     apiVersion: "API_VERSION_V2_BETA_1",
///     tier: "TIER_STANDARD",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent_project = gcp.organizations.Project("agent_project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// agent_project_service = gcp.projects.Service("agent_project",
///     project=agent_project.project_id,
///     service="dialogflow.googleapis.com",
///     disable_dependent_services=False)
/// dialogflow_service_account = gcp.serviceaccount.Account("dialogflow_service_account", account_id="my-account")
/// agent_create = gcp.projects.IAMMember("agent_create",
///     project=agent_project_service.project,
///     role="roles/dialogflow.admin",
///     member=dialogflow_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// full_agent = gcp.diagflow.Agent("full_agent",
///     project=agent_project.project_id,
///     display_name="dialogflow-agent",
///     default_language_code="en",
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_logging=True,
///     match_mode="MATCH_MODE_ML_ONLY",
///     classification_threshold=0.3,
///     api_version="API_VERSION_V2_BETA_1",
///     tier="TIER_STANDARD")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentProject = new Gcp.Organizations.Project("agent_project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var agentProjectService = new Gcp.Projects.Service("agent_project", new()
///     {
///         Project = agentProject.ProjectId,
///         ServiceName = "dialogflow.googleapis.com",
///         DisableDependentServices = false,
///     });
///
///     var dialogflowServiceAccount = new Gcp.ServiceAccount.Account("dialogflow_service_account", new()
///     {
///         AccountId = "my-account",
///     });
///
///     var agentCreate = new Gcp.Projects.IAMMember("agent_create", new()
///     {
///         Project = agentProjectService.Project,
///         Role = "roles/dialogflow.admin",
///         Member = dialogflowServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var fullAgent = new Gcp.Diagflow.Agent("full_agent", new()
///     {
///         Project = agentProject.ProjectId,
///         DisplayName = "dialogflow-agent",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableLogging = true,
///         MatchMode = "MATCH_MODE_ML_ONLY",
///         ClassificationThreshold = 0.3,
///         ApiVersion = "API_VERSION_V2_BETA_1",
///         Tier = "TIER_STANDARD",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agentProject, err := organizations.NewProject(ctx, "agent_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agentProjectService, err := projects.NewService(ctx, "agent_project", &projects.ServiceArgs{
/// 			Project:                  agentProject.ProjectId,
/// 			Service:                  pulumi.String("dialogflow.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dialogflowServiceAccount, err := serviceaccount.NewAccount(ctx, "dialogflow_service_account", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("my-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "agent_create", &projects.IAMMemberArgs{
/// 			Project: agentProjectService.Project,
/// 			Role:    pulumi.String("roles/dialogflow.admin"),
/// 			Member: dialogflowServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewAgent(ctx, "full_agent", &diagflow.AgentArgs{
/// 			Project:             agentProject.ProjectId,
/// 			DisplayName:         pulumi.String("dialogflow-agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                pulumi.String("America/New_York"),
/// 			Description:             pulumi.String("Example description."),
/// 			AvatarUri:               pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableLogging:           pulumi.Bool(true),
/// 			MatchMode:               pulumi.String("MATCH_MODE_ML_ONLY"),
/// 			ClassificationThreshold: pulumi.Float64(0.3),
/// 			ApiVersion:              pulumi.String("API_VERSION_V2_BETA_1"),
/// 			Tier:                    pulumi.String("TIER_STANDARD"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
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
///         var agentProject = new Project("agentProject", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var agentProjectService = new Service("agentProjectService", ServiceArgs.builder()
///             .project(agentProject.projectId())
///             .service("dialogflow.googleapis.com")
///             .disableDependentServices(false)
///             .build());
///
///         var dialogflowServiceAccount = new Account("dialogflowServiceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .build());
///
///         var agentCreate = new IAMMember("agentCreate", IAMMemberArgs.builder()
///             .project(agentProjectService.project())
///             .role("roles/dialogflow.admin")
///             .member(dialogflowServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var fullAgent = new Agent("fullAgent", AgentArgs.builder()
///             .project(agentProject.projectId())
///             .displayName("dialogflow-agent")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableLogging(true)
///             .matchMode("MATCH_MODE_ML_ONLY")
///             .classificationThreshold(0.3)
///             .apiVersion("API_VERSION_V2_BETA_1")
///             .tier("TIER_STANDARD")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agentProject:
///     type: gcp:organizations:Project
///     name: agent_project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   agentProjectService:
///     type: gcp:projects:Service
///     name: agent_project
///     properties:
///       project: ${agentProject.projectId}
///       service: dialogflow.googleapis.com
///       disableDependentServices: false
///   dialogflowServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: dialogflow_service_account
///     properties:
///       accountId: my-account
///   agentCreate:
///     type: gcp:projects:IAMMember
///     name: agent_create
///     properties:
///       project: ${agentProjectService.project}
///       role: roles/dialogflow.admin
///       member: serviceAccount:${dialogflowServiceAccount.email}
///   fullAgent:
///     type: gcp:diagflow:Agent
///     name: full_agent
///     properties:
///       project: ${agentProject.projectId}
///       displayName: dialogflow-agent
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableLogging: true
///       matchMode: MATCH_MODE_ML_ONLY
///       classificationThreshold: 0.3
///       apiVersion: API_VERSION_V2_BETA_1
///       tier: TIER_STANDARD
/// ```
///
///
/// ## Import
///
/// Agent can be imported using any of these accepted formats:
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, Agent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/agent:Agent default {{project}}
/// ```
class Agent extends pulumi.CustomResource {
  /// API version displayed in Dialogflow console. If not specified, V2 API is assumed. Clients are free to query
  /// different service endpoints for different API versions. However, bots connectors and webhook calls will follow
  /// the specified API version.
  /// * API_VERSION_V1: Legacy V1 API.
  /// * API_VERSION_V2: V2 API.
  /// * API_VERSION_V2_BETA_1: V2beta1 API.
  /// Possible values are: `API_VERSION_V1`, `API_VERSION_V2`, `API_VERSION_V2_BETA_1`.
  late final pulumi.Output<String> apiVersion;

  /// The URI of the agent's avatar, which are used throughout the Dialogflow console. When an image URL is entered
  /// into this field, the Dialogflow will save the image in the backend. The address of the backend image returned
  /// from the API will be shown in the [avatarUriBackend] field.
  late final pulumi.Output<String?> avatarUri;

  /// The URI of the agent's avatar as returned from the API. Output only. To provide an image URL for the agent avatar,
  /// the [avatarUri] field can be used.
  late final pulumi.Output<String> avatarUriBackend;

  /// To filter out false positive results and still get variety in matched natural language inputs for your agent,
  /// you can tune the machine learning classification threshold. If the returned score value is less than the threshold
  /// value, then a fallback intent will be triggered or, if there are no fallback intents defined, no intent will be
  /// triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the
  /// default of 0.3 is used.
  late final pulumi.Output<double?> classificationThreshold;

  /// The default language of the agent as a language tag. [See Language Support](https://cloud.google.com/dialogflow/docs/reference/language)
  /// for a list of the currently supported language codes. This field cannot be updated after creation.
  late final pulumi.Output<String> defaultLanguageCode;

  /// The description of this agent. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;

  /// The name of this agent.
  late final pulumi.Output<String> displayName;

  /// Determines whether this agent should log conversation queries.
  late final pulumi.Output<bool?> enableLogging;

  /// Determines how intents are detected from user queries.
  /// * MATCH_MODE_HYBRID: Best for agents with a small number of examples in intents and/or wide use of templates
  /// syntax and composite entities.
  /// * MATCH_MODE_ML_ONLY: Can be used for agents with a large number of examples in intents, especially the ones
  /// using @sys.any or very large developer entities.
  /// Possible values are: `MATCH_MODE_HYBRID`, `MATCH_MODE_ML_ONLY`.
  late final pulumi.Output<String> matchMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The list of all languages supported by this agent (except for the defaultLanguageCode).
  late final pulumi.Output<List<String>?> supportedLanguageCodes;

  /// The agent tier. If not specified, TIER_STANDARD is assumed.
  /// * TIER_STANDARD: Standard tier.
  /// * TIER_ENTERPRISE: Enterprise tier (Essentials).
  /// * TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
  /// NOTE: Due to consistency issues, the provider will not read this field from the API. Drift is possible between
  /// the the provider state and Dialogflow if the agent tier is changed outside of the provider.
  late final pulumi.Output<String?> tier;

  /// The time zone of this agent from the [time zone database](https://www.iana.org/time-zones), e.g., America/New_York,
  /// Europe/Paris.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [Agent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Agent]. {@macro pulumi_diagflow_agent_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Agent(
    String name, {
    AgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/agent:Agent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiVersion = registerOutput<String>('apiVersion');
    this.avatarUri = registerOutput<String?>('avatarUri');
    this.avatarUriBackend = registerOutput<String>('avatarUriBackend');
    this.classificationThreshold =
        registerOutput<double?>('classificationThreshold');
    this.defaultLanguageCode = registerOutput<String>('defaultLanguageCode');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.matchMode = registerOutput<String>('matchMode');
    this.project = registerOutput<String>('project');
    this.supportedLanguageCodes =
        registerOutput<List<String>?>('supportedLanguageCodes');
    this.tier = registerOutput<String?>('tier');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
