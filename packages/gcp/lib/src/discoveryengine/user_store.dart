import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_store_args.dart';

/// Represents a user store.
///
///
/// To get more information about UserStore, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.userStores)
///
/// ## Example Usage
///
/// ### Discoveryengine Userstore Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.discoveryengine.LicenseConfig("basic", {
///     location: "us",
///     licenseConfigId: "license-config-id",
///     licenseCount: 50,
///     subscriptionTier: "SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///     startDate: {
///         year: 2099,
///         month: 1,
///         day: 1,
///     },
///     endDate: {
///         year: 2100,
///         month: 1,
///         day: 1,
///     },
///     subscriptionTerm: "SUBSCRIPTION_TERM_ONE_YEAR",
/// });
/// const project = gcp.organizations.getProject({});
/// const basicUserStore = new gcp.discoveryengine.UserStore("basic", {
///     location: basic.location,
///     defaultLicenseConfig: pulumi.all([project, basic.location, basic.licenseConfigId]).apply(([project, location, licenseConfigId]) => `projects/${project.number}/locations/${location}/licenseConfigs/${licenseConfigId}`),
///     enableLicenseAutoRegister: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.discoveryengine.LicenseConfig("basic",
///     location="us",
///     license_config_id="license-config-id",
///     license_count=50,
///     subscription_tier="SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///     start_date={
///         "year": 2099,
///         "month": 1,
///         "day": 1,
///     },
///     end_date={
///         "year": 2100,
///         "month": 1,
///         "day": 1,
///     },
///     subscription_term="SUBSCRIPTION_TERM_ONE_YEAR")
/// project = gcp.organizations.get_project()
/// basic_user_store = gcp.discoveryengine.UserStore("basic",
///     location=basic.location,
///     default_license_config=pulumi.Output.all(
///         location=basic.location,
///         license_config_id=basic.license_config_id
/// ).apply(lambda resolved_outputs: f"projects/{project.number}/locations/{resolved_outputs['location']}/licenseConfigs/{resolved_outputs['license_config_id']}")
/// ,
///     enable_license_auto_register=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.DiscoveryEngine.LicenseConfig("basic", new()
///     {
///         Location = "us",
///         LicenseConfigId = "license-config-id",
///         LicenseCount = 50,
///         SubscriptionTier = "SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT",
///         StartDate = new Gcp.DiscoveryEngine.Inputs.LicenseConfigStartDateArgs
///         {
///             Year = 2099,
///             Month = 1,
///             Day = 1,
///         },
///         EndDate = new Gcp.DiscoveryEngine.Inputs.LicenseConfigEndDateArgs
///         {
///             Year = 2100,
///             Month = 1,
///             Day = 1,
///         },
///         SubscriptionTerm = "SUBSCRIPTION_TERM_ONE_YEAR",
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var basicUserStore = new Gcp.DiscoveryEngine.UserStore("basic", new()
///     {
///         Location = basic.Location,
///         DefaultLicenseConfig = Output.Tuple(project, basic.Location, basic.LicenseConfigId).Apply(values =>
///         {
///             var project = values.Item1;
///             var location = values.Item2;
///             var licenseConfigId = values.Item3;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/{location}/licenseConfigs/{licenseConfigId}";
///         }),
///         EnableLicenseAutoRegister = true,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := discoveryengine.NewLicenseConfig(ctx, "basic", &discoveryengine.LicenseConfigArgs{
/// 			Location:         pulumi.String("us"),
/// 			LicenseConfigId:  pulumi.String("license-config-id"),
/// 			LicenseCount:     pulumi.Int(50),
/// 			SubscriptionTier: pulumi.String("SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT"),
/// 			StartDate: &discoveryengine.LicenseConfigStartDateArgs{
/// 				Year:  pulumi.Int(2099),
/// 				Month: pulumi.Int(1),
/// 				Day:   pulumi.Int(1),
/// 			},
/// 			EndDate: &discoveryengine.LicenseConfigEndDateArgs{
/// 				Year:  pulumi.Int(2100),
/// 				Month: pulumi.Int(1),
/// 				Day:   pulumi.Int(1),
/// 			},
/// 			SubscriptionTerm: pulumi.String("SUBSCRIPTION_TERM_ONE_YEAR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewUserStore(ctx, "basic", &discoveryengine.UserStoreArgs{
/// 			Location: basic.Location,
/// 			DefaultLicenseConfig: pulumi.All(basic.Location, basic.LicenseConfigId).ApplyT(func(_args []interface{}) (string, error) {
/// 				location := _args[0].(string)
/// 				licenseConfigId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/%v/licenseConfigs/%v", project.Number, location, licenseConfigId), nil
/// 			}).(pulumi.StringOutput),
/// 			EnableLicenseAutoRegister: pulumi.Bool(true),
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
/// import com.pulumi.gcp.discoveryengine.LicenseConfig;
/// import com.pulumi.gcp.discoveryengine.LicenseConfigArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.LicenseConfigStartDateArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.LicenseConfigEndDateArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.discoveryengine.UserStore;
/// import com.pulumi.gcp.discoveryengine.UserStoreArgs;
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
///         var basic = new LicenseConfig("basic", LicenseConfigArgs.builder()
///             .location("us")
///             .licenseConfigId("license-config-id")
///             .licenseCount(50)
///             .subscriptionTier("SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT")
///             .startDate(LicenseConfigStartDateArgs.builder()
///                 .year(2099)
///                 .month(1)
///                 .day(1)
///                 .build())
///             .endDate(LicenseConfigEndDateArgs.builder()
///                 .year(2100)
///                 .month(1)
///                 .day(1)
///                 .build())
///             .subscriptionTerm("SUBSCRIPTION_TERM_ONE_YEAR")
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var basicUserStore = new UserStore("basicUserStore", UserStoreArgs.builder()
///             .location(basic.location())
///             .defaultLicenseConfig(Output.tuple(basic.location(), basic.licenseConfigId()).applyValue(values -> {
///                 var location = values.t1;
///                 var licenseConfigId = values.t2;
///                 return String.format("projects/%s/locations/%s/licenseConfigs/%s", project.number(),location,licenseConfigId);
///             }))
///             .enableLicenseAutoRegister(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:discoveryengine:LicenseConfig
///     properties:
///       location: us
///       licenseConfigId: license-config-id
///       licenseCount: 50
///       subscriptionTier: SUBSCRIPTION_TIER_SEARCH_AND_ASSISTANT
///       startDate:
///         year: 2099
///         month: 1
///         day: 1
///       endDate:
///         year: 2100
///         month: 1
///         day: 1
///       subscriptionTerm: SUBSCRIPTION_TERM_ONE_YEAR
///   basicUserStore:
///     type: gcp:discoveryengine:UserStore
///     name: basic
///     properties:
///       location: ${basic.location}
///       defaultLicenseConfig: projects/${project.number}/locations/${basic.location}/licenseConfigs/${basic.licenseConfigId}
///       enableLicenseAutoRegister: true
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// UserStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/userStores/{{user_store_id}}`
///
/// * `{{project}}/{{location}}/{{user_store_id}}`
///
/// * `{{location}}/{{user_store_id}}`
///
/// When using the `pulumi import` command, UserStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default projects/{{project}}/locations/{{location}}/userStores/{{user_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default {{project}}/{{location}}/{{user_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default {{location}}/{{user_store_id}}
/// ```
class UserStore extends pulumi.CustomResource {
  /// The resource name of the default license config assigned to users created in
  /// this user store. Format:
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  /// If `enableLicenseAutoRegister` is true, new users will automatically
  /// register under the default subscription.
  /// If the default license config doesn't have remaining license seats left,
  /// new users will not be assigned with license.
  late final pulumi.Output<String?> defaultLicenseConfig;

  /// Whether to enable automatic license update for users with expired licenses
  /// in this user store. If enabled, users with expired licenses will
  /// automatically be updated to the default subscription if there are
  /// remaining license seats.
  late final pulumi.Output<bool?> enableExpiredLicenseAutoUpdate;

  /// Whether to enable automatic license registration for new users created in
  /// this user store. If enabled, new users will automatically register under
  /// the default subscription.
  late final pulumi.Output<bool?> enableLicenseAutoRegister;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The unique full resource name of the user store. Values are of the format
  /// `projects/{project}/locations/{location}/userStores/{user_store_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The ID of the user store. Currently only accepts "default_user_store".
  late final pulumi.Output<String?> userStoreId;

  /// Creates a new [UserStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserStore]. {@macro pulumi_discoveryengine_user_store_user_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserStore(
    String name, {
    UserStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/userStore:UserStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultLicenseConfig = registerOutput<String?>('defaultLicenseConfig');
    this.enableExpiredLicenseAutoUpdate =
        registerOutput<bool?>('enableExpiredLicenseAutoUpdate');
    this.enableLicenseAutoRegister =
        registerOutput<bool?>('enableLicenseAutoRegister');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.userStoreId = registerOutput<String?>('userStoreId');
  }
}
