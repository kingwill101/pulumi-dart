import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_app_args.dart';

/// A Google Cloud Firebase Apple application instance
///
/// To get more information about AppleApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/ios/setup)
///
/// ## Example Usage
///
/// ### Firebase Apple App Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.AppleApp("default", {
///     project: "my-project-name",
///     displayName: "Display Name Basic",
///     bundleId: "apple.app.12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.AppleApp("default",
///     project="my-project-name",
///     display_name="Display Name Basic",
///     bundle_id="apple.app.12345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Firebase.AppleApp("default", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name Basic",
///         BundleId = "apple.app.12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := firebase.NewAppleApp(ctx, "default", &firebase.AppleAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Display Name Basic"),
/// 			BundleId:    pulumi.String("apple.app.12345"),
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
/// import com.pulumi.gcp.firebase.AppleApp;
/// import com.pulumi.gcp.firebase.AppleAppArgs;
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
///         var default_ = new AppleApp("default", AppleAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name Basic")
///             .bundleId("apple.app.12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:firebase:AppleApp
///     properties:
///       project: my-project-name
///       displayName: Display Name Basic
///       bundleId: apple.app.12345
/// ```
///
/// ### Firebase Apple App Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const apple = new gcp.projects.ApiKey("apple", {
///     name: "api-key",
///     displayName: "Display Name Full",
///     project: "my-project-name",
///     restrictions: {
///         iosKeyRestrictions: {
///             allowedBundleIds: ["apple.app.12345"],
///         },
///     },
/// });
/// const full = new gcp.firebase.AppleApp("full", {
///     project: "my-project-name",
///     displayName: "Display Name Full",
///     bundleId: "apple.app.12345",
///     appStoreId: "12345",
///     teamId: "9987654321",
///     apiKeyId: apple.uid,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// apple = gcp.projects.ApiKey("apple",
///     name="api-key",
///     display_name="Display Name Full",
///     project="my-project-name",
///     restrictions={
///         "ios_key_restrictions": {
///             "allowed_bundle_ids": ["apple.app.12345"],
///         },
///     })
/// full = gcp.firebase.AppleApp("full",
///     project="my-project-name",
///     display_name="Display Name Full",
///     bundle_id="apple.app.12345",
///     app_store_id="12345",
///     team_id="9987654321",
///     api_key_id=apple.uid)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apple = new Gcp.Projects.ApiKey("apple", new()
///     {
///         Name = "api-key",
///         DisplayName = "Display Name Full",
///         Project = "my-project-name",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             IosKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsIosKeyRestrictionsArgs
///             {
///                 AllowedBundleIds = new[]
///                 {
///                     "apple.app.12345",
///                 },
///             },
///         },
///     });
///
///     var full = new Gcp.Firebase.AppleApp("full", new()
///     {
///         Project = "my-project-name",
///         DisplayName = "Display Name Full",
///         BundleId = "apple.app.12345",
///         AppStoreId = "12345",
///         TeamId = "9987654321",
///         ApiKeyId = apple.Uid,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		apple, err := projects.NewApiKey(ctx, "apple", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("api-key"),
/// 			DisplayName: pulumi.String("Display Name Full"),
/// 			Project:     pulumi.String("my-project-name"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				IosKeyRestrictions: &projects.ApiKeyRestrictionsIosKeyRestrictionsArgs{
/// 					AllowedBundleIds: pulumi.StringArray{
/// 						pulumi.String("apple.app.12345"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppleApp(ctx, "full", &firebase.AppleAppArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			DisplayName: pulumi.String("Display Name Full"),
/// 			BundleId:    pulumi.String("apple.app.12345"),
/// 			AppStoreId:  pulumi.String("12345"),
/// 			TeamId:      pulumi.String("9987654321"),
/// 			ApiKeyId:    apple.Uid,
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
/// import com.pulumi.gcp.projects.ApiKey;
/// import com.pulumi.gcp.projects.ApiKeyArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsArgs;
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsIosKeyRestrictionsArgs;
/// import com.pulumi.gcp.firebase.AppleApp;
/// import com.pulumi.gcp.firebase.AppleAppArgs;
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
///         var apple = new ApiKey("apple", ApiKeyArgs.builder()
///             .name("api-key")
///             .displayName("Display Name Full")
///             .project("my-project-name")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .iosKeyRestrictions(ApiKeyRestrictionsIosKeyRestrictionsArgs.builder()
///                     .allowedBundleIds("apple.app.12345")
///                     .build())
///                 .build())
///             .build());
///
///         var full = new AppleApp("full", AppleAppArgs.builder()
///             .project("my-project-name")
///             .displayName("Display Name Full")
///             .bundleId("apple.app.12345")
///             .appStoreId("12345")
///             .teamId("9987654321")
///             .apiKeyId(apple.uid())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   full:
///     type: gcp:firebase:AppleApp
///     properties:
///       project: my-project-name
///       displayName: Display Name Full
///       bundleId: apple.app.12345
///       appStoreId: '12345'
///       teamId: '9987654321'
///       apiKeyId: ${apple.uid}
///   apple:
///     type: gcp:projects:ApiKey
///     properties:
///       name: api-key
///       displayName: Display Name Full
///       project: my-project-name
///       restrictions:
///         iosKeyRestrictions:
///           allowedBundleIds:
///             - apple.app.12345
/// ```
///
///
/// ## Import
///
/// AppleApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/iosApps/{{app_id}}`
///
/// * `projects/{{project}}/iosApps/{{app_id}}`
///
/// * `{{project}}/{{project}}/{{app_id}}`
///
/// * `iosApps/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, AppleApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default "{{project}} projects/{{project}}/iosApps/{{app_id}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default projects/{{project}}/iosApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default {{project}}/{{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default iosApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appleApp:AppleApp default {{app_id}}
/// ```
class AppleApp extends pulumi.CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final pulumi.Output<String> apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final pulumi.Output<String> appId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  late final pulumi.Output<String?> appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  late final pulumi.Output<String> bundleId;
  late final pulumi.Output<String?> deletionPolicy;
  /// The user-assigned display name of the App.
  late final pulumi.Output<String> displayName;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  late final pulumi.Output<String?> teamId;

  /// Creates a new [AppleApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppleApp]. {@macro pulumi_firebase_apple_app_apple_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppleApp(
    String name, {
    AppleAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appleApp:AppleApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.appId = registerOutput<String>('appId');
    this.appStoreId = registerOutput<String?>('appStoreId');
    this.bundleId = registerOutput<String>('bundleId');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.teamId = registerOutput<String?>('teamId');
  }
}
