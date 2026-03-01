import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_args.dart';

/// In Cloud Firestore, the unit of storage is the document. A document is a lightweight record
/// that contains fields, which map to values. Each document is identified by a name.
///
///
/// To get more information about Document, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/manage-data/add-data)
///
/// > **Warning:** This resource creates a Firestore Document on a project that already has
/// a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource with `type` set to
/// `"FIRESTORE_NATIVE"` and `location_id` set to your chosen location.
/// If you wish to use App Engine, you may instead create a
/// `gcp.appengine.Application` resource with `database_type` set to
/// `"CLOUD_FIRESTORE"`. Your Firestore location will be the same as
/// the App Engine location specified.
///
/// ## Example Usage
///
/// ### Firestore Document Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "project-id",
///     name: "project-id",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const firestore = new gcp.projects.Service("firestore", {
///     project: project.projectId,
///     service: "firestore.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const database = new gcp.firestore.Database("database", {
///     project: project.projectId,
///     name: "(default)",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
/// }, {
///     dependsOn: [firestore],
/// });
/// const mydoc = new gcp.firestore.Document("mydoc", {
///     project: project.projectId,
///     database: database.name,
///     collection: "somenewcollection",
///     documentId: "my-doc-id",
///     fields: "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="project-id",
///     name="project-id",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// firestore = gcp.projects.Service("firestore",
///     project=project.project_id,
///     service="firestore.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// database = gcp.firestore.Database("database",
///     project=project.project_id,
///     name="(default)",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     opts = pulumi.ResourceOptions(depends_on=[firestore]))
/// mydoc = gcp.firestore.Document("mydoc",
///     project=project.project_id,
///     database=database.name,
///     collection="somenewcollection",
///     document_id="my-doc-id",
///     fields="{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}")
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
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "project-id",
///         Name = "project-id",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var firestore = new Gcp.Projects.Service("firestore", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "firestore.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = project.ProjectId,
///         Name = "(default)",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firestore,
///         },
///     });
///
///     var mydoc = new Gcp.Firestore.Document("mydoc", new()
///     {
///         Project = project.ProjectId,
///         Database = database.Name,
///         Collection = "somenewcollection",
///         DocumentId = "my-doc-id",
///         Fields = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-id"),
/// 			Name:           pulumi.String("project-id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firestore, err := projects.NewService(ctx, "firestore", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("firestore.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:    project.ProjectId,
/// 			Name:       pulumi.String("(default)"),
/// 			LocationId: pulumi.String("nam5"),
/// 			Type:       pulumi.String("FIRESTORE_NATIVE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firestore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewDocument(ctx, "mydoc", &firestore.DocumentArgs{
/// 			Project:    project.ProjectId,
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("somenewcollection"),
/// 			DocumentId: pulumi.String("my-doc-id"),
/// 			Fields:     pulumi.String("{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"),
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Document;
/// import com.pulumi.gcp.firestore.DocumentArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("project-id")
///             .name("project-id")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var firestore = new Service("firestore", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("firestore.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .project(project.projectId())
///             .name("(default)")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firestore)
///                 .build());
///
///         var mydoc = new Document("mydoc", DocumentArgs.builder()
///             .project(project.projectId())
///             .database(database.name())
///             .collection("somenewcollection")
///             .documentId("my-doc-id")
///             .fields("{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: project-id
///       name: project-id
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   firestore:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: firestore.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: ${project.projectId}
///       name: (default)
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///     options:
///       dependsOn:
///         - ${firestore}
///   mydoc:
///     type: gcp:firestore:Document
///     properties:
///       project: ${project.projectId}
///       database: ${database.name}
///       collection: somenewcollection
///       documentId: my-doc-id
///       fields: '{"something":{"mapValue":{"fields":{"akey":{"stringValue":"avalue"}}}}}'
/// ```
///
/// ### Firestore Document Nested Document
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "project-id",
///     name: "project-id",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const firestore = new gcp.projects.Service("firestore", {
///     project: project.projectId,
///     service: "firestore.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const database = new gcp.firestore.Database("database", {
///     project: project.projectId,
///     name: "(default)",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
/// }, {
///     dependsOn: [firestore],
/// });
/// const mydoc = new gcp.firestore.Document("mydoc", {
///     project: project.projectId,
///     database: database.name,
///     collection: "somenewcollection",
///     documentId: "my-doc-id",
///     fields: "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}",
/// });
/// const subDocument = new gcp.firestore.Document("sub_document", {
///     project: project.projectId,
///     database: database.name,
///     collection: pulumi.interpolate`${mydoc.path}/subdocs`,
///     documentId: "bitcoinkey",
///     fields: "{\"something\":{\"mapValue\":{\"fields\":{\"ayo\":{\"stringValue\":\"val2\"}}}}}",
/// });
/// const subSubDocument = new gcp.firestore.Document("sub_sub_document", {
///     project: project.projectId,
///     database: database.name,
///     collection: pulumi.interpolate`${subDocument.path}/subsubdocs`,
///     documentId: "asecret",
///     fields: "{\"something\":{\"mapValue\":{\"fields\":{\"secret\":{\"stringValue\":\"hithere\"}}}}}",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="project-id",
///     name="project-id",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// firestore = gcp.projects.Service("firestore",
///     project=project.project_id,
///     service="firestore.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// database = gcp.firestore.Database("database",
///     project=project.project_id,
///     name="(default)",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     opts = pulumi.ResourceOptions(depends_on=[firestore]))
/// mydoc = gcp.firestore.Document("mydoc",
///     project=project.project_id,
///     database=database.name,
///     collection="somenewcollection",
///     document_id="my-doc-id",
///     fields="{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}")
/// sub_document = gcp.firestore.Document("sub_document",
///     project=project.project_id,
///     database=database.name,
///     collection=mydoc.path.apply(lambda path: f"{path}/subdocs"),
///     document_id="bitcoinkey",
///     fields="{\"something\":{\"mapValue\":{\"fields\":{\"ayo\":{\"stringValue\":\"val2\"}}}}}")
/// sub_sub_document = gcp.firestore.Document("sub_sub_document",
///     project=project.project_id,
///     database=database.name,
///     collection=sub_document.path.apply(lambda path: f"{path}/subsubdocs"),
///     document_id="asecret",
///     fields="{\"something\":{\"mapValue\":{\"fields\":{\"secret\":{\"stringValue\":\"hithere\"}}}}}")
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
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "project-id",
///         Name = "project-id",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var firestore = new Gcp.Projects.Service("firestore", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "firestore.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = project.ProjectId,
///         Name = "(default)",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             firestore,
///         },
///     });
///
///     var mydoc = new Gcp.Firestore.Document("mydoc", new()
///     {
///         Project = project.ProjectId,
///         Database = database.Name,
///         Collection = "somenewcollection",
///         DocumentId = "my-doc-id",
///         Fields = "{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}",
///     });
///
///     var subDocument = new Gcp.Firestore.Document("sub_document", new()
///     {
///         Project = project.ProjectId,
///         Database = database.Name,
///         Collection = mydoc.Path.Apply(path => $"{path}/subdocs"),
///         DocumentId = "bitcoinkey",
///         Fields = "{\"something\":{\"mapValue\":{\"fields\":{\"ayo\":{\"stringValue\":\"val2\"}}}}}",
///     });
///
///     var subSubDocument = new Gcp.Firestore.Document("sub_sub_document", new()
///     {
///         Project = project.ProjectId,
///         Database = database.Name,
///         Collection = subDocument.Path.Apply(path => $"{path}/subsubdocs"),
///         DocumentId = "asecret",
///         Fields = "{\"something\":{\"mapValue\":{\"fields\":{\"secret\":{\"stringValue\":\"hithere\"}}}}}",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("project-id"),
/// 			Name:           pulumi.String("project-id"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		firestore, err := projects.NewService(ctx, "firestore", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("firestore.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:    project.ProjectId,
/// 			Name:       pulumi.String("(default)"),
/// 			LocationId: pulumi.String("nam5"),
/// 			Type:       pulumi.String("FIRESTORE_NATIVE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			firestore,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mydoc, err := firestore.NewDocument(ctx, "mydoc", &firestore.DocumentArgs{
/// 			Project:    project.ProjectId,
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("somenewcollection"),
/// 			DocumentId: pulumi.String("my-doc-id"),
/// 			Fields:     pulumi.String("{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subDocument, err := firestore.NewDocument(ctx, "sub_document", &firestore.DocumentArgs{
/// 			Project:  project.ProjectId,
/// 			Database: database.Name,
/// 			Collection: mydoc.Path.ApplyT(func(path string) (string, error) {
/// 				return fmt.Sprintf("%v/subdocs", path), nil
/// 			}).(pulumi.StringOutput),
/// 			DocumentId: pulumi.String("bitcoinkey"),
/// 			Fields:     pulumi.String("{\"something\":{\"mapValue\":{\"fields\":{\"ayo\":{\"stringValue\":\"val2\"}}}}}"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewDocument(ctx, "sub_sub_document", &firestore.DocumentArgs{
/// 			Project:  project.ProjectId,
/// 			Database: database.Name,
/// 			Collection: subDocument.Path.ApplyT(func(path string) (string, error) {
/// 				return fmt.Sprintf("%v/subsubdocs", path), nil
/// 			}).(pulumi.StringOutput),
/// 			DocumentId: pulumi.String("asecret"),
/// 			Fields:     pulumi.String("{\"something\":{\"mapValue\":{\"fields\":{\"secret\":{\"stringValue\":\"hithere\"}}}}}"),
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Document;
/// import com.pulumi.gcp.firestore.DocumentArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("project-id")
///             .name("project-id")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var firestore = new Service("firestore", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("firestore.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var database = new Database("database", DatabaseArgs.builder()
///             .project(project.projectId())
///             .name("(default)")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(firestore)
///                 .build());
///
///         var mydoc = new Document("mydoc", DocumentArgs.builder()
///             .project(project.projectId())
///             .database(database.name())
///             .collection("somenewcollection")
///             .documentId("my-doc-id")
///             .fields("{\"something\":{\"mapValue\":{\"fields\":{\"akey\":{\"stringValue\":\"avalue\"}}}}}")
///             .build());
///
///         var subDocument = new Document("subDocument", DocumentArgs.builder()
///             .project(project.projectId())
///             .database(database.name())
///             .collection(mydoc.path().applyValue(_path -> String.format("%s/subdocs", _path)))
///             .documentId("bitcoinkey")
///             .fields("{\"something\":{\"mapValue\":{\"fields\":{\"ayo\":{\"stringValue\":\"val2\"}}}}}")
///             .build());
///
///         var subSubDocument = new Document("subSubDocument", DocumentArgs.builder()
///             .project(project.projectId())
///             .database(database.name())
///             .collection(subDocument.path().applyValue(_path -> String.format("%s/subsubdocs", _path)))
///             .documentId("asecret")
///             .fields("{\"something\":{\"mapValue\":{\"fields\":{\"secret\":{\"stringValue\":\"hithere\"}}}}}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: project-id
///       name: project-id
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   firestore:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: firestore.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: ${project.projectId}
///       name: (default)
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///     options:
///       dependsOn:
///         - ${firestore}
///   mydoc:
///     type: gcp:firestore:Document
///     properties:
///       project: ${project.projectId}
///       database: ${database.name}
///       collection: somenewcollection
///       documentId: my-doc-id
///       fields: '{"something":{"mapValue":{"fields":{"akey":{"stringValue":"avalue"}}}}}'
///   subDocument:
///     type: gcp:firestore:Document
///     name: sub_document
///     properties:
///       project: ${project.projectId}
///       database: ${database.name}
///       collection: ${mydoc.path}/subdocs
///       documentId: bitcoinkey
///       fields: '{"something":{"mapValue":{"fields":{"ayo":{"stringValue":"val2"}}}}}'
///   subSubDocument:
///     type: gcp:firestore:Document
///     name: sub_sub_document
///     properties:
///       project: ${project.projectId}
///       database: ${database.name}
///       collection: ${subDocument.path}/subsubdocs
///       documentId: asecret
///       fields: '{"something":{"mapValue":{"fields":{"secret":{"stringValue":"hithere"}}}}}'
/// ```
///
///
/// ## Import
///
/// Document can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Document can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/document:Document default {{name}}
/// ```
class Document extends pulumi.CustomResource {
  /// The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  late final pulumi.Output<String> collection;

  /// Creation timestamp in RFC3339 format.
  late final pulumi.Output<String> createTime;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;

  /// The client-assigned document ID to use for this document during creation.
  late final pulumi.Output<String> documentId;

  /// The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  late final pulumi.Output<String> fields;

  /// A server defined name for this document. Format:
  /// `projects/{{project_id}}/databases/{{database_id}}/documents/{{path}}/{{document_id}}`
  late final pulumi.Output<String> name;

  /// A relative path to the collection this document exists within
  late final pulumi.Output<String> path;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Last update timestamp in RFC3339 format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Document].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Document]. {@macro pulumi_firestore_document_document_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:firestore/document:Document',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.collection = registerOutput<String>('collection');
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String?>('database');
    this.documentId = registerOutput<String>('documentId');
    this.fields = registerOutput<String>('fields');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
