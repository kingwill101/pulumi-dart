import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_feed_args.dart';
import 'project_feed_condition.dart';
import 'project_feed_feed_output_config.dart';

/// Describes a Cloud Asset Inventory feed used to to listen to asset updates.
///
///
/// To get more information about ProjectFeed, see:
///
/// * [API documentation](https://cloud.google.com/asset-inventory/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/asset-inventory/docs)
///
/// ## Example Usage
///
/// ### Cloud Asset Project Feed
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // The topic where the resource change notifications will be sent.
/// const feedOutput = new gcp.pubsub.Topic("feed_output", {
///     project: "my-project-name",
///     name: "network-updates",
/// });
/// // Create a feed that sends notifications about network resource updates.
/// const projectFeed = new gcp.cloudasset.ProjectFeed("project_feed", {
///     project: "my-project-name",
///     feedId: "network-updates",
///     contentType: "RESOURCE",
///     assetTypes: [
///         "compute.googleapis.com/Subnetwork",
///         "compute.googleapis.com/Network",
///     ],
///     feedOutputConfig: {
///         pubsubDestination: {
///             topic: feedOutput.id,
///         },
///     },
///     condition: {
///         expression: `!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// `,
///         title: "created",
///         description: "Send notifications on creation events",
///     },
/// });
/// // Find the project number of the project whose identity will be used for sending
/// // the asset change notifications.
/// const project = gcp.organizations.getProject({
///     projectId: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # The topic where the resource change notifications will be sent.
/// feed_output = gcp.pubsub.Topic("feed_output",
///     project="my-project-name",
///     name="network-updates")
/// # Create a feed that sends notifications about network resource updates.
/// project_feed = gcp.cloudasset.ProjectFeed("project_feed",
///     project="my-project-name",
///     feed_id="network-updates",
///     content_type="RESOURCE",
///     asset_types=[
///         "compute.googleapis.com/Subnetwork",
///         "compute.googleapis.com/Network",
///     ],
///     feed_output_config={
///         "pubsub_destination": {
///             "topic": feed_output.id,
///         },
///     },
///     condition={
///         "expression": """!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// """,
///         "title": "created",
///         "description": "Send notifications on creation events",
///     })
/// # Find the project number of the project whose identity will be used for sending
/// # the asset change notifications.
/// project = gcp.organizations.get_project(project_id="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The topic where the resource change notifications will be sent.
///     var feedOutput = new Gcp.PubSub.Topic("feed_output", new()
///     {
///         Project = "my-project-name",
///         Name = "network-updates",
///     });
///
///     // Create a feed that sends notifications about network resource updates.
///     var projectFeed = new Gcp.CloudAsset.ProjectFeed("project_feed", new()
///     {
///         Project = "my-project-name",
///         FeedId = "network-updates",
///         ContentType = "RESOURCE",
///         AssetTypes = new[]
///         {
///             "compute.googleapis.com/Subnetwork",
///             "compute.googleapis.com/Network",
///         },
///         FeedOutputConfig = new Gcp.CloudAsset.Inputs.ProjectFeedFeedOutputConfigArgs
///         {
///             PubsubDestination = new Gcp.CloudAsset.Inputs.ProjectFeedFeedOutputConfigPubsubDestinationArgs
///             {
///                 Topic = feedOutput.Id,
///             },
///         },
///         Condition = new Gcp.CloudAsset.Inputs.ProjectFeedConditionArgs
///         {
///             Expression = @"!temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
/// ",
///             Title = "created",
///             Description = "Send notifications on creation events",
///         },
///     });
///
///     // Find the project number of the project whose identity will be used for sending
///     // the asset change notifications.
///     var project = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudasset"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The topic where the resource change notifications will be sent.
/// 		feedOutput, err := pubsub.NewTopic(ctx, "feed_output", &pubsub.TopicArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Name:    pulumi.String("network-updates"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a feed that sends notifications about network resource updates.
/// 		_, err = cloudasset.NewProjectFeed(ctx, "project_feed", &cloudasset.ProjectFeedArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			FeedId:      pulumi.String("network-updates"),
/// 			ContentType: pulumi.String("RESOURCE"),
/// 			AssetTypes: pulumi.StringArray{
/// 				pulumi.String("compute.googleapis.com/Subnetwork"),
/// 				pulumi.String("compute.googleapis.com/Network"),
/// 			},
/// 			FeedOutputConfig: &cloudasset.ProjectFeedFeedOutputConfigArgs{
/// 				PubsubDestination: &cloudasset.ProjectFeedFeedOutputConfigPubsubDestinationArgs{
/// 					Topic: feedOutput.ID(),
/// 				},
/// 			},
/// 			Condition: &cloudasset.ProjectFeedConditionArgs{
/// 				Expression:  pulumi.String("!temporal_asset.deleted &&\ntemporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST\n"),
/// 				Title:       pulumi.String("created"),
/// 				Description: pulumi.String("Send notifications on creation events"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Find the project number of the project whose identity will be used for sending
/// 		// the asset change notifications.
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef("my-project-name"),
/// 		}, nil)
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.cloudasset.ProjectFeed;
/// import com.pulumi.gcp.cloudasset.ProjectFeedArgs;
/// import com.pulumi.gcp.cloudasset.inputs.ProjectFeedFeedOutputConfigArgs;
/// import com.pulumi.gcp.cloudasset.inputs.ProjectFeedFeedOutputConfigPubsubDestinationArgs;
/// import com.pulumi.gcp.cloudasset.inputs.ProjectFeedConditionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
///         // The topic where the resource change notifications will be sent.
///         var feedOutput = new Topic("feedOutput", TopicArgs.builder()
///             .project("my-project-name")
///             .name("network-updates")
///             .build());
///
///         // Create a feed that sends notifications about network resource updates.
///         var projectFeed = new ProjectFeed("projectFeed", ProjectFeedArgs.builder()
///             .project("my-project-name")
///             .feedId("network-updates")
///             .contentType("RESOURCE")
///             .assetTypes(
///                 "compute.googleapis.com/Subnetwork",
///                 "compute.googleapis.com/Network")
///             .feedOutputConfig(ProjectFeedFeedOutputConfigArgs.builder()
///                 .pubsubDestination(ProjectFeedFeedOutputConfigPubsubDestinationArgs.builder()
///                     .topic(feedOutput.id())
///                     .build())
///                 .build())
///             .condition(ProjectFeedConditionArgs.builder()
///                 .expression("""
/// !temporal_asset.deleted &&
/// temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
///                 """)
///                 .title("created")
///                 .description("Send notifications on creation events")
///                 .build())
///             .build());
///
///         // Find the project number of the project whose identity will be used for sending
///         // the asset change notifications.
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .projectId("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a feed that sends notifications about network resource updates.
///   projectFeed:
///     type: gcp:cloudasset:ProjectFeed
///     name: project_feed
///     properties:
///       project: my-project-name
///       feedId: network-updates
///       contentType: RESOURCE
///       assetTypes:
///         - compute.googleapis.com/Subnetwork
///         - compute.googleapis.com/Network
///       feedOutputConfig:
///         pubsubDestination:
///           topic: ${feedOutput.id}
///       condition:
///         expression: |
///           !temporal_asset.deleted &&
///           temporal_asset.prior_asset_state == google.cloud.asset.v1.TemporalAsset.PriorAssetState.DOES_NOT_EXIST
///         title: created
///         description: Send notifications on creation events
///   # The topic where the resource change notifications will be sent.
///   feedOutput:
///     type: gcp:pubsub:Topic
///     name: feed_output
///     properties:
///       project: my-project-name
///       name: network-updates
/// variables:
///   # Find the project number of the project whose identity will be used for sending
///   # the asset change notifications.
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: my-project-name
/// ```
///
///
/// ## Import
///
/// ProjectFeed can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/feeds/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ProjectFeed can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default projects/{{project}}/feeds/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudasset/projectFeed:ProjectFeed default {{name}}
/// ```
class ProjectFeed extends pulumi.CustomResource {
  /// A list of the full names of the assets to receive updates. You must specify either or both of
  /// assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
  /// exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
  /// See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info.
  late final pulumi.Output<List<String>?> assetNames;

  /// A list of types of the assets to receive updates. You must specify either or both of assetNames
  /// and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
  /// the feed. For example: "compute.googleapis.com/Disk"
  /// See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
  /// supported asset types.
  late final pulumi.Output<List<String>?> assetTypes;

  /// The project whose identity will be used when sending messages to the
  /// destination pubsub topic. It also specifies the project for API
  /// enablement check, quota, and billing. If not specified, the resource's
  /// project will be used.
  late final pulumi.Output<String?> billingProject;

  /// A condition which determines whether an asset update should be published. If specified, an asset
  /// will be returned only when the expression evaluates to true. When set, expression field
  /// must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
  /// expression "temporal_asset.deleted == true" will only publish Asset deletions. Other fields of
  /// condition are optional.
  /// Structure is documented below.
  late final pulumi.Output<ProjectFeedCondition?> condition;

  /// Asset content type. If not specified, no content but the asset name and type will be returned.
  /// Possible values are: `CONTENT_TYPE_UNSPECIFIED`, `RESOURCE`, `IAM_POLICY`, `ORG_POLICY`, `OS_INVENTORY`, `ACCESS_POLICY`.
  late final pulumi.Output<String?> contentType;

  /// This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  late final pulumi.Output<String> feedId;

  /// Output configuration for asset feed destination.
  /// Structure is documented below.
  late final pulumi.Output<ProjectFeedFeedOutputConfig> feedOutputConfig;

  /// The format will be projects/{projectNumber}/feeds/{client-assigned_feed_identifier}.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectFeed].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectFeed]. {@macro pulumi_cloudasset_project_feed_project_feed_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectFeed(
    String name, {
    ProjectFeedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:cloudasset/projectFeed:ProjectFeed',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.assetNames = registerOutput<List<String>?>('assetNames');
    this.assetTypes = registerOutput<List<String>?>('assetTypes');
    this.billingProject = registerOutput<String?>('billingProject');
    this.condition = registerOutput<ProjectFeedCondition?>('condition');
    this.contentType = registerOutput<String?>('contentType');
    this.feedId = registerOutput<String>('feedId');
    this.feedOutputConfig = registerOutput<ProjectFeedFeedOutputConfig>(
      'feedOutputConfig',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
