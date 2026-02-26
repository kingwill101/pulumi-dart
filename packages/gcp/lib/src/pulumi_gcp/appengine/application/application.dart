import 'package:pulumi/pulumi.dart';
import '../application_feature_settings/application_feature_settings.dart';
import '../application_iap/application_iap.dart';
import '../application_url_dispatch_rule/application_url_dispatch_rule.dart';
import 'application_args.dart';

/// Allows creation and management of an App Engine application.
///
/// > App Engine applications cannot be deleted once they're created; you have to delete the
/// entire project to delete the application. This provider will report the application has been
/// successfully deleted; this is a limitation of the provider, and will go away in the future.
/// This provider is not able to delete App Engine applications.
///
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
/// name: "My Project",
/// projectId: "your-project-id",
/// orgId: "1234567",
/// });
/// const app = new gcp.appengine.Application("app", {
/// project: myProject.projectId,
/// locationId: "us-central",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.organizations.Project("my_project",
/// name="My Project",
/// project_id="your-project-id",
/// org_id="1234567")
/// app = gcp.appengine.Application("app",
/// project=my_project.project_id,
/// location_id="us-central")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myProject = new Gcp.Organizations.Project("my_project", new()
/// {
/// Name = "My Project",
/// ProjectId = "your-project-id",
/// OrgId = "1234567",
/// });
///
/// var app = new Gcp.AppEngine.Application("app", new()
/// {
/// Project = myProject.ProjectId,
/// LocationId = "us-central",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// Name:      pulumi.String("My Project"),
/// ProjectId: pulumi.String("your-project-id"),
/// OrgId:     pulumi.String("1234567"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appengine.NewApplication(ctx, "app", &appengine.ApplicationArgs{
/// Project:    myProject.ProjectId,
/// LocationId: pulumi.String("us-central"),
/// })
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.appengine.Application;
/// import com.pulumi.gcp.appengine.ApplicationArgs;
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
/// var myProject = new Project("myProject", ProjectArgs.builder()
/// .name("My Project")
/// .projectId("your-project-id")
/// .orgId("1234567")
/// .build());
///
/// var app = new Application("app", ApplicationArgs.builder()
/// .project(myProject.projectId())
/// .locationId("us-central")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myProject:
/// type: gcp:organizations:Project
/// name: my_project
/// properties:
/// name: My Project
/// projectId: your-project-id
/// orgId: '1234567'
/// app:
/// type: gcp:appengine:Application
/// properties:
/// project: ${myProject.projectId}
/// locationId: us-central
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Applications can be imported using the ID of the project the application belongs to, e.g.
///
/// * `{{project-id}}`
///
/// When using the `pulumi import` command, Applications can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/application:Application default {{project-id}}
/// ```
class Application extends CustomResource {
  /// Identifier of the app, usually `{PROJECT_ID}`
  late final Output<String> appId;

  /// The domain to authenticate users with when using App Engine's User API.
  late final Output<String> authDomain;

  /// The GCS bucket code is being stored in for this app.
  late final Output<String> codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// <span pulumi-lang-nodejs="`gcp.firestore.Database`" pulumi-lang-dotnet="`gcp.firestore.Database`" pulumi-lang-go="`firestore.Database`" pulumi-lang-python="`firestore.Database`" pulumi-lang-yaml="`gcp.firestore.Database`" pulumi-lang-java="`gcp.firestore.Database`">`gcp.firestore.Database`</span>
  /// resource instead.
  late final Output<String> databaseType;

  /// The GCS bucket content is being stored in for this app.
  late final Output<String> defaultBucket;

  /// The default hostname for this app.
  late final Output<String> defaultHostname;

  /// A block of optional settings to configure specific App Engine features:
  late final Output<ApplicationFeatureSettings> featureSettings;

  /// The GCR domain used for storing managed Docker images for this app.
  late final Output<String> gcrDomain;

  /// Settings for enabling Cloud Identity Aware Proxy
  late final Output<ApplicationIap> iap;

  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  late final Output<String> locationId;

  /// Unique name of the app, usually `apps/{PROJECT_ID}`
  late final Output<String> name;

  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  late final Output<String> project;

  /// The serving status of the app.
  late final Output<String> servingStatus;

  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  late final Output<String> sslPolicy;

  /// A list of dispatch rule blocks. Each block has a <span pulumi-lang-nodejs="`domain`" pulumi-lang-dotnet="`Domain`" pulumi-lang-go="`domain`" pulumi-lang-python="`domain`" pulumi-lang-yaml="`domain`" pulumi-lang-java="`domain`">`domain`</span>, <span pulumi-lang-nodejs="`path`" pulumi-lang-dotnet="`Path`" pulumi-lang-go="`path`" pulumi-lang-python="`path`" pulumi-lang-yaml="`path`" pulumi-lang-java="`path`">`path`</span>, and <span pulumi-lang-nodejs="`service`" pulumi-lang-dotnet="`Service`" pulumi-lang-go="`service`" pulumi-lang-python="`service`" pulumi-lang-yaml="`service`" pulumi-lang-java="`service`">`service`</span> field.
  late final Output<List<ApplicationUrlDispatchRule>> urlDispatchRules;

  Application(
    String name, {
    ApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = Output.createUnknown<String>();
    this.authDomain = Output.createUnknown<String>();
    this.codeBucket = Output.createUnknown<String>();
    this.databaseType = Output.createUnknown<String>();
    this.defaultBucket = Output.createUnknown<String>();
    this.defaultHostname = Output.createUnknown<String>();
    this.featureSettings = Output.createUnknown<ApplicationFeatureSettings>();
    this.gcrDomain = Output.createUnknown<String>();
    this.iap = Output.createUnknown<ApplicationIap>();
    this.locationId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.servingStatus = Output.createUnknown<String>();
    this.sslPolicy = Output.createUnknown<String>();
    this.urlDispatchRules =
        Output.createUnknown<List<ApplicationUrlDispatchRule>>();
  }
}
