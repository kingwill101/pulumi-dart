import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_initial_config.dart';
import 'repository_uri.dart';

/// Repositories store source code. It supports all Git SCM client commands and has built-in pull requests and issue tracking. Both HTTPS and SSH authentication are supported.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
/// ## Example Usage
///
/// ### Secure Source Manager Repository Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "us-central1",
///     instanceId: "my-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.Repository("default", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     instance: instance.name,
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="us-central1",
///     instance_id="my-instance",
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.Repository("default",
///     location="us-central1",
///     repository_id="my-repository",
///     instance=instance.name,
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "us-central1",
///         InstanceId = "my-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Repository("default", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Instance = instance.Name,
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepository(ctx, "default", &securesourcemanager.RepositoryArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			RepositoryId:   pulumi.String("my-repository"),
/// 			Instance:       instance.Name,
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .instance(instance.name())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: us-central1
///       instanceId: my-instance
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       instance: ${instance.name}
///       deletionPolicy: PREVENT
/// ```
///
/// ### Secure Source Manager Repository Initial Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "us-central1",
///     instanceId: "my-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.Repository("default", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     instance: instance.name,
///     description: "This is a test repository",
///     initialConfig: {
///         defaultBranch: "main",
///         gitignores: ["python"],
///         license: "mit",
///         readme: "default",
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="us-central1",
///     instance_id="my-instance",
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.Repository("default",
///     location="us-central1",
///     repository_id="my-repository",
///     instance=instance.name,
///     description="This is a test repository",
///     initial_config={
///         "default_branch": "main",
///         "gitignores": ["python"],
///         "license": "mit",
///         "readme": "default",
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "us-central1",
///         InstanceId = "my-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Repository("default", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Instance = instance.Name,
///         Description = "This is a test repository",
///         InitialConfig = new Gcp.SecureSourceManager.Inputs.RepositoryInitialConfigArgs
///         {
///             DefaultBranch = "main",
///             Gitignores = new[]
///             {
///                 "python",
///             },
///             License = "mit",
///             Readme = "default",
///         },
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("us-central1"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepository(ctx, "default", &securesourcemanager.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Instance:     instance.Name,
/// 			Description:  pulumi.String("This is a test repository"),
/// 			InitialConfig: &securesourcemanager.RepositoryInitialConfigArgs{
/// 				DefaultBranch: pulumi.String("main"),
/// 				Gitignores: pulumi.StringArray{
/// 					pulumi.String("python"),
/// 				},
/// 				License: pulumi.String("mit"),
/// 				Readme:  pulumi.String("default"),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.RepositoryInitialConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("us-central1")
///             .instanceId("my-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .instance(instance.name())
///             .description("This is a test repository")
///             .initialConfig(RepositoryInitialConfigArgs.builder()
///                 .defaultBranch("main")
///                 .gitignores("python")
///                 .license("mit")
///                 .readme("default")
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: us-central1
///       instanceId: my-instance
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       instance: ${instance.name}
///       description: This is a test repository
///       initialConfig:
///         defaultBranch: main
///         gitignores:
///           - python
///         license: mit
///         readme: default
///       deletionPolicy: PREVENT
/// ```
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}`
///
/// * `{{location}}/{{repository_id}}`
///
/// * `{{repository_id}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{project}}/{{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{repository_id}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Time the repository was created in UTC.
  late final pulumi.Output<String> createTime;

  /// The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental deletion
  /// by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;

  /// Description of the repository, which cannot exceed 500 characters.
  late final pulumi.Output<String?> description;

  /// Initial configurations for the repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryInitialConfig?> initialConfig;

  /// The name of the instance in which the repository is hosted.
  late final pulumi.Output<String> instance;

  /// The location for the Repository.
  late final pulumi.Output<String> location;

  /// The resource name for the Repository.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The ID for the Repository.
  late final pulumi.Output<String> repositoryId;

  /// Unique identifier of the repository.
  late final pulumi.Output<String> uid;

  /// Time the repository was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// URIs for the repository.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryUri>> uris;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_securesourcemanager_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.description = registerOutput<String?>('description');
    this.initialConfig =
        registerOutput<RepositoryInitialConfig?>('initialConfig');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.uris = registerOutput<List<RepositoryUri>>('uris');
  }
}
