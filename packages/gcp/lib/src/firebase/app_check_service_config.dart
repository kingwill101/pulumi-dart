import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_service_config_args.dart';

/// The enforcement configuration for a service supported by App Check.
///
///
/// To get more information about ServiceConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.services)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Service Config Off
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appcheck = new gcp.projects.Service("appcheck", {
///     project: "my-project-name",
///     service: "firebaseappcheck.googleapis.com",
/// });
/// const _default = new gcp.firebase.AppCheckServiceConfig("default", {
///     project: "my-project-name",
///     serviceId: "firestore.googleapis.com",
/// }, {
///     dependsOn: [appcheck],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appcheck = gcp.projects.Service("appcheck",
///     project="my-project-name",
///     service="firebaseappcheck.googleapis.com")
/// default = gcp.firebase.AppCheckServiceConfig("default",
///     project="my-project-name",
///     service_id="firestore.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[appcheck]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appcheck = new Gcp.Projects.Service("appcheck", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseappcheck.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AppCheckServiceConfig("default", new()
///     {
///         Project = "my-project-name",
///         ServiceId = "firestore.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             appcheck,
///         },
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
/// 		appcheck, err := projects.NewService(ctx, "appcheck", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseappcheck.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckServiceConfig(ctx, "default", &firebase.AppCheckServiceConfigArgs{
/// 			Project:   pulumi.String("my-project-name"),
/// 			ServiceId: pulumi.String("firestore.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			appcheck,
/// 		}))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfig;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var appcheck = new Service("appcheck", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseappcheck.googleapis.com")
///             .build());
///
///         var default_ = new AppCheckServiceConfig("default", AppCheckServiceConfigArgs.builder()
///             .project("my-project-name")
///             .serviceId("firestore.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(appcheck)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appcheck:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseappcheck.googleapis.com
///   default:
///     type: gcp:firebase:AppCheckServiceConfig
///     properties:
///       project: my-project-name
///       serviceId: firestore.googleapis.com
///     options:
///       dependsOn:
///         - ${appcheck}
/// ```
///
/// ### Firebase App Check Service Config Enforced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appcheck = new gcp.projects.Service("appcheck", {
///     project: "my-project-name",
///     service: "firebaseappcheck.googleapis.com",
/// });
/// const _default = new gcp.firebase.AppCheckServiceConfig("default", {
///     project: "my-project-name",
///     serviceId: "firebasestorage.googleapis.com",
///     enforcementMode: "ENFORCED",
/// }, {
///     dependsOn: [appcheck],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appcheck = gcp.projects.Service("appcheck",
///     project="my-project-name",
///     service="firebaseappcheck.googleapis.com")
/// default = gcp.firebase.AppCheckServiceConfig("default",
///     project="my-project-name",
///     service_id="firebasestorage.googleapis.com",
///     enforcement_mode="ENFORCED",
///     opts = pulumi.ResourceOptions(depends_on=[appcheck]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appcheck = new Gcp.Projects.Service("appcheck", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseappcheck.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AppCheckServiceConfig("default", new()
///     {
///         Project = "my-project-name",
///         ServiceId = "firebasestorage.googleapis.com",
///         EnforcementMode = "ENFORCED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             appcheck,
///         },
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
/// 		appcheck, err := projects.NewService(ctx, "appcheck", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseappcheck.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckServiceConfig(ctx, "default", &firebase.AppCheckServiceConfigArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			ServiceId:       pulumi.String("firebasestorage.googleapis.com"),
/// 			EnforcementMode: pulumi.String("ENFORCED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			appcheck,
/// 		}))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfig;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var appcheck = new Service("appcheck", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseappcheck.googleapis.com")
///             .build());
///
///         var default_ = new AppCheckServiceConfig("default", AppCheckServiceConfigArgs.builder()
///             .project("my-project-name")
///             .serviceId("firebasestorage.googleapis.com")
///             .enforcementMode("ENFORCED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(appcheck)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appcheck:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseappcheck.googleapis.com
///   default:
///     type: gcp:firebase:AppCheckServiceConfig
///     properties:
///       project: my-project-name
///       serviceId: firebasestorage.googleapis.com
///       enforcementMode: ENFORCED
///     options:
///       dependsOn:
///         - ${appcheck}
/// ```
///
/// ### Firebase App Check Service Config Unenforced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const appcheck = new gcp.projects.Service("appcheck", {
///     project: "my-project-name",
///     service: "firebaseappcheck.googleapis.com",
/// });
/// const _default = new gcp.firebase.AppCheckServiceConfig("default", {
///     project: "my-project-name",
///     serviceId: "identitytoolkit.googleapis.com",
///     enforcementMode: "UNENFORCED",
/// }, {
///     dependsOn: [appcheck],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// appcheck = gcp.projects.Service("appcheck",
///     project="my-project-name",
///     service="firebaseappcheck.googleapis.com")
/// default = gcp.firebase.AppCheckServiceConfig("default",
///     project="my-project-name",
///     service_id="identitytoolkit.googleapis.com",
///     enforcement_mode="UNENFORCED",
///     opts = pulumi.ResourceOptions(depends_on=[appcheck]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appcheck = new Gcp.Projects.Service("appcheck", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseappcheck.googleapis.com",
///     });
///
///     var @default = new Gcp.Firebase.AppCheckServiceConfig("default", new()
///     {
///         Project = "my-project-name",
///         ServiceId = "identitytoolkit.googleapis.com",
///         EnforcementMode = "UNENFORCED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             appcheck,
///         },
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
/// 		appcheck, err := projects.NewService(ctx, "appcheck", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseappcheck.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppCheckServiceConfig(ctx, "default", &firebase.AppCheckServiceConfigArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			ServiceId:       pulumi.String("identitytoolkit.googleapis.com"),
/// 			EnforcementMode: pulumi.String("UNENFORCED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			appcheck,
/// 		}))
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
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfig;
/// import com.pulumi.gcp.firebase.AppCheckServiceConfigArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var appcheck = new Service("appcheck", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseappcheck.googleapis.com")
///             .build());
///
///         var default_ = new AppCheckServiceConfig("default", AppCheckServiceConfigArgs.builder()
///             .project("my-project-name")
///             .serviceId("identitytoolkit.googleapis.com")
///             .enforcementMode("UNENFORCED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(appcheck)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appcheck:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseappcheck.googleapis.com
///   default:
///     type: gcp:firebase:AppCheckServiceConfig
///     properties:
///       project: my-project-name
///       serviceId: identitytoolkit.googleapis.com
///       enforcementMode: UNENFORCED
///     options:
///       dependsOn:
///         - ${appcheck}
/// ```
///
///
/// ## Import
///
/// ServiceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service_id}}`
///
/// * `{{project}}/{{service_id}}`
///
/// * `{{service_id}}`
///
/// When using the `pulumi import` command, ServiceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default projects/{{project}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default {{project}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default {{service_id}}
/// ```
class AppCheckServiceConfig extends pulumi.CustomResource {
  late final pulumi.Output<String?> enforcementMode;

  /// The fully-qualified resource name of the service enforcement configuration.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  late final pulumi.Output<String> serviceId;

  /// Creates a new [AppCheckServiceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppCheckServiceConfig]. {@macro pulumi_firebase_app_check_service_config_app_check_service_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppCheckServiceConfig(
    String name, {
    AppCheckServiceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enforcementMode = registerOutput<String?>('enforcementMode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
