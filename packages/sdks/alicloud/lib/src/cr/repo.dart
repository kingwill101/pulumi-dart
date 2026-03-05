import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_args.dart';
import 'repo_domain_list.dart';
import 'repo_state.dart';

/// This resource will help you to manager Container Registry repositories, see [What is Repository](https://www.alibabacloud.com/help/en/acr/developer-reference/api-cr-2018-12-01-createrepository).
///
/// &gt; **NOTE:** Available since v1.35.0.
///
/// &gt; **NOTE:** You need to set your registry password in Container Registry console before use this resource.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const example = new alicloud.cr.Namespace("example", {
///     name: name,
///     autoCreate: false,
///     defaultVisibility: "PUBLIC",
/// });
/// const exampleRepo = new alicloud.cr.Repo("example", {
///     namespace: example.name,
///     name: name,
///     summary: "this is summary of my new repo",
///     repoType: "PRIVATE",
///     detail: "this is a private repo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.cr.Namespace("example",
///     name=name,
///     auto_create=False,
///     default_visibility="PUBLIC")
/// example_repo = alicloud.cr.Repo("example",
///     namespace=example.name,
///     name=name,
///     summary="this is summary of my new repo",
///     repo_type="PRIVATE",
///     detail="this is a private repo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var example = new AliCloud.CR.Namespace("example", new()
///     {
///         Name = name,
///         AutoCreate = false,
///         DefaultVisibility = "PUBLIC",
///     });
///
///     var exampleRepo = new AliCloud.CR.Repo("example", new()
///     {
///         Namespace = example.Name,
///         Name = name,
///         Summary = "this is summary of my new repo",
///         RepoType = "PRIVATE",
///         Detail = "this is a private repo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cr"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		example, err := cr.NewNamespace(ctx, "example", &cr.NamespaceArgs{
/// 			Name:              pulumi.String(name),
/// 			AutoCreate:        pulumi.Bool(false),
/// 			DefaultVisibility: pulumi.String("PUBLIC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cr.NewRepo(ctx, "example", &cr.RepoArgs{
/// 			Namespace: example.Name,
/// 			Name:      pulumi.String(name),
/// 			Summary:   pulumi.String("this is summary of my new repo"),
/// 			RepoType:  pulumi.String("PRIVATE"),
/// 			Detail:    pulumi.String("this is a private repo"),
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
/// import com.pulumi.alicloud.cr.Namespace;
/// import com.pulumi.alicloud.cr.NamespaceArgs;
/// import com.pulumi.alicloud.cr.Repo;
/// import com.pulumi.alicloud.cr.RepoArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .name(name)
///             .autoCreate(false)
///             .defaultVisibility("PUBLIC")
///             .build());
///
///         var exampleRepo = new Repo("exampleRepo", RepoArgs.builder()
///             .namespace(example.name())
///             .name(name)
///             .summary("this is summary of my new repo")
///             .repoType("PRIVATE")
///             .detail("this is a private repo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:cr:Namespace
///     properties:
///       name: ${name}
///       autoCreate: false
///       defaultVisibility: PUBLIC
///   exampleRepo:
///     type: alicloud:cr:Repo
///     name: example
///     properties:
///       namespace: ${example.name}
///       name: ${name}
///       summary: this is summary of my new repo
///       repoType: PRIVATE
///       detail: this is a private repo
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Container Registry repository can be imported using the `namespace/repository`, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cr/repo:Repo default `my-namespace/my-repo`
/// ```
class Repo extends pulumi.CustomResource {
  /// The repository specific information. MarkDown format is supported, and the length limit is 2000.
  late final pulumi.Output<String?> detail;

  /// (Optional) The repository domain list.
  late final pulumi.Output<RepoDomainList> domainList;

  /// Name of container registry repository.
  late final pulumi.Output<String> name;

  /// Name of container registry namespace where repository is located.
  late final pulumi.Output<String> namespace;

  /// `PUBLIC` or `PRIVATE`, repo's visibility.
  late final pulumi.Output<String> repoType;

  /// The repository general information. It can contain 1 to 80 characters.
  late final pulumi.Output<String> summary;

  /// Creates a new [Repo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repo]. {@macro pulumi_cr_repo_repo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repo(String name, {RepoArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:cr/repo:Repo',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    detail = registerOutput<String?>('detail');
    domainList = registerOutput<RepoDomainList>(
      'domainList',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RepoDomainList.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    repoType = registerOutput<String>('repoType');
    summary = registerOutput<String>('summary');
  }

  /// Gets an existing [Repo] resource's state with the given [name] and [id].
  static Repo get(String name, pulumi.Input<String> id, {RepoState? state}) {
    return Repo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Repo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cr/repo:Repo',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    detail = registerOutput<String?>('detail');
    domainList = registerOutput<RepoDomainList>(
      'domainList',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RepoDomainList.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    repoType = registerOutput<String>('repoType');
    summary = registerOutput<String>('summary');
  }
}
