import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_args.dart';
import 'api_key_restrictions.dart';

/// The Apikeys Key resource
///
/// ## Example Usage
///
/// ### Android_key
/// A basic example of a android api keys key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
///     restrictions: {
///         androidKeyRestrictions: {
///             allowedApplications: [{
///                 packageName: "com.example.app123",
///                 sha1Fingerprint: "1699466a142d4682a5f91b50fdf400f2358e2b0b",
///             }],
///         },
///         apiTargets: [{
///             service: "translate.googleapis.com",
///             methods: ["GET*"],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key",
///     restrictions={
///         "android_key_restrictions": {
///             "allowed_applications": [{
///                 "package_name": "com.example.app123",
///                 "sha1_fingerprint": "1699466a142d4682a5f91b50fdf400f2358e2b0b",
///             }],
///         },
///         "api_targets": [{
///             "service": "translate.googleapis.com",
///             "methods": ["GET*"],
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             AndroidKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsAndroidKeyRestrictionsArgs
///             {
///                 AllowedApplications = new[]
///                 {
///                     new Gcp.Projects.Inputs.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs
///                     {
///                         PackageName = "com.example.app123",
///                         Sha1Fingerprint = "1699466a142d4682a5f91b50fdf400f2358e2b0b",
///                     },
///                 },
///             },
///             ApiTargets = new[]
///             {
///                 new Gcp.Projects.Inputs.ApiKeyRestrictionsApiTargetArgs
///                 {
///                     Service = "translate.googleapis.com",
///                     Methods = new[]
///                     {
///                         "GET*",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("key"),
/// 			DisplayName: pulumi.String("sample-key"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				AndroidKeyRestrictions: &projects.ApiKeyRestrictionsAndroidKeyRestrictionsArgs{
/// 					AllowedApplications: projects.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArray{
/// 						&projects.ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs{
/// 							PackageName:     pulumi.String("com.example.app123"),
/// 							Sha1Fingerprint: pulumi.String("1699466a142d4682a5f91b50fdf400f2358e2b0b"),
/// 						},
/// 					},
/// 				},
/// 				ApiTargets: projects.ApiKeyRestrictionsApiTargetArray{
/// 					&projects.ApiKeyRestrictionsApiTargetArgs{
/// 						Service: pulumi.String("translate.googleapis.com"),
/// 						Methods: pulumi.StringArray{
/// 							pulumi.String("GET*"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsAndroidKeyRestrictionsArgs;
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
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .androidKeyRestrictions(ApiKeyRestrictionsAndroidKeyRestrictionsArgs.builder()
///                     .allowedApplications(ApiKeyRestrictionsAndroidKeyRestrictionsAllowedApplicationArgs.builder()
///                         .packageName("com.example.app123")
///                         .sha1Fingerprint("1699466a142d4682a5f91b50fdf400f2358e2b0b")
///                         .build())
///                     .build())
///                 .apiTargets(ApiKeyRestrictionsApiTargetArgs.builder()
///                     .service("translate.googleapis.com")
///                     .methods("GET*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
///       restrictions:
///         androidKeyRestrictions:
///           allowedApplications:
///             - packageName: com.example.app123
///               sha1Fingerprint: 1699466a142d4682a5f91b50fdf400f2358e2b0b
///         apiTargets:
///           - service: translate.googleapis.com
///             methods:
///               - GET*
/// ```
///
/// ### Basic_key
/// A basic example of a api keys key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
///     restrictions: {
///         apiTargets: [{
///             service: "translate.googleapis.com",
///             methods: ["GET*"],
///         }],
///         browserKeyRestrictions: {
///             allowedReferrers: [".*"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key",
///     restrictions={
///         "api_targets": [{
///             "service": "translate.googleapis.com",
///             "methods": ["GET*"],
///         }],
///         "browser_key_restrictions": {
///             "allowed_referrers": [".*"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             ApiTargets = new[]
///             {
///                 new Gcp.Projects.Inputs.ApiKeyRestrictionsApiTargetArgs
///                 {
///                     Service = "translate.googleapis.com",
///                     Methods = new[]
///                     {
///                         "GET*",
///                     },
///                 },
///             },
///             BrowserKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsBrowserKeyRestrictionsArgs
///             {
///                 AllowedReferrers = new[]
///                 {
///                     ".*",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("key"),
/// 			DisplayName: pulumi.String("sample-key"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				ApiTargets: projects.ApiKeyRestrictionsApiTargetArray{
/// 					&projects.ApiKeyRestrictionsApiTargetArgs{
/// 						Service: pulumi.String("translate.googleapis.com"),
/// 						Methods: pulumi.StringArray{
/// 							pulumi.String("GET*"),
/// 						},
/// 					},
/// 				},
/// 				BrowserKeyRestrictions: &projects.ApiKeyRestrictionsBrowserKeyRestrictionsArgs{
/// 					AllowedReferrers: pulumi.StringArray{
/// 						pulumi.String(".*"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsBrowserKeyRestrictionsArgs;
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
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .apiTargets(ApiKeyRestrictionsApiTargetArgs.builder()
///                     .service("translate.googleapis.com")
///                     .methods("GET*")
///                     .build())
///                 .browserKeyRestrictions(ApiKeyRestrictionsBrowserKeyRestrictionsArgs.builder()
///                     .allowedReferrers(".*")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
///       restrictions:
///         apiTargets:
///           - service: translate.googleapis.com
///             methods:
///               - GET*
///         browserKeyRestrictions:
///           allowedReferrers:
///             - .*
/// ```
///
/// ### Ios_key
/// A basic example of a ios api keys key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
///     restrictions: {
///         apiTargets: [{
///             service: "translate.googleapis.com",
///             methods: ["GET*"],
///         }],
///         iosKeyRestrictions: {
///             allowedBundleIds: ["com.google.app.macos"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key",
///     restrictions={
///         "api_targets": [{
///             "service": "translate.googleapis.com",
///             "methods": ["GET*"],
///         }],
///         "ios_key_restrictions": {
///             "allowed_bundle_ids": ["com.google.app.macos"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             ApiTargets = new[]
///             {
///                 new Gcp.Projects.Inputs.ApiKeyRestrictionsApiTargetArgs
///                 {
///                     Service = "translate.googleapis.com",
///                     Methods = new[]
///                     {
///                         "GET*",
///                     },
///                 },
///             },
///             IosKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsIosKeyRestrictionsArgs
///             {
///                 AllowedBundleIds = new[]
///                 {
///                     "com.google.app.macos",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("key"),
/// 			DisplayName: pulumi.String("sample-key"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				ApiTargets: projects.ApiKeyRestrictionsApiTargetArray{
/// 					&projects.ApiKeyRestrictionsApiTargetArgs{
/// 						Service: pulumi.String("translate.googleapis.com"),
/// 						Methods: pulumi.StringArray{
/// 							pulumi.String("GET*"),
/// 						},
/// 					},
/// 				},
/// 				IosKeyRestrictions: &projects.ApiKeyRestrictionsIosKeyRestrictionsArgs{
/// 					AllowedBundleIds: pulumi.StringArray{
/// 						pulumi.String("com.google.app.macos"),
/// 					},
/// 				},
/// 			},
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
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .apiTargets(ApiKeyRestrictionsApiTargetArgs.builder()
///                     .service("translate.googleapis.com")
///                     .methods("GET*")
///                     .build())
///                 .iosKeyRestrictions(ApiKeyRestrictionsIosKeyRestrictionsArgs.builder()
///                     .allowedBundleIds("com.google.app.macos")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
///       restrictions:
///         apiTargets:
///           - service: translate.googleapis.com
///             methods:
///               - GET*
///         iosKeyRestrictions:
///           allowedBundleIds:
///             - com.google.app.macos
/// ```
///
/// ### Minimal_key
/// A minimal example of a api keys key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("key"),
/// 			DisplayName: pulumi.String("sample-key"),
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
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
/// ```
///
/// ### Server_key
/// A basic example of a server api keys key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
///     restrictions: {
///         apiTargets: [{
///             service: "translate.googleapis.com",
///             methods: ["GET*"],
///         }],
///         serverKeyRestrictions: {
///             allowedIps: ["127.0.0.1"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key",
///     restrictions={
///         "api_targets": [{
///             "service": "translate.googleapis.com",
///             "methods": ["GET*"],
///         }],
///         "server_key_restrictions": {
///             "allowed_ips": ["127.0.0.1"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///         Restrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsArgs
///         {
///             ApiTargets = new[]
///             {
///                 new Gcp.Projects.Inputs.ApiKeyRestrictionsApiTargetArgs
///                 {
///                     Service = "translate.googleapis.com",
///                     Methods = new[]
///                     {
///                         "GET*",
///                     },
///                 },
///             },
///             ServerKeyRestrictions = new Gcp.Projects.Inputs.ApiKeyRestrictionsServerKeyRestrictionsArgs
///             {
///                 AllowedIps = new[]
///                 {
///                     "127.0.0.1",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:        pulumi.String("key"),
/// 			DisplayName: pulumi.String("sample-key"),
/// 			Restrictions: &projects.ApiKeyRestrictionsArgs{
/// 				ApiTargets: projects.ApiKeyRestrictionsApiTargetArray{
/// 					&projects.ApiKeyRestrictionsApiTargetArgs{
/// 						Service: pulumi.String("translate.googleapis.com"),
/// 						Methods: pulumi.StringArray{
/// 							pulumi.String("GET*"),
/// 						},
/// 					},
/// 				},
/// 				ServerKeyRestrictions: &projects.ApiKeyRestrictionsServerKeyRestrictionsArgs{
/// 					AllowedIps: pulumi.StringArray{
/// 						pulumi.String("127.0.0.1"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.projects.inputs.ApiKeyRestrictionsServerKeyRestrictionsArgs;
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
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .restrictions(ApiKeyRestrictionsArgs.builder()
///                 .apiTargets(ApiKeyRestrictionsApiTargetArgs.builder()
///                     .service("translate.googleapis.com")
///                     .methods("GET*")
///                     .build())
///                 .serverKeyRestrictions(ApiKeyRestrictionsServerKeyRestrictionsArgs.builder()
///                     .allowedIps("127.0.0.1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
///       restrictions:
///         apiTargets:
///           - service: translate.googleapis.com
///             methods:
///               - GET*
///         serverKeyRestrictions:
///           allowedIps:
///             - 127.0.0.1
/// ```
///
/// ### Service_account_key
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "app",
///     name: "app",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const keyServiceAccount = new gcp.serviceaccount.Account("key_service_account", {
///     accountId: "app",
///     project: project.projectId,
///     displayName: "Test Service Account",
/// });
/// const primary = new gcp.projects.ApiKey("primary", {
///     name: "key",
///     displayName: "sample-key",
///     project: project.projectId,
///     serviceAccountEmail: keyServiceAccount.email,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="app",
///     name="app",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// key_service_account = gcp.serviceaccount.Account("key_service_account",
///     account_id="app",
///     project=project.project_id,
///     display_name="Test Service Account")
/// primary = gcp.projects.ApiKey("primary",
///     name="key",
///     display_name="sample-key",
///     project=project.project_id,
///     service_account_email=key_service_account.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "app",
///         Name = "app",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var keyServiceAccount = new Gcp.ServiceAccount.Account("key_service_account", new()
///     {
///         AccountId = "app",
///         Project = project.ProjectId,
///         DisplayName = "Test Service Account",
///     });
///
///     var primary = new Gcp.Projects.ApiKey("primary", new()
///     {
///         Name = "key",
///         DisplayName = "sample-key",
///         Project = project.ProjectId,
///         ServiceAccountEmail = keyServiceAccount.Email,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("app"),
/// 			Name:           pulumi.String("app"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyServiceAccount, err := serviceaccount.NewAccount(ctx, "key_service_account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("app"),
/// 			Project:     project.ProjectId,
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewApiKey(ctx, "primary", &projects.ApiKeyArgs{
/// 			Name:                pulumi.String("key"),
/// 			DisplayName:         pulumi.String("sample-key"),
/// 			Project:             project.ProjectId,
/// 			ServiceAccountEmail: keyServiceAccount.Email,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.ApiKey;
/// import com.pulumi.gcp.projects.ApiKeyArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("app")
///             .name("app")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var keyServiceAccount = new Account("keyServiceAccount", AccountArgs.builder()
///             .accountId("app")
///             .project(project.projectId())
///             .displayName("Test Service Account")
///             .build());
///
///         var primary = new ApiKey("primary", ApiKeyArgs.builder()
///             .name("key")
///             .displayName("sample-key")
///             .project(project.projectId())
///             .serviceAccountEmail(keyServiceAccount.email())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:projects:ApiKey
///     properties:
///       name: key
///       displayName: sample-key
///       project: ${project.projectId}
///       serviceAccountEmail: ${keyServiceAccount.email}
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: app
///       name: app
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   keyServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: key_service_account
///     properties:
///       accountId: app
///       project: ${project.projectId}
///       displayName: Test Service Account
/// ```
///
///
/// ## Import
///
/// Key can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/keys/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Key can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default projects/{{project}}/locations/global/keys/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/apiKey:ApiKey default {{name}}
/// ```
class ApiKey extends pulumi.CustomResource {
  /// Human-readable display name of this API key. Modifiable by user.
  late final pulumi.Output<String?> displayName;

  /// Output only. An encrypted and signed value held by this key. This field can be accessed only through the `GetKeyString` method.
  late final pulumi.Output<String> keyString;

  /// The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `a-z?`.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// Key restrictions.
  late final pulumi.Output<ApiKeyRestrictions?> restrictions;

  /// The email of the service account the key is bound to. If this field is specified, the key is a service account bound key and auth enabled. See [Documentation](https://cloud.devsite.corp.google.com/docs/authentication/api-keys?#api-keys-bound-sa) for more details.
  late final pulumi.Output<String?> serviceAccountEmail;

  /// Output only. Unique id in UUID4 format.
  late final pulumi.Output<String> uid;

  /// Creates a new [ApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiKey]. {@macro pulumi_projects_api_key_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiKey(
    String name, {
    ApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.keyString = registerOutput<String>('keyString');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.restrictions = registerOutput<ApiKeyRestrictions?>('restrictions');
    this.serviceAccountEmail = registerOutput<String?>('serviceAccountEmail');
    this.uid = registerOutput<String>('uid');
  }
}
