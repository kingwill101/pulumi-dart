import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_args.dart';
import 'app_hosting_build_error.dart';
import 'app_hosting_build_source.dart';

/// A single build for a backend, at a specific point codebase reference tag
/// and point in time. Encapsulates several resources, including an Artifact Registry
/// container image, a Cloud Build invocation that built the image, and the
/// Cloud Run revision that uses that image.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Build Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "firebase-app-hosting-compute",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const fah = new gcp.projects.Service("fah", {
///     project: "my-project-name",
///     service: "firebaseapphosting.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "mini",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
/// });
/// const example = new gcp.firebase.AppHostingBuild("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     buildId: "mini-build",
///     source: {
///         container: {
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     },
/// });
/// const appHostingSaRunner = new gcp.projects.IAMMember("app_hosting_sa_runner", {
///     project: "my-project-name",
///     role: "roles/firebaseapphosting.computeRunner",
///     member: serviceAccount.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="firebase-app-hosting-compute",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// fah = gcp.projects.Service("fah",
///     project="my-project-name",
///     service="firebaseapphosting.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="mini",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// example = gcp.firebase.AppHostingBuild("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     build_id="mini-build",
///     source={
///         "container": {
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     })
/// app_hosting_sa_runner = gcp.projects.IAMMember("app_hosting_sa_runner",
///     project="my-project-name",
///     role="roles/firebaseapphosting.computeRunner",
///     member=service_account.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Include these blocks only once per project if you are starting from scratch ###
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "firebase-app-hosting-compute",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var fah = new Gcp.Projects.Service("fah", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseapphosting.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "mini",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingBuild("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         BuildId = "mini-build",
///         Source = new Gcp.Firebase.Inputs.AppHostingBuildSourceArgs
///         {
///             Container = new Gcp.Firebase.Inputs.AppHostingBuildSourceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
///     var appHostingSaRunner = new Gcp.Projects.IAMMember("app_hosting_sa_runner", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebaseapphosting.computeRunner",
///         Member = serviceAccount.Member,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("firebase-app-hosting-compute"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fah, err := projects.NewService(ctx, "fah", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseapphosting.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("mini"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingBuild(ctx, "example", &firebase.AppHostingBuildArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			BuildId:  pulumi.String("mini-build"),
/// 			Source: &firebase.AppHostingBuildSourceArgs{
/// 				Container: &firebase.AppHostingBuildSourceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_runner", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebaseapphosting.computeRunner"),
/// 			Member:  serviceAccount.Member,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingBuild;
/// import com.pulumi.gcp.firebase.AppHostingBuildArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceContainerArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("firebase-app-hosting-compute")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var fah = new Service("fah", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseapphosting.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("mini")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var example = new AppHostingBuild("example", AppHostingBuildArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .buildId("mini-build")
///             .source(AppHostingBuildSourceArgs.builder()
///                 .container(AppHostingBuildSourceContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .build())
///                 .build())
///             .build());
///
///         var appHostingSaRunner = new IAMMember("appHostingSaRunner", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebaseapphosting.computeRunner")
///             .member(serviceAccount.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingBuild
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       buildId: mini-build
///       source:
///         container:
///           image: us-docker.pkg.dev/cloudrun/container/hello
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: mini
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${fah}
///   ### Include these blocks only once per project if you are starting from scratch ###
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: firebase-app-hosting-compute
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
///   appHostingSaRunner:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_runner
///     properties:
///       project: my-project-name
///       role: roles/firebaseapphosting.computeRunner
///       member: ${serviceAccount.member}
///   fah:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseapphosting.googleapis.com
/// ```
///
/// ### Firebase App Hosting Build Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// //## Include these blocks only once per project if you are starting from scratch ###
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "firebase-app-hosting-compute",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const fah = new gcp.projects.Service("fah", {
///     project: "my-project-name",
///     service: "firebaseapphosting.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "full",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// }, {
///     dependsOn: [fah],
/// });
/// const example = new gcp.firebase.AppHostingBuild("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     buildId: "full-build",
///     displayName: "My Build",
///     annotations: {
///         key: "value",
///     },
///     labels: {
///         key: "value",
///     },
///     source: {
///         container: {
///             image: "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     },
/// });
/// const appHostingSaRunner = new gcp.projects.IAMMember("app_hosting_sa_runner", {
///     project: "my-project-name",
///     role: "roles/firebaseapphosting.computeRunner",
///     member: serviceAccount.member,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// ### Include these blocks only once per project if you are starting from scratch ###
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="firebase-app-hosting-compute",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// fah = gcp.projects.Service("fah",
///     project="my-project-name",
///     service="firebaseapphosting.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="full",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email,
///     opts = pulumi.ResourceOptions(depends_on=[fah]))
/// example = gcp.firebase.AppHostingBuild("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     build_id="full-build",
///     display_name="My Build",
///     annotations={
///         "key": "value",
///     },
///     labels={
///         "key": "value",
///     },
///     source={
///         "container": {
///             "image": "us-docker.pkg.dev/cloudrun/container/hello",
///         },
///     })
/// app_hosting_sa_runner = gcp.projects.IAMMember("app_hosting_sa_runner",
///     project="my-project-name",
///     role="roles/firebaseapphosting.computeRunner",
///     member=service_account.member)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Include these blocks only once per project if you are starting from scratch ###
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "firebase-app-hosting-compute",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var fah = new Gcp.Projects.Service("fah", new()
///     {
///         Project = "my-project-name",
///         ServiceName = "firebaseapphosting.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "full",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             fah,
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingBuild("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         BuildId = "full-build",
///         DisplayName = "My Build",
///         Annotations =
///         {
///             { "key", "value" },
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///         Source = new Gcp.Firebase.Inputs.AppHostingBuildSourceArgs
///         {
///             Container = new Gcp.Firebase.Inputs.AppHostingBuildSourceContainerArgs
///             {
///                 Image = "us-docker.pkg.dev/cloudrun/container/hello",
///             },
///         },
///     });
///
///     var appHostingSaRunner = new Gcp.Projects.IAMMember("app_hosting_sa_runner", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/firebaseapphosting.computeRunner",
///         Member = serviceAccount.Member,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Include these blocks only once per project if you are starting from scratch ###
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("firebase-app-hosting-compute"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fah, err := projects.NewService(ctx, "fah", &projects.ServiceArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Service: pulumi.String("firebaseapphosting.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("full"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			fah,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingBuild(ctx, "example", &firebase.AppHostingBuildArgs{
/// 			Project:     exampleAppHostingBackend.Project,
/// 			Location:    exampleAppHostingBackend.Location,
/// 			Backend:     exampleAppHostingBackend.BackendId,
/// 			BuildId:     pulumi.String("full-build"),
/// 			DisplayName: pulumi.String("My Build"),
/// 			Annotations: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Source: &firebase.AppHostingBuildSourceArgs{
/// 				Container: &firebase.AppHostingBuildSourceContainerArgs{
/// 					Image: pulumi.String("us-docker.pkg.dev/cloudrun/container/hello"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "app_hosting_sa_runner", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/firebaseapphosting.computeRunner"),
/// 			Member:  serviceAccount.Member,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingBuild;
/// import com.pulumi.gcp.firebase.AppHostingBuildArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceContainerArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         //## Include these blocks only once per project if you are starting from scratch ###
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("firebase-app-hosting-compute")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var fah = new Service("fah", ServiceArgs.builder()
///             .project("my-project-name")
///             .service("firebaseapphosting.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("full")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(fah)
///                 .build());
///
///         var example = new AppHostingBuild("example", AppHostingBuildArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .buildId("full-build")
///             .displayName("My Build")
///             .annotations(Map.of("key", "value"))
///             .labels(Map.of("key", "value"))
///             .source(AppHostingBuildSourceArgs.builder()
///                 .container(AppHostingBuildSourceContainerArgs.builder()
///                     .image("us-docker.pkg.dev/cloudrun/container/hello")
///                     .build())
///                 .build())
///             .build());
///
///         var appHostingSaRunner = new IAMMember("appHostingSaRunner", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/firebaseapphosting.computeRunner")
///             .member(serviceAccount.member())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingBuild
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       buildId: full-build
///       displayName: My Build
///       annotations:
///         key: value
///       labels:
///         key: value
///       source:
///         container:
///           image: us-docker.pkg.dev/cloudrun/container/hello
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: full
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///     options:
///       dependsOn:
///         - ${fah}
///   ### Include these blocks only once per project if you are starting from scratch ###
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: firebase-app-hosting-compute
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
///   appHostingSaRunner:
///     type: gcp:projects:IAMMember
///     name: app_hosting_sa_runner
///     properties:
///       project: my-project-name
///       role: roles/firebaseapphosting.computeRunner
///       member: ${serviceAccount.member}
///   fah:
///     type: gcp:projects:Service
///     properties:
///       project: my-project-name
///       service: firebaseapphosting.googleapis.com
/// ```
///
/// ### Firebase App Hosting Build Github
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repository = new gcp.developerconnect.GitRepositoryLink("my-repository", {
///     project: "my-project-name",
///     location: "us-central1",
///     service: "developerconnect.googleapis.com",
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "mini",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     displayName: "My Backend",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: "firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///     environment: "prod",
///     annotations: {
///         key: "value",
///     },
///     labels: {
///         key: "value",
///     },
///     codebase: {
///         repository: my_repository.name,
///         rootDirectory: "/",
///     },
/// });
/// const example = new gcp.firebase.AppHostingBuild("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     buildId: "gh-build",
///     source: {
///         codebase: {
///             branch: "main",
///         },
///     },
/// });
/// const devconnect_secret = new gcp.projects.IAMMember("devconnect-secret", {
///     project: "my-project-name",
///     role: "roles/secretmanager.admin",
///     member: devconnect_p4sa.member,
/// });
/// //##
/// //## Include these blocks only once per Github account ###
/// const my_connection = new gcp.developerconnect.Connection("my-connection", {
///     project: "my-project-name",
///     location: "us-central1",
///     connectionId: "tf-test-connection-new",
///     githubConfig: {
///         githubApp: "FIREBASE",
///     },
/// }, {
///     dependsOn: [devconnect_secret],
/// });
/// export const nextSteps = my_connection.installationStates;
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repository = gcp.developerconnect.GitRepositoryLink("my-repository",
///     project="my-project-name",
///     location="us-central1",
///     service="developerconnect.googleapis.com")
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="mini",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     display_name="My Backend",
///     serving_locality="GLOBAL_ACCESS",
///     service_account="firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///     environment="prod",
///     annotations={
///         "key": "value",
///     },
///     labels={
///         "key": "value",
///     },
///     codebase={
///         "repository": my_repository.name,
///         "root_directory": "/",
///     })
/// example = gcp.firebase.AppHostingBuild("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     build_id="gh-build",
///     source={
///         "codebase": {
///             "branch": "main",
///         },
///     })
/// devconnect_secret = gcp.projects.IAMMember("devconnect-secret",
///     project="my-project-name",
///     role="roles/secretmanager.admin",
///     member=devconnect_p4sa["member"])
/// ###
/// ### Include these blocks only once per Github account ###
/// my_connection = gcp.developerconnect.Connection("my-connection",
///     project="my-project-name",
///     location="us-central1",
///     connection_id="tf-test-connection-new",
///     github_config={
///         "github_app": "FIREBASE",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[devconnect_secret]))
/// pulumi.export("nextSteps", my_connection.installation_states)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repository = new Gcp.DeveloperConnect.GitRepositoryLink("my-repository", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         Service = "developerconnect.googleapis.com",
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "mini",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         DisplayName = "My Backend",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = "firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com",
///         Environment = "prod",
///         Annotations =
///         {
///             { "key", "value" },
///         },
///         Labels =
///         {
///             { "key", "value" },
///         },
///         Codebase = new Gcp.Firebase.Inputs.AppHostingBackendCodebaseArgs
///         {
///             Repository = my_repository.Name,
///             RootDirectory = "/",
///         },
///     });
///
///     var example = new Gcp.Firebase.AppHostingBuild("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         BuildId = "gh-build",
///         Source = new Gcp.Firebase.Inputs.AppHostingBuildSourceArgs
///         {
///             Codebase = new Gcp.Firebase.Inputs.AppHostingBuildSourceCodebaseArgs
///             {
///                 Branch = "main",
///             },
///         },
///     });
///
///     var devconnect_secret = new Gcp.Projects.IAMMember("devconnect-secret", new()
///     {
///         Project = "my-project-name",
///         Role = "roles/secretmanager.admin",
///         Member = devconnect_p4sa.Member,
///     });
///
///     //##
///     //## Include these blocks only once per Github account ###
///     var my_connection = new Gcp.DeveloperConnect.Connection("my-connection", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         ConnectionId = "tf-test-connection-new",
///         GithubConfig = new Gcp.DeveloperConnect.Inputs.ConnectionGithubConfigArgs
///         {
///             GithubApp = "FIREBASE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             devconnect_secret,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nextSteps"] = my_connection.InstallationStates,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_repository, err := developerconnect.NewGitRepositoryLink(ctx, "my-repository", &developerconnect.GitRepositoryLinkArgs{
/// 			Project:  pulumi.String("my-project-name"),
/// 			Location: pulumi.String("us-central1"),
/// 			Service:  "developerconnect.googleapis.com",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("mini"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			DisplayName:     pulumi.String("My Backend"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  pulumi.String("firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com"),
/// 			Environment:     pulumi.String("prod"),
/// 			Annotations: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			Codebase: &firebase.AppHostingBackendCodebaseArgs{
/// 				Repository:    my_repository.Name,
/// 				RootDirectory: pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingBuild(ctx, "example", &firebase.AppHostingBuildArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			BuildId:  pulumi.String("gh-build"),
/// 			Source: &firebase.AppHostingBuildSourceArgs{
/// 				Codebase: &firebase.AppHostingBuildSourceCodebaseArgs{
/// 					Branch: pulumi.String("main"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		devconnect_secret, err := projects.NewIAMMember(ctx, "devconnect-secret", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("my-project-name"),
/// 			Role:    pulumi.String("roles/secretmanager.admin"),
/// 			Member:  pulumi.Any(devconnect_p4sa.Member),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ## Include these blocks only once per Github account ###
/// 		my_connection, err := developerconnect.NewConnection(ctx, "my-connection", &developerconnect.ConnectionArgs{
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 			ConnectionId: pulumi.String("tf-test-connection-new"),
/// 			GithubConfig: &developerconnect.ConnectionGithubConfigArgs{
/// 				GithubApp: pulumi.String("FIREBASE"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			devconnect_secret,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nextSteps", my_connection.InstallationStates)
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
/// import com.pulumi.gcp.developerconnect.GitRepositoryLink;
/// import com.pulumi.gcp.developerconnect.GitRepositoryLinkArgs;
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBackendCodebaseArgs;
/// import com.pulumi.gcp.firebase.AppHostingBuild;
/// import com.pulumi.gcp.firebase.AppHostingBuildArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceArgs;
/// import com.pulumi.gcp.firebase.inputs.AppHostingBuildSourceCodebaseArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.developerconnect.Connection;
/// import com.pulumi.gcp.developerconnect.ConnectionArgs;
/// import com.pulumi.gcp.developerconnect.inputs.ConnectionGithubConfigArgs;
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
///         var my_repository = new GitRepositoryLink("my-repository", GitRepositoryLinkArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .service("developerconnect.googleapis.com")
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("mini")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .displayName("My Backend")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount("firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com")
///             .environment("prod")
///             .annotations(Map.of("key", "value"))
///             .labels(Map.of("key", "value"))
///             .codebase(AppHostingBackendCodebaseArgs.builder()
///                 .repository(my_repository.name())
///                 .rootDirectory("/")
///                 .build())
///             .build());
///
///         var example = new AppHostingBuild("example", AppHostingBuildArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .buildId("gh-build")
///             .source(AppHostingBuildSourceArgs.builder()
///                 .codebase(AppHostingBuildSourceCodebaseArgs.builder()
///                     .branch("main")
///                     .build())
///                 .build())
///             .build());
///
///         var devconnect_secret = new IAMMember("devconnect-secret", IAMMemberArgs.builder()
///             .project("my-project-name")
///             .role("roles/secretmanager.admin")
///             .member(devconnect_p4sa.member())
///             .build());
///
///         //##
///         //## Include these blocks only once per Github account ###
///         var my_connection = new Connection("my-connection", ConnectionArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .connectionId("tf-test-connection-new")
///             .githubConfig(ConnectionGithubConfigArgs.builder()
///                 .githubApp("FIREBASE")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(devconnect_secret)
///                 .build());
///
///         ctx.export("nextSteps", my_connection.installationStates());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingBuild
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       buildId: gh-build
///       source:
///         codebase:
///           branch: main
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: mini
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       displayName: My Backend
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: firebase-app-hosting-compute@my-project-name.iam.gserviceaccount.com
///       environment: prod
///       annotations:
///         key: value
///       labels:
///         key: value
///       codebase:
///         repository: ${["my-repository"].name}
///         rootDirectory: /
///   my-repository:
///     type: gcp:developerconnect:GitRepositoryLink
///     properties:
///       project: my-project-name
///       location: us-central1
///       service: developerconnect.googleapis.com
///   devconnect-secret: ###
///     type: gcp:projects:IAMMember
///     properties:
///       project: my-project-name
///       role: roles/secretmanager.admin
///       member: ${["devconnect-p4sa"].member}
///   ### Include these blocks only once per Github account ###
///   my-connection:
///     type: gcp:developerconnect:Connection
///     properties:
///       project: my-project-name
///       location: us-central1
///       connectionId: tf-test-connection-new
///       githubConfig:
///         githubApp: FIREBASE
///     options:
///       dependsOn:
///         - ${["devconnect-secret"]}
/// outputs:
///   nextSteps: ${["my-connection"].installationStates}
/// ```
///
///
/// ## Import
///
/// Build can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/builds/{{build_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{build_id}}`
///
/// * `{{location}}/{{backend}}/{{build_id}}`
///
/// When using the `pulumi import` command, Build can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default projects/{{project}}/locations/{{location}}/backends/{{backend}}/builds/{{build_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default {{project}}/{{location}}/{{backend}}/{{build_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default {{location}}/{{backend}}/{{build_id}}
/// ```
class AppHostingBuild extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The ID of the Backend that this Build applies to
  late final pulumi.Output<String> backend;
  /// The user-specified ID of the build being created.
  late final pulumi.Output<String> buildId;
  /// The location of the [Cloud Build
  /// logs](https://cloud.google.com/build/docs/view-build-results) for the build
  /// process.
  late final pulumi.Output<String> buildLogsUri;
  /// Time at which the build was created.
  late final pulumi.Output<String> createTime;
  /// Human-readable name. 63 character limit.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The environment name of the backend when this build was created.
  late final pulumi.Output<String> environment;
  /// The source of the error for the build, if in a `FAILED` state.
  /// Possible values:
  /// CLOUD_BUILD
  /// CLOUD_RUN
  late final pulumi.Output<String> errorSource;
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingBuildError>> errors;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;
  /// The Artifact Registry
  /// [container
  /// image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
  /// URI, used by the Cloud Run
  /// [`revision`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services.revisions)
  /// for this build.
  late final pulumi.Output<String> image;
  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the Backend that this Build applies to
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the build.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The source for the build.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingBuildSource> source;
  /// The state of the build.
  /// Possible values:
  /// BUILDING
  /// BUILT
  /// DEPLOYING
  /// READY
  /// FAILED
  late final pulumi.Output<String> state;
  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;
  /// Time at which the build was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AppHostingBuild].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppHostingBuild]. {@macro pulumi_firebase_app_hosting_build_app_hosting_build_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppHostingBuild(
    String name, {
    AppHostingBuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingBuild:AppHostingBuild',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.backend = registerOutput<String>('backend');
    this.buildId = registerOutput<String>('buildId');
    this.buildLogsUri = registerOutput<String>('buildLogsUri');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String>('environment');
    this.errorSource = registerOutput<String>('errorSource');
    this.errors = registerOutput<List<AppHostingBuildError>>('errors');
    this.etag = registerOutput<String>('etag');
    this.image = registerOutput<String>('image');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.source = registerOutput<AppHostingBuildSource>('source');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
