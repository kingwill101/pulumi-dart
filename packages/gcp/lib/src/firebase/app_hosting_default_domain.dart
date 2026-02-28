import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_default_domain_args.dart';

/// A domain name that is associated with a backend.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Default Domain Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "service-account",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "dd-mini",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// });
/// const example = new gcp.firebase.AppHostingDefaultDomain("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     domainId: exampleAppHostingBackend.uri,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="service-account",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="dd-mini",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email)
/// example = gcp.firebase.AppHostingDefaultDomain("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     domain_id=example_app_hosting_backend.uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "service-account",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "dd-mini",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     });
///
///     var example = new Gcp.Firebase.AppHostingDefaultDomain("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         DomainId = exampleAppHostingBackend.Uri,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("service-account"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("dd-mini"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingDefaultDomain(ctx, "example", &firebase.AppHostingDefaultDomainArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			DomainId: exampleAppHostingBackend.Uri,
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
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomain;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomainArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("service-account")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("dd-mini")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build());
///
///         var example = new AppHostingDefaultDomain("example", AppHostingDefaultDomainArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .domainId(exampleAppHostingBackend.uri())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingDefaultDomain
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       domainId: ${exampleAppHostingBackend.uri}
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: dd-mini
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: service-account
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
/// ```
///
/// ### Firebase App Hosting Default Domain Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "service-account",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "dd-full",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// });
/// const example = new gcp.firebase.AppHostingDefaultDomain("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     domainId: exampleAppHostingBackend.uri,
///     disabled: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="service-account",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="dd-full",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email)
/// example = gcp.firebase.AppHostingDefaultDomain("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     domain_id=example_app_hosting_backend.uri,
///     disabled=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "service-account",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "dd-full",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     });
///
///     var example = new Gcp.Firebase.AppHostingDefaultDomain("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         DomainId = exampleAppHostingBackend.Uri,
///         Disabled = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("service-account"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("dd-full"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingDefaultDomain(ctx, "example", &firebase.AppHostingDefaultDomainArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			DomainId: exampleAppHostingBackend.Uri,
/// 			Disabled: pulumi.Bool(false),
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
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomain;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomainArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("service-account")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("dd-full")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build());
///
///         var example = new AppHostingDefaultDomain("example", AppHostingDefaultDomainArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .domainId(exampleAppHostingBackend.uri())
///             .disabled(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingDefaultDomain
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       domainId: ${exampleAppHostingBackend.uri}
///       disabled: false
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: dd-full
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: service-account
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
/// ```
///
/// ### Firebase App Hosting Default Domain Disabled
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const serviceAccount = new gcp.serviceaccount.Account("service_account", {
///     project: "my-project-name",
///     accountId: "service-account",
///     displayName: "Firebase App Hosting compute service account",
///     createIgnoreAlreadyExists: true,
/// });
/// const exampleAppHostingBackend = new gcp.firebase.AppHostingBackend("example", {
///     project: "my-project-name",
///     location: "us-central1",
///     backendId: "dd-disabled",
///     appId: "1:0000000000:web:674cde32020e16fbce9dbd",
///     servingLocality: "GLOBAL_ACCESS",
///     serviceAccount: serviceAccount.email,
/// });
/// const example = new gcp.firebase.AppHostingDefaultDomain("example", {
///     project: exampleAppHostingBackend.project,
///     location: exampleAppHostingBackend.location,
///     backend: exampleAppHostingBackend.backendId,
///     domainId: exampleAppHostingBackend.uri,
///     disabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// service_account = gcp.serviceaccount.Account("service_account",
///     project="my-project-name",
///     account_id="service-account",
///     display_name="Firebase App Hosting compute service account",
///     create_ignore_already_exists=True)
/// example_app_hosting_backend = gcp.firebase.AppHostingBackend("example",
///     project="my-project-name",
///     location="us-central1",
///     backend_id="dd-disabled",
///     app_id="1:0000000000:web:674cde32020e16fbce9dbd",
///     serving_locality="GLOBAL_ACCESS",
///     service_account=service_account.email)
/// example = gcp.firebase.AppHostingDefaultDomain("example",
///     project=example_app_hosting_backend.project,
///     location=example_app_hosting_backend.location,
///     backend=example_app_hosting_backend.backend_id,
///     domain_id=example_app_hosting_backend.uri,
///     disabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceAccount = new Gcp.ServiceAccount.Account("service_account", new()
///     {
///         Project = "my-project-name",
///         AccountId = "service-account",
///         DisplayName = "Firebase App Hosting compute service account",
///         CreateIgnoreAlreadyExists = true,
///     });
///
///     var exampleAppHostingBackend = new Gcp.Firebase.AppHostingBackend("example", new()
///     {
///         Project = "my-project-name",
///         Location = "us-central1",
///         BackendId = "dd-disabled",
///         AppId = "1:0000000000:web:674cde32020e16fbce9dbd",
///         ServingLocality = "GLOBAL_ACCESS",
///         ServiceAccount = serviceAccount.Email,
///     });
///
///     var example = new Gcp.Firebase.AppHostingDefaultDomain("example", new()
///     {
///         Project = exampleAppHostingBackend.Project,
///         Location = exampleAppHostingBackend.Location,
///         Backend = exampleAppHostingBackend.BackendId,
///         DomainId = exampleAppHostingBackend.Uri,
///         Disabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		serviceAccount, err := serviceaccount.NewAccount(ctx, "service_account", &serviceaccount.AccountArgs{
/// 			Project:                   pulumi.String("my-project-name"),
/// 			AccountId:                 pulumi.String("service-account"),
/// 			DisplayName:               pulumi.String("Firebase App Hosting compute service account"),
/// 			CreateIgnoreAlreadyExists: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppHostingBackend, err := firebase.NewAppHostingBackend(ctx, "example", &firebase.AppHostingBackendArgs{
/// 			Project:         pulumi.String("my-project-name"),
/// 			Location:        pulumi.String("us-central1"),
/// 			BackendId:       pulumi.String("dd-disabled"),
/// 			AppId:           pulumi.String("1:0000000000:web:674cde32020e16fbce9dbd"),
/// 			ServingLocality: pulumi.String("GLOBAL_ACCESS"),
/// 			ServiceAccount:  serviceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firebase.NewAppHostingDefaultDomain(ctx, "example", &firebase.AppHostingDefaultDomainArgs{
/// 			Project:  exampleAppHostingBackend.Project,
/// 			Location: exampleAppHostingBackend.Location,
/// 			Backend:  exampleAppHostingBackend.BackendId,
/// 			DomainId: exampleAppHostingBackend.Uri,
/// 			Disabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.firebase.AppHostingBackend;
/// import com.pulumi.gcp.firebase.AppHostingBackendArgs;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomain;
/// import com.pulumi.gcp.firebase.AppHostingDefaultDomainArgs;
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
///         var serviceAccount = new Account("serviceAccount", AccountArgs.builder()
///             .project("my-project-name")
///             .accountId("service-account")
///             .displayName("Firebase App Hosting compute service account")
///             .createIgnoreAlreadyExists(true)
///             .build());
///
///         var exampleAppHostingBackend = new AppHostingBackend("exampleAppHostingBackend", AppHostingBackendArgs.builder()
///             .project("my-project-name")
///             .location("us-central1")
///             .backendId("dd-disabled")
///             .appId("1:0000000000:web:674cde32020e16fbce9dbd")
///             .servingLocality("GLOBAL_ACCESS")
///             .serviceAccount(serviceAccount.email())
///             .build());
///
///         var example = new AppHostingDefaultDomain("example", AppHostingDefaultDomainArgs.builder()
///             .project(exampleAppHostingBackend.project())
///             .location(exampleAppHostingBackend.location())
///             .backend(exampleAppHostingBackend.backendId())
///             .domainId(exampleAppHostingBackend.uri())
///             .disabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:firebase:AppHostingDefaultDomain
///     properties:
///       project: ${exampleAppHostingBackend.project}
///       location: ${exampleAppHostingBackend.location}
///       backend: ${exampleAppHostingBackend.backendId}
///       domainId: ${exampleAppHostingBackend.uri}
///       disabled: true
///   exampleAppHostingBackend:
///     type: gcp:firebase:AppHostingBackend
///     name: example
///     properties:
///       project: my-project-name
///       location: us-central1
///       backendId: dd-disabled
///       appId: 1:0000000000:web:674cde32020e16fbce9dbd
///       servingLocality: GLOBAL_ACCESS
///       serviceAccount: ${serviceAccount.email}
///   serviceAccount:
///     type: gcp:serviceaccount:Account
///     name: service_account
///     properties:
///       project: my-project-name
///       accountId: service-account
///       displayName: Firebase App Hosting compute service account
///       createIgnoreAlreadyExists: true
/// ```
///
///
/// ## Import
///
/// DefaultDomain can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{domain_id}}`
///
/// * `{{location}}/{{backend}}/{{domain_id}}`
///
/// When using the `pulumi import` command, DefaultDomain can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default projects/{{project}}/locations/{{location}}/backends/{{backend}}/domains/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default {{project}}/{{location}}/{{backend}}/{{domain_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain default {{location}}/{{backend}}/{{domain_id}}
/// ```
class AppHostingDefaultDomain extends pulumi.CustomResource {
  /// The ID of the Backend that this Domain is associated with
  late final pulumi.Output<String> backend;
  /// Time at which the domain was created.
  late final pulumi.Output<String> createTime;
  /// Whether the domain is disabled. Defaults to false.
  late final pulumi.Output<bool> disabled;
  /// Id of the domain. For default domain, it should be {{backend}}--{{project_id}}.{{location}}.hosted.app
  late final pulumi.Output<String> domainId;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;
  /// The location of the Backend that this Domain is associated with
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;
  /// Time at which the domain was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AppHostingDefaultDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppHostingDefaultDomain]. {@macro pulumi_firebase_app_hosting_default_domain_app_hosting_default_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppHostingDefaultDomain(
    String name, {
    AppHostingDefaultDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingDefaultDomain:AppHostingDefaultDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backend = registerOutput<String>('backend');
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool>('disabled');
    this.domainId = registerOutput<String>('domainId');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
