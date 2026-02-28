import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_cleanup_policy.dart';
import 'repository_docker_config.dart';
import 'repository_maven_config.dart';
import 'repository_remote_repository_config.dart';
import 'repository_virtual_repository_config.dart';
import 'repository_vulnerability_scanning_config.dart';

/// A repository for storing artifacts
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
/// ### Artifact Registry Repository Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository",
///     format: "DOCKER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository",
///     format="DOCKER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository",
///         Format = "DOCKER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository")
///             .format("DOCKER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository
///       format: DOCKER
/// ```
///
/// ### Artifact Registry Repository Multi Region
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     repositoryId: "my-repository",
///     description: "example docker repository",
///     location: "us",
///     format: "DOCKER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     repository_id="my-repository",
///     description="example docker repository",
///     location="us",
///     format="DOCKER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         RepositoryId = "my-repository",
///         Description = "example docker repository",
///         Location = "us",
///         Format = "DOCKER",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository"),
/// 			Location:     pulumi.String("us"),
/// 			Format:       pulumi.String("DOCKER"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .repositoryId("my-repository")
///             .description("example docker repository")
///             .location("us")
///             .format("DOCKER")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       repositoryId: my-repository
///       description: example docker repository
///       location: us
///       format: DOCKER
/// ```
///
/// ### Artifact Registry Repository Docker
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository",
///     format: "DOCKER",
///     dockerConfig: {
///         immutableTags: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository",
///     format="DOCKER",
///     docker_config={
///         "immutable_tags": True,
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
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository",
///         Format = "DOCKER",
///         DockerConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryDockerConfigArgs
///         {
///             ImmutableTags = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			DockerConfig: &artifactregistry.RepositoryDockerConfigArgs{
/// 				ImmutableTags: pulumi.Bool(true),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryDockerConfigArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository")
///             .format("DOCKER")
///             .dockerConfig(RepositoryDockerConfigArgs.builder()
///                 .immutableTags(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository
///       format: DOCKER
///       dockerConfig:
///         immutableTags: true
/// ```
///
/// ### Artifact Registry Repository Cmek
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
///     cryptoKeyId: "kms-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository with cmek",
///     format: "DOCKER",
///     kmsKeyName: "kms-key",
/// }, {
///     dependsOn: [cryptoKey],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
///     crypto_key_id="kms-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository with cmek",
///     format="DOCKER",
///     kms_key_name="kms-key",
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
///     {
///         CryptoKeyId = "kms-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository with cmek",
///         Format = "DOCKER",
///         KmsKeyName = "kms-key",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKey,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKey, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("kms-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository with cmek"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			KmsKeyName:   pulumi.String("kms-key"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKey,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("kms-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository with cmek")
///             .format("DOCKER")
///             .kmsKeyName("kms-key")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKey)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository with cmek
///       format: DOCKER
///       kmsKeyName: kms-key
///     options:
///       dependsOn:
///         - ${cryptoKey}
///   cryptoKey:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key
///     properties:
///       cryptoKeyId: kms-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Virtual
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo_upstream_1 = new gcp.artifactregistry.Repository("my-repo-upstream-1", {
///     location: "us-central1",
///     repositoryId: "my-repository-upstream-1",
///     description: "example docker repository (upstream source) 1",
///     format: "DOCKER",
/// });
/// const my_repo_upstream_2 = new gcp.artifactregistry.Repository("my-repo-upstream-2", {
///     location: "us-central1",
///     repositoryId: "my-repository-upstream-2",
///     description: "example docker repository (upstream source) 2",
///     format: "DOCKER",
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example virtual docker repository",
///     format: "DOCKER",
///     mode: "VIRTUAL_REPOSITORY",
///     virtualRepositoryConfig: {
///         upstreamPolicies: [
///             {
///                 id: "my-repository-upstream-1",
///                 repository: my_repo_upstream_1.id,
///                 priority: 20,
///             },
///             {
///                 id: "my-repository-upstream-2",
///                 repository: my_repo_upstream_2.id,
///                 priority: 10,
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo_upstream_1 = gcp.artifactregistry.Repository("my-repo-upstream-1",
///     location="us-central1",
///     repository_id="my-repository-upstream-1",
///     description="example docker repository (upstream source) 1",
///     format="DOCKER")
/// my_repo_upstream_2 = gcp.artifactregistry.Repository("my-repo-upstream-2",
///     location="us-central1",
///     repository_id="my-repository-upstream-2",
///     description="example docker repository (upstream source) 2",
///     format="DOCKER")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example virtual docker repository",
///     format="DOCKER",
///     mode="VIRTUAL_REPOSITORY",
///     virtual_repository_config={
///         "upstream_policies": [
///             {
///                 "id": "my-repository-upstream-1",
///                 "repository": my_repo_upstream_1.id,
///                 "priority": 20,
///             },
///             {
///                 "id": "my-repository-upstream-2",
///                 "repository": my_repo_upstream_2.id,
///                 "priority": 10,
///             },
///         ],
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
///     var my_repo_upstream_1 = new Gcp.ArtifactRegistry.Repository("my-repo-upstream-1", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository-upstream-1",
///         Description = "example docker repository (upstream source) 1",
///         Format = "DOCKER",
///     });
///
///     var my_repo_upstream_2 = new Gcp.ArtifactRegistry.Repository("my-repo-upstream-2", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository-upstream-2",
///         Description = "example docker repository (upstream source) 2",
///         Format = "DOCKER",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example virtual docker repository",
///         Format = "DOCKER",
///         Mode = "VIRTUAL_REPOSITORY",
///         VirtualRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryVirtualRepositoryConfigArgs
///         {
///             UpstreamPolicies = new[]
///             {
///                 new Gcp.ArtifactRegistry.Inputs.RepositoryVirtualRepositoryConfigUpstreamPolicyArgs
///                 {
///                     Id = "my-repository-upstream-1",
///                     Repository = my_repo_upstream_1.Id,
///                     Priority = 20,
///                 },
///                 new Gcp.ArtifactRegistry.Inputs.RepositoryVirtualRepositoryConfigUpstreamPolicyArgs
///                 {
///                     Id = "my-repository-upstream-2",
///                     Repository = my_repo_upstream_2.Id,
///                     Priority = 10,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_repo_upstream_1, err := artifactregistry.NewRepository(ctx, "my-repo-upstream-1", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository-upstream-1"),
/// 			Description:  pulumi.String("example docker repository (upstream source) 1"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_repo_upstream_2, err := artifactregistry.NewRepository(ctx, "my-repo-upstream-2", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository-upstream-2"),
/// 			Description:  pulumi.String("example docker repository (upstream source) 2"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example virtual docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("VIRTUAL_REPOSITORY"),
/// 			VirtualRepositoryConfig: &artifactregistry.RepositoryVirtualRepositoryConfigArgs{
/// 				UpstreamPolicies: artifactregistry.RepositoryVirtualRepositoryConfigUpstreamPolicyArray{
/// 					&artifactregistry.RepositoryVirtualRepositoryConfigUpstreamPolicyArgs{
/// 						Id:         pulumi.String("my-repository-upstream-1"),
/// 						Repository: my_repo_upstream_1.ID(),
/// 						Priority:   pulumi.Int(20),
/// 					},
/// 					&artifactregistry.RepositoryVirtualRepositoryConfigUpstreamPolicyArgs{
/// 						Id:         pulumi.String("my-repository-upstream-2"),
/// 						Repository: my_repo_upstream_2.ID(),
/// 						Priority:   pulumi.Int(10),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryVirtualRepositoryConfigArgs;
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
///         var my_repo_upstream_1 = new Repository("my-repo-upstream-1", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository-upstream-1")
///             .description("example docker repository (upstream source) 1")
///             .format("DOCKER")
///             .build());
///
///         var my_repo_upstream_2 = new Repository("my-repo-upstream-2", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository-upstream-2")
///             .description("example docker repository (upstream source) 2")
///             .format("DOCKER")
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example virtual docker repository")
///             .format("DOCKER")
///             .mode("VIRTUAL_REPOSITORY")
///             .virtualRepositoryConfig(RepositoryVirtualRepositoryConfigArgs.builder()
///                 .upstreamPolicies(
///                     RepositoryVirtualRepositoryConfigUpstreamPolicyArgs.builder()
///                         .id("my-repository-upstream-1")
///                         .repository(my_repo_upstream_1.id())
///                         .priority(20)
///                         .build(),
///                     RepositoryVirtualRepositoryConfigUpstreamPolicyArgs.builder()
///                         .id("my-repository-upstream-2")
///                         .repository(my_repo_upstream_2.id())
///                         .priority(10)
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo-upstream-1:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository-upstream-1
///       description: example docker repository (upstream source) 1
///       format: DOCKER
///   my-repo-upstream-2:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository-upstream-2
///       description: example docker repository (upstream source) 2
///       format: DOCKER
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example virtual docker repository
///       format: DOCKER
///       mode: VIRTUAL_REPOSITORY
///       virtualRepositoryConfig:
///         upstreamPolicies:
///           - id: my-repository-upstream-1
///             repository: ${["my-repo-upstream-1"].id}
///             priority: 20
///           - id: my-repository-upstream-2
///             repository: ${["my-repo-upstream-2"].id}
///             priority: 10
/// ```
///
/// ### Artifact Registry Repository Remote
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example remote docker repository",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "docker hub",
///         dockerRepository: {
///             publicRepository: "DOCKER_HUB",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example remote docker repository",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "docker hub",
///         "docker_repository": {
///             "public_repository": "DOCKER_HUB",
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
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example remote docker repository",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "docker hub",
///             DockerRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs
///             {
///                 PublicRepository = "DOCKER_HUB",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example remote docker repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description: pulumi.String("docker hub"),
/// 				DockerRepository: &artifactregistry.RepositoryRemoteRepositoryConfigDockerRepositoryArgs{
/// 					PublicRepository: pulumi.String("DOCKER_HUB"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example remote docker repository")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("docker hub")
///                 .dockerRepository(RepositoryRemoteRepositoryConfigDockerRepositoryArgs.builder()
///                     .publicRepository("DOCKER_HUB")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example remote docker repository
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: docker hub
///         dockerRepository:
///           publicRepository: DOCKER_HUB
/// ```
///
/// ### Artifact Registry Repository Remote Apt
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "debian-stable",
///     description: "example remote apt repository",
///     format: "APT",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "Debian stable remote repository",
///         aptRepository: {
///             publicRepository: {
///                 repositoryBase: "DEBIAN",
///                 repositoryPath: "debian/dists/stable",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="debian-stable",
///     description="example remote apt repository",
///     format="APT",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "Debian stable remote repository",
///         "apt_repository": {
///             "public_repository": {
///                 "repository_base": "DEBIAN",
///                 "repository_path": "debian/dists/stable",
///             },
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
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "debian-stable",
///         Description = "example remote apt repository",
///         Format = "APT",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "Debian stable remote repository",
///             AptRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigAptRepositoryArgs
///             {
///                 PublicRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigAptRepositoryPublicRepositoryArgs
///                 {
///                     RepositoryBase = "DEBIAN",
///                     RepositoryPath = "debian/dists/stable",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("debian-stable"),
/// 			Description:  pulumi.String("example remote apt repository"),
/// 			Format:       pulumi.String("APT"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description: pulumi.String("Debian stable remote repository"),
/// 				AptRepository: &artifactregistry.RepositoryRemoteRepositoryConfigAptRepositoryArgs{
/// 					PublicRepository: &artifactregistry.RepositoryRemoteRepositoryConfigAptRepositoryPublicRepositoryArgs{
/// 						RepositoryBase: pulumi.String("DEBIAN"),
/// 						RepositoryPath: pulumi.String("debian/dists/stable"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigAptRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigAptRepositoryPublicRepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("debian-stable")
///             .description("example remote apt repository")
///             .format("APT")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("Debian stable remote repository")
///                 .aptRepository(RepositoryRemoteRepositoryConfigAptRepositoryArgs.builder()
///                     .publicRepository(RepositoryRemoteRepositoryConfigAptRepositoryPublicRepositoryArgs.builder()
///                         .repositoryBase("DEBIAN")
///                         .repositoryPath("debian/dists/stable")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: debian-stable
///       description: example remote apt repository
///       format: APT
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: Debian stable remote repository
///         aptRepository:
///           publicRepository:
///             repositoryBase: DEBIAN
///             repositoryPath: debian/dists/stable
/// ```
///
/// ### Artifact Registry Repository Remote Yum
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "rocky-9",
///     description: "example remote yum repository",
///     format: "YUM",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "Rocky 9 remote repository",
///         yumRepository: {
///             publicRepository: {
///                 repositoryBase: "ROCKY",
///                 repositoryPath: "pub/rocky/9/BaseOS/x86_64/os",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="rocky-9",
///     description="example remote yum repository",
///     format="YUM",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "Rocky 9 remote repository",
///         "yum_repository": {
///             "public_repository": {
///                 "repository_base": "ROCKY",
///                 "repository_path": "pub/rocky/9/BaseOS/x86_64/os",
///             },
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
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "rocky-9",
///         Description = "example remote yum repository",
///         Format = "YUM",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "Rocky 9 remote repository",
///             YumRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigYumRepositoryArgs
///             {
///                 PublicRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigYumRepositoryPublicRepositoryArgs
///                 {
///                     RepositoryBase = "ROCKY",
///                     RepositoryPath = "pub/rocky/9/BaseOS/x86_64/os",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("rocky-9"),
/// 			Description:  pulumi.String("example remote yum repository"),
/// 			Format:       pulumi.String("YUM"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description: pulumi.String("Rocky 9 remote repository"),
/// 				YumRepository: &artifactregistry.RepositoryRemoteRepositoryConfigYumRepositoryArgs{
/// 					PublicRepository: &artifactregistry.RepositoryRemoteRepositoryConfigYumRepositoryPublicRepositoryArgs{
/// 						RepositoryBase: pulumi.String("ROCKY"),
/// 						RepositoryPath: pulumi.String("pub/rocky/9/BaseOS/x86_64/os"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigYumRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigYumRepositoryPublicRepositoryArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("rocky-9")
///             .description("example remote yum repository")
///             .format("YUM")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("Rocky 9 remote repository")
///                 .yumRepository(RepositoryRemoteRepositoryConfigYumRepositoryArgs.builder()
///                     .publicRepository(RepositoryRemoteRepositoryConfigYumRepositoryPublicRepositoryArgs.builder()
///                         .repositoryBase("ROCKY")
///                         .repositoryPath("pub/rocky/9/BaseOS/x86_64/os")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: rocky-9
///       description: example remote yum repository
///       format: YUM
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: Rocky 9 remote repository
///         yumRepository:
///           publicRepository:
///             repositoryBase: ROCKY
///             repositoryPath: pub/rocky/9/BaseOS/x86_64/os
/// ```
///
/// ### Artifact Registry Repository Cleanup
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository with cleanup policies",
///     format: "DOCKER",
///     cleanupPolicyDryRun: false,
///     cleanupPolicies: [
///         {
///             id: "delete-untagged",
///             action: "DELETE",
///             condition: {
///                 tagState: "UNTAGGED",
///             },
///         },
///         {
///             id: "keep-new-untagged",
///             action: "KEEP",
///             condition: {
///                 tagState: "UNTAGGED",
///                 newerThan: "7d",
///             },
///         },
///         {
///             id: "delete-prerelease",
///             action: "DELETE",
///             condition: {
///                 tagState: "TAGGED",
///                 tagPrefixes: [
///                     "alpha",
///                     "v0",
///                 ],
///                 olderThan: "30d",
///             },
///         },
///         {
///             id: "keep-tagged-release",
///             action: "KEEP",
///             condition: {
///                 tagState: "TAGGED",
///                 tagPrefixes: ["release"],
///                 packageNamePrefixes: [
///                     "webapp",
///                     "mobile",
///                 ],
///             },
///         },
///         {
///             id: "keep-minimum-versions",
///             action: "KEEP",
///             mostRecentVersions: {
///                 packageNamePrefixes: [
///                     "webapp",
///                     "mobile",
///                     "sandbox",
///                 ],
///                 keepCount: 5,
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository with cleanup policies",
///     format="DOCKER",
///     cleanup_policy_dry_run=False,
///     cleanup_policies=[
///         {
///             "id": "delete-untagged",
///             "action": "DELETE",
///             "condition": {
///                 "tag_state": "UNTAGGED",
///             },
///         },
///         {
///             "id": "keep-new-untagged",
///             "action": "KEEP",
///             "condition": {
///                 "tag_state": "UNTAGGED",
///                 "newer_than": "7d",
///             },
///         },
///         {
///             "id": "delete-prerelease",
///             "action": "DELETE",
///             "condition": {
///                 "tag_state": "TAGGED",
///                 "tag_prefixes": [
///                     "alpha",
///                     "v0",
///                 ],
///                 "older_than": "30d",
///             },
///         },
///         {
///             "id": "keep-tagged-release",
///             "action": "KEEP",
///             "condition": {
///                 "tag_state": "TAGGED",
///                 "tag_prefixes": ["release"],
///                 "package_name_prefixes": [
///                     "webapp",
///                     "mobile",
///                 ],
///             },
///         },
///         {
///             "id": "keep-minimum-versions",
///             "action": "KEEP",
///             "most_recent_versions": {
///                 "package_name_prefixes": [
///                     "webapp",
///                     "mobile",
///                     "sandbox",
///                 ],
///                 "keep_count": 5,
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository with cleanup policies",
///         Format = "DOCKER",
///         CleanupPolicyDryRun = false,
///         CleanupPolicies = new[]
///         {
///             new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyArgs
///             {
///                 Id = "delete-untagged",
///                 Action = "DELETE",
///                 Condition = new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyConditionArgs
///                 {
///                     TagState = "UNTAGGED",
///                 },
///             },
///             new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyArgs
///             {
///                 Id = "keep-new-untagged",
///                 Action = "KEEP",
///                 Condition = new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyConditionArgs
///                 {
///                     TagState = "UNTAGGED",
///                     NewerThan = "7d",
///                 },
///             },
///             new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyArgs
///             {
///                 Id = "delete-prerelease",
///                 Action = "DELETE",
///                 Condition = new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyConditionArgs
///                 {
///                     TagState = "TAGGED",
///                     TagPrefixes = new[]
///                     {
///                         "alpha",
///                         "v0",
///                     },
///                     OlderThan = "30d",
///                 },
///             },
///             new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyArgs
///             {
///                 Id = "keep-tagged-release",
///                 Action = "KEEP",
///                 Condition = new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyConditionArgs
///                 {
///                     TagState = "TAGGED",
///                     TagPrefixes = new[]
///                     {
///                         "release",
///                     },
///                     PackageNamePrefixes = new[]
///                     {
///                         "webapp",
///                         "mobile",
///                     },
///                 },
///             },
///             new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyArgs
///             {
///                 Id = "keep-minimum-versions",
///                 Action = "KEEP",
///                 MostRecentVersions = new Gcp.ArtifactRegistry.Inputs.RepositoryCleanupPolicyMostRecentVersionsArgs
///                 {
///                     PackageNamePrefixes = new[]
///                     {
///                         "webapp",
///                         "mobile",
///                         "sandbox",
///                     },
///                     KeepCount = 5,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:            pulumi.String("us-central1"),
/// 			RepositoryId:        pulumi.String("my-repository"),
/// 			Description:         pulumi.String("example docker repository with cleanup policies"),
/// 			Format:              pulumi.String("DOCKER"),
/// 			CleanupPolicyDryRun: pulumi.Bool(false),
/// 			CleanupPolicies: artifactregistry.RepositoryCleanupPolicyArray{
/// 				&artifactregistry.RepositoryCleanupPolicyArgs{
/// 					Id:     pulumi.String("delete-untagged"),
/// 					Action: pulumi.String("DELETE"),
/// 					Condition: &artifactregistry.RepositoryCleanupPolicyConditionArgs{
/// 						TagState: pulumi.String("UNTAGGED"),
/// 					},
/// 				},
/// 				&artifactregistry.RepositoryCleanupPolicyArgs{
/// 					Id:     pulumi.String("keep-new-untagged"),
/// 					Action: pulumi.String("KEEP"),
/// 					Condition: &artifactregistry.RepositoryCleanupPolicyConditionArgs{
/// 						TagState:  pulumi.String("UNTAGGED"),
/// 						NewerThan: pulumi.String("7d"),
/// 					},
/// 				},
/// 				&artifactregistry.RepositoryCleanupPolicyArgs{
/// 					Id:     pulumi.String("delete-prerelease"),
/// 					Action: pulumi.String("DELETE"),
/// 					Condition: &artifactregistry.RepositoryCleanupPolicyConditionArgs{
/// 						TagState: pulumi.String("TAGGED"),
/// 						TagPrefixes: pulumi.StringArray{
/// 							pulumi.String("alpha"),
/// 							pulumi.String("v0"),
/// 						},
/// 						OlderThan: pulumi.String("30d"),
/// 					},
/// 				},
/// 				&artifactregistry.RepositoryCleanupPolicyArgs{
/// 					Id:     pulumi.String("keep-tagged-release"),
/// 					Action: pulumi.String("KEEP"),
/// 					Condition: &artifactregistry.RepositoryCleanupPolicyConditionArgs{
/// 						TagState: pulumi.String("TAGGED"),
/// 						TagPrefixes: pulumi.StringArray{
/// 							pulumi.String("release"),
/// 						},
/// 						PackageNamePrefixes: pulumi.StringArray{
/// 							pulumi.String("webapp"),
/// 							pulumi.String("mobile"),
/// 						},
/// 					},
/// 				},
/// 				&artifactregistry.RepositoryCleanupPolicyArgs{
/// 					Id:     pulumi.String("keep-minimum-versions"),
/// 					Action: pulumi.String("KEEP"),
/// 					MostRecentVersions: &artifactregistry.RepositoryCleanupPolicyMostRecentVersionsArgs{
/// 						PackageNamePrefixes: pulumi.StringArray{
/// 							pulumi.String("webapp"),
/// 							pulumi.String("mobile"),
/// 							pulumi.String("sandbox"),
/// 						},
/// 						KeepCount: pulumi.Int(5),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryCleanupPolicyArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryCleanupPolicyConditionArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryCleanupPolicyMostRecentVersionsArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository with cleanup policies")
///             .format("DOCKER")
///             .cleanupPolicyDryRun(false)
///             .cleanupPolicies(
///                 RepositoryCleanupPolicyArgs.builder()
///                     .id("delete-untagged")
///                     .action("DELETE")
///                     .condition(RepositoryCleanupPolicyConditionArgs.builder()
///                         .tagState("UNTAGGED")
///                         .build())
///                     .build(),
///                 RepositoryCleanupPolicyArgs.builder()
///                     .id("keep-new-untagged")
///                     .action("KEEP")
///                     .condition(RepositoryCleanupPolicyConditionArgs.builder()
///                         .tagState("UNTAGGED")
///                         .newerThan("7d")
///                         .build())
///                     .build(),
///                 RepositoryCleanupPolicyArgs.builder()
///                     .id("delete-prerelease")
///                     .action("DELETE")
///                     .condition(RepositoryCleanupPolicyConditionArgs.builder()
///                         .tagState("TAGGED")
///                         .tagPrefixes(
///                             "alpha",
///                             "v0")
///                         .olderThan("30d")
///                         .build())
///                     .build(),
///                 RepositoryCleanupPolicyArgs.builder()
///                     .id("keep-tagged-release")
///                     .action("KEEP")
///                     .condition(RepositoryCleanupPolicyConditionArgs.builder()
///                         .tagState("TAGGED")
///                         .tagPrefixes("release")
///                         .packageNamePrefixes(
///                             "webapp",
///                             "mobile")
///                         .build())
///                     .build(),
///                 RepositoryCleanupPolicyArgs.builder()
///                     .id("keep-minimum-versions")
///                     .action("KEEP")
///                     .mostRecentVersions(RepositoryCleanupPolicyMostRecentVersionsArgs.builder()
///                         .packageNamePrefixes(
///                             "webapp",
///                             "mobile",
///                             "sandbox")
///                         .keepCount(5)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository with cleanup policies
///       format: DOCKER
///       cleanupPolicyDryRun: false
///       cleanupPolicies:
///         - id: delete-untagged
///           action: DELETE
///           condition:
///             tagState: UNTAGGED
///         - id: keep-new-untagged
///           action: KEEP
///           condition:
///             tagState: UNTAGGED
///             newerThan: 7d
///         - id: delete-prerelease
///           action: DELETE
///           condition:
///             tagState: TAGGED
///             tagPrefixes:
///               - alpha
///               - v0
///             olderThan: 30d
///         - id: keep-tagged-release
///           action: KEEP
///           condition:
///             tagState: TAGGED
///             tagPrefixes:
///               - release
///             packageNamePrefixes:
///               - webapp
///               - mobile
///         - id: keep-minimum-versions
///           action: KEEP
///           mostRecentVersions:
///             packageNamePrefixes:
///               - webapp
///               - mobile
///               - sandbox
///             keepCount: 5
/// ```
///
/// ### Artifact Registry Repository Remote Dockerhub Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-dockerhub-remote",
///     description: "example remote dockerhub repository with credentials",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "docker hub with custom credentials",
///         disableUpstreamValidation: true,
///         dockerRepository: {
///             publicRepository: "DOCKER_HUB",
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-dockerhub-remote",
///     description="example remote dockerhub repository with credentials",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "docker hub with custom credentials",
///         "disable_upstream_validation": True,
///         "docker_repository": {
///             "public_repository": "DOCKER_HUB",
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-dockerhub-remote",
///         Description = "example remote dockerhub repository with credentials",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "docker hub with custom credentials",
///             DisableUpstreamValidation = true,
///             DockerRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs
///             {
///                 PublicRepository = "DOCKER_HUB",
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-dockerhub-remote"),
/// 			Description:  pulumi.String("example remote dockerhub repository with credentials"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("docker hub with custom credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				DockerRepository: &artifactregistry.RepositoryRemoteRepositoryConfigDockerRepositoryArgs{
/// 					PublicRepository: pulumi.String("DOCKER_HUB"),
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-dockerhub-remote")
///             .description("example remote dockerhub repository with credentials")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("docker hub with custom credentials")
///                 .disableUpstreamValidation(true)
///                 .dockerRepository(RepositoryRemoteRepositoryConfigDockerRepositoryArgs.builder()
///                     .publicRepository("DOCKER_HUB")
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-dockerhub-remote
///       description: example remote dockerhub repository with credentials
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: docker hub with custom credentials
///         disableUpstreamValidation: true
///         dockerRepository:
///           publicRepository: DOCKER_HUB
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Docker Custom With Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-docker-custom-remote",
///     description: "example remote custom docker repository with credentials",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "custom docker remote with credentials",
///         disableUpstreamValidation: true,
///         dockerRepository: {
///             customRepository: {
///                 uri: "https://registry-1.docker.io",
///             },
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-docker-custom-remote",
///     description="example remote custom docker repository with credentials",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "custom docker remote with credentials",
///         "disable_upstream_validation": True,
///         "docker_repository": {
///             "custom_repository": {
///                 "uri": "https://registry-1.docker.io",
///             },
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-docker-custom-remote",
///         Description = "example remote custom docker repository with credentials",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "custom docker remote with credentials",
///             DisableUpstreamValidation = true,
///             DockerRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs
///             {
///                 CustomRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryArgs
///                 {
///                     Uri = "https://registry-1.docker.io",
///                 },
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-docker-custom-remote"),
/// 			Description:  pulumi.String("example remote custom docker repository with credentials"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("custom docker remote with credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				DockerRepository: &artifactregistry.RepositoryRemoteRepositoryConfigDockerRepositoryArgs{
/// 					CustomRepository: &artifactregistry.RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryArgs{
/// 						Uri: pulumi.String("https://registry-1.docker.io"),
/// 					},
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigDockerRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-docker-custom-remote")
///             .description("example remote custom docker repository with credentials")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("custom docker remote with credentials")
///                 .disableUpstreamValidation(true)
///                 .dockerRepository(RepositoryRemoteRepositoryConfigDockerRepositoryArgs.builder()
///                     .customRepository(RepositoryRemoteRepositoryConfigDockerRepositoryCustomRepositoryArgs.builder()
///                         .uri("https://registry-1.docker.io")
///                         .build())
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-docker-custom-remote
///       description: example remote custom docker repository with credentials
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: custom docker remote with credentials
///         disableUpstreamValidation: true
///         dockerRepository:
///           customRepository:
///             uri: https://registry-1.docker.io
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Maven Custom With Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-maven-custom-remote",
///     description: "example remote custom maven repository with credentials",
///     format: "MAVEN",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "custom maven remote with credentials",
///         disableUpstreamValidation: true,
///         mavenRepository: {
///             customRepository: {
///                 uri: "https://my.maven.registry",
///             },
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-maven-custom-remote",
///     description="example remote custom maven repository with credentials",
///     format="MAVEN",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "custom maven remote with credentials",
///         "disable_upstream_validation": True,
///         "maven_repository": {
///             "custom_repository": {
///                 "uri": "https://my.maven.registry",
///             },
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-maven-custom-remote",
///         Description = "example remote custom maven repository with credentials",
///         Format = "MAVEN",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "custom maven remote with credentials",
///             DisableUpstreamValidation = true,
///             MavenRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigMavenRepositoryArgs
///             {
///                 CustomRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryArgs
///                 {
///                     Uri = "https://my.maven.registry",
///                 },
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-maven-custom-remote"),
/// 			Description:  pulumi.String("example remote custom maven repository with credentials"),
/// 			Format:       pulumi.String("MAVEN"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("custom maven remote with credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				MavenRepository: &artifactregistry.RepositoryRemoteRepositoryConfigMavenRepositoryArgs{
/// 					CustomRepository: &artifactregistry.RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryArgs{
/// 						Uri: pulumi.String("https://my.maven.registry"),
/// 					},
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigMavenRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-maven-custom-remote")
///             .description("example remote custom maven repository with credentials")
///             .format("MAVEN")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("custom maven remote with credentials")
///                 .disableUpstreamValidation(true)
///                 .mavenRepository(RepositoryRemoteRepositoryConfigMavenRepositoryArgs.builder()
///                     .customRepository(RepositoryRemoteRepositoryConfigMavenRepositoryCustomRepositoryArgs.builder()
///                         .uri("https://my.maven.registry")
///                         .build())
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-maven-custom-remote
///       description: example remote custom maven repository with credentials
///       format: MAVEN
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: custom maven remote with credentials
///         disableUpstreamValidation: true
///         mavenRepository:
///           customRepository:
///             uri: https://my.maven.registry
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Npm Custom With Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-npm-custom-remote",
///     description: "example remote custom npm repository with credentials",
///     format: "NPM",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "custom npm with credentials",
///         disableUpstreamValidation: true,
///         npmRepository: {
///             customRepository: {
///                 uri: "https://my.npm.registry",
///             },
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-npm-custom-remote",
///     description="example remote custom npm repository with credentials",
///     format="NPM",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "custom npm with credentials",
///         "disable_upstream_validation": True,
///         "npm_repository": {
///             "custom_repository": {
///                 "uri": "https://my.npm.registry",
///             },
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-npm-custom-remote",
///         Description = "example remote custom npm repository with credentials",
///         Format = "NPM",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "custom npm with credentials",
///             DisableUpstreamValidation = true,
///             NpmRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigNpmRepositoryArgs
///             {
///                 CustomRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryArgs
///                 {
///                     Uri = "https://my.npm.registry",
///                 },
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-npm-custom-remote"),
/// 			Description:  pulumi.String("example remote custom npm repository with credentials"),
/// 			Format:       pulumi.String("NPM"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("custom npm with credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				NpmRepository: &artifactregistry.RepositoryRemoteRepositoryConfigNpmRepositoryArgs{
/// 					CustomRepository: &artifactregistry.RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryArgs{
/// 						Uri: pulumi.String("https://my.npm.registry"),
/// 					},
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigNpmRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-npm-custom-remote")
///             .description("example remote custom npm repository with credentials")
///             .format("NPM")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("custom npm with credentials")
///                 .disableUpstreamValidation(true)
///                 .npmRepository(RepositoryRemoteRepositoryConfigNpmRepositoryArgs.builder()
///                     .customRepository(RepositoryRemoteRepositoryConfigNpmRepositoryCustomRepositoryArgs.builder()
///                         .uri("https://my.npm.registry")
///                         .build())
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-npm-custom-remote
///       description: example remote custom npm repository with credentials
///       format: NPM
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: custom npm with credentials
///         disableUpstreamValidation: true
///         npmRepository:
///           customRepository:
///             uri: https://my.npm.registry
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Python Custom With Auth
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-python-custom-remote",
///     description: "example remote custom python repository with credentials",
///     format: "PYTHON",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "custom npm with credentials",
///         disableUpstreamValidation: true,
///         pythonRepository: {
///             customRepository: {
///                 uri: "https://my.python.registry",
///             },
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-python-custom-remote",
///     description="example remote custom python repository with credentials",
///     format="PYTHON",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "custom npm with credentials",
///         "disable_upstream_validation": True,
///         "python_repository": {
///             "custom_repository": {
///                 "uri": "https://my.python.registry",
///             },
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-python-custom-remote",
///         Description = "example remote custom python repository with credentials",
///         Format = "PYTHON",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "custom npm with credentials",
///             DisableUpstreamValidation = true,
///             PythonRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigPythonRepositoryArgs
///             {
///                 CustomRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryArgs
///                 {
///                     Uri = "https://my.python.registry",
///                 },
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-python-custom-remote"),
/// 			Description:  pulumi.String("example remote custom python repository with credentials"),
/// 			Format:       pulumi.String("PYTHON"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("custom npm with credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				PythonRepository: &artifactregistry.RepositoryRemoteRepositoryConfigPythonRepositoryArgs{
/// 					CustomRepository: &artifactregistry.RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryArgs{
/// 						Uri: pulumi.String("https://my.python.registry"),
/// 					},
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigPythonRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-python-custom-remote")
///             .description("example remote custom python repository with credentials")
///             .format("PYTHON")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("custom npm with credentials")
///                 .disableUpstreamValidation(true)
///                 .pythonRepository(RepositoryRemoteRepositoryConfigPythonRepositoryArgs.builder()
///                     .customRepository(RepositoryRemoteRepositoryConfigPythonRepositoryCustomRepositoryArgs.builder()
///                         .uri("https://my.python.registry")
///                         .build())
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-python-custom-remote
///       description: example remote custom python repository with credentials
///       format: PYTHON
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: custom npm with credentials
///         disableUpstreamValidation: true
///         pythonRepository:
///           customRepository:
///             uri: https://my.python.registry
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Common Repository With Docker
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const upstreamRepo = new gcp.artifactregistry.Repository("upstream_repo", {
///     location: "us-central1",
///     repositoryId: "example-upstream-repo",
///     description: "example upstream repository",
///     format: "DOCKER",
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-common-remote",
///     description: "example remote common repository with docker upstream",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "pull-through cache of another Artifact Registry repository",
///         commonRepository: {
///             uri: upstreamRepo.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// upstream_repo = gcp.artifactregistry.Repository("upstream_repo",
///     location="us-central1",
///     repository_id="example-upstream-repo",
///     description="example upstream repository",
///     format="DOCKER")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-common-remote",
///     description="example remote common repository with docker upstream",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "pull-through cache of another Artifact Registry repository",
///         "common_repository": {
///             "uri": upstream_repo.id,
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
///     var upstreamRepo = new Gcp.ArtifactRegistry.Repository("upstream_repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-upstream-repo",
///         Description = "example upstream repository",
///         Format = "DOCKER",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-common-remote",
///         Description = "example remote common repository with docker upstream",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "pull-through cache of another Artifact Registry repository",
///             CommonRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs
///             {
///                 Uri = upstreamRepo.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		upstreamRepo, err := artifactregistry.NewRepository(ctx, "upstream_repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-upstream-repo"),
/// 			Description:  pulumi.String("example upstream repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-common-remote"),
/// 			Description:  pulumi.String("example remote common repository with docker upstream"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description: pulumi.String("pull-through cache of another Artifact Registry repository"),
/// 				CommonRepository: &artifactregistry.RepositoryRemoteRepositoryConfigCommonRepositoryArgs{
/// 					Uri: upstreamRepo.ID(),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs;
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
///         var upstreamRepo = new Repository("upstreamRepo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-upstream-repo")
///             .description("example upstream repository")
///             .format("DOCKER")
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-common-remote")
///             .description("example remote common repository with docker upstream")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("pull-through cache of another Artifact Registry repository")
///                 .commonRepository(RepositoryRemoteRepositoryConfigCommonRepositoryArgs.builder()
///                     .uri(upstreamRepo.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   upstreamRepo:
///     type: gcp:artifactregistry:Repository
///     name: upstream_repo
///     properties:
///       location: us-central1
///       repositoryId: example-upstream-repo
///       description: example upstream repository
///       format: DOCKER
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-common-remote
///       description: example remote common repository with docker upstream
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: pull-through cache of another Artifact Registry repository
///         commonRepository:
///           uri: ${upstreamRepo.id}
/// ```
///
/// ### Artifact Registry Repository Remote Common Repository With Artifact Registry Uri
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const upstreamRepo = new gcp.artifactregistry.Repository("upstream_repo", {
///     location: "us-central1",
///     repositoryId: "example-upstream-repo",
///     description: "example upstream repository",
///     format: "DOCKER",
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-common-remote",
///     description: "example remote common repository with docker upstream",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "pull-through cache of another Artifact Registry repository by URL",
///         commonRepository: {
///             uri: project.then(project => `https://us-central1-docker.pkg.dev/${project.projectId}/example-upstream-repo`),
///         },
///     },
/// }, {
///     dependsOn: [upstreamRepo],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// upstream_repo = gcp.artifactregistry.Repository("upstream_repo",
///     location="us-central1",
///     repository_id="example-upstream-repo",
///     description="example upstream repository",
///     format="DOCKER")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-common-remote",
///     description="example remote common repository with docker upstream",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "pull-through cache of another Artifact Registry repository by URL",
///         "common_repository": {
///             "uri": f"https://us-central1-docker.pkg.dev/{project.project_id}/example-upstream-repo",
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[upstream_repo]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var upstreamRepo = new Gcp.ArtifactRegistry.Repository("upstream_repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-upstream-repo",
///         Description = "example upstream repository",
///         Format = "DOCKER",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-common-remote",
///         Description = "example remote common repository with docker upstream",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "pull-through cache of another Artifact Registry repository by URL",
///             CommonRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs
///             {
///                 Uri = $"https://us-central1-docker.pkg.dev/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/example-upstream-repo",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             upstreamRepo,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		upstreamRepo, err := artifactregistry.NewRepository(ctx, "upstream_repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-upstream-repo"),
/// 			Description:  pulumi.String("example upstream repository"),
/// 			Format:       pulumi.String("DOCKER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-common-remote"),
/// 			Description:  pulumi.String("example remote common repository with docker upstream"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description: pulumi.String("pull-through cache of another Artifact Registry repository by URL"),
/// 				CommonRepository: &artifactregistry.RepositoryRemoteRepositoryConfigCommonRepositoryArgs{
/// 					Uri: pulumi.Sprintf("https://us-central1-docker.pkg.dev/%v/example-upstream-repo", project.ProjectId),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			upstreamRepo,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var upstreamRepo = new Repository("upstreamRepo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-upstream-repo")
///             .description("example upstream repository")
///             .format("DOCKER")
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-common-remote")
///             .description("example remote common repository with docker upstream")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("pull-through cache of another Artifact Registry repository by URL")
///                 .commonRepository(RepositoryRemoteRepositoryConfigCommonRepositoryArgs.builder()
///                     .uri(String.format("https://us-central1-docker.pkg.dev/%s/example-upstream-repo", project.projectId()))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(upstreamRepo)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   upstreamRepo:
///     type: gcp:artifactregistry:Repository
///     name: upstream_repo
///     properties:
///       location: us-central1
///       repositoryId: example-upstream-repo
///       description: example upstream repository
///       format: DOCKER
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-common-remote
///       description: example remote common repository with docker upstream
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: pull-through cache of another Artifact Registry repository by URL
///         commonRepository:
///           uri: https://us-central1-docker.pkg.dev/${project.projectId}/example-upstream-repo
///     options:
///       dependsOn:
///         - ${upstreamRepo}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Remote Common Repository With Custom Upstream
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const example_remote_secret = new gcp.secretmanager.Secret("example-remote-secret", {
///     secretId: "example-secret",
///     replication: {
///         auto: {},
///     },
/// });
/// const example_remote_secretVersion = new gcp.secretmanager.SecretVersion("example-remote-secret_version", {
///     secret: example_remote_secret.id,
///     secretData: "remote-password",
/// });
/// const secret_access = new gcp.secretmanager.SecretIamMember("secret-access", {
///     secretId: example_remote_secret.id,
///     role: "roles/secretmanager.secretAccessor",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com`),
/// });
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "example-docker-custom-remote",
///     description: "example remote custom docker repository with credentials",
///     format: "DOCKER",
///     mode: "REMOTE_REPOSITORY",
///     remoteRepositoryConfig: {
///         description: "custom common docker remote with credentials",
///         disableUpstreamValidation: true,
///         commonRepository: {
///             uri: "https://registry-1.docker.io",
///         },
///         upstreamCredentials: {
///             usernamePasswordCredentials: {
///                 username: "remote-username",
///                 passwordSecretVersion: example_remote_secretVersion.name,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// example_remote_secret = gcp.secretmanager.Secret("example-remote-secret",
///     secret_id="example-secret",
///     replication={
///         "auto": {},
///     })
/// example_remote_secret_version = gcp.secretmanager.SecretVersion("example-remote-secret_version",
///     secret=example_remote_secret.id,
///     secret_data="remote-password")
/// secret_access = gcp.secretmanager.SecretIamMember("secret-access",
///     secret_id=example_remote_secret.id,
///     role="roles/secretmanager.secretAccessor",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com")
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="example-docker-custom-remote",
///     description="example remote custom docker repository with credentials",
///     format="DOCKER",
///     mode="REMOTE_REPOSITORY",
///     remote_repository_config={
///         "description": "custom common docker remote with credentials",
///         "disable_upstream_validation": True,
///         "common_repository": {
///             "uri": "https://registry-1.docker.io",
///         },
///         "upstream_credentials": {
///             "username_password_credentials": {
///                 "username": "remote-username",
///                 "password_secret_version": example_remote_secret_version.name,
///             },
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var example_remote_secret = new Gcp.SecretManager.Secret("example-remote-secret", new()
///     {
///         SecretId = "example-secret",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var example_remote_secretVersion = new Gcp.SecretManager.SecretVersion("example-remote-secret_version", new()
///     {
///         Secret = example_remote_secret.Id,
///         SecretData = "remote-password",
///     });
///
///     var secret_access = new Gcp.SecretManager.SecretIamMember("secret-access", new()
///     {
///         SecretId = example_remote_secret.Id,
///         Role = "roles/secretmanager.secretAccessor",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-artifactregistry.iam.gserviceaccount.com",
///     });
///
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "example-docker-custom-remote",
///         Description = "example remote custom docker repository with credentials",
///         Format = "DOCKER",
///         Mode = "REMOTE_REPOSITORY",
///         RemoteRepositoryConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigArgs
///         {
///             Description = "custom common docker remote with credentials",
///             DisableUpstreamValidation = true,
///             CommonRepository = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs
///             {
///                 Uri = "https://registry-1.docker.io",
///             },
///             UpstreamCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs
///             {
///                 UsernamePasswordCredentials = new Gcp.ArtifactRegistry.Inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs
///                 {
///                     Username = "remote-username",
///                     PasswordSecretVersion = example_remote_secretVersion.Name,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secret, err := secretmanager.NewSecret(ctx, "example-remote-secret", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("example-secret"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_remote_secretVersion, err := secretmanager.NewSecretVersion(ctx, "example-remote-secret_version", &secretmanager.SecretVersionArgs{
/// 			Secret:     example_remote_secret.ID(),
/// 			SecretData: pulumi.String("remote-password"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretIamMember(ctx, "secret-access", &secretmanager.SecretIamMemberArgs{
/// 			SecretId: example_remote_secret.ID(),
/// 			Role:     pulumi.String("roles/secretmanager.secretAccessor"),
/// 			Member:   pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("example-docker-custom-remote"),
/// 			Description:  pulumi.String("example remote custom docker repository with credentials"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			Mode:         pulumi.String("REMOTE_REPOSITORY"),
/// 			RemoteRepositoryConfig: &artifactregistry.RepositoryRemoteRepositoryConfigArgs{
/// 				Description:               pulumi.String("custom common docker remote with credentials"),
/// 				DisableUpstreamValidation: pulumi.Bool(true),
/// 				CommonRepository: &artifactregistry.RepositoryRemoteRepositoryConfigCommonRepositoryArgs{
/// 					Uri: pulumi.String("https://registry-1.docker.io"),
/// 				},
/// 				UpstreamCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs{
/// 					UsernamePasswordCredentials: &artifactregistry.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs{
/// 						Username:              pulumi.String("remote-username"),
/// 						PasswordSecretVersion: example_remote_secretVersion.Name,
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.gcp.secretmanager.SecretIamMember;
/// import com.pulumi.gcp.secretmanager.SecretIamMemberArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigCommonRepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var example_remote_secret = new Secret("example-remote-secret", SecretArgs.builder()
///             .secretId("example-secret")
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var example_remote_secretVersion = new SecretVersion("example-remote-secretVersion", SecretVersionArgs.builder()
///             .secret(example_remote_secret.id())
///             .secretData("remote-password")
///             .build());
///
///         var secret_access = new SecretIamMember("secret-access", SecretIamMemberArgs.builder()
///             .secretId(example_remote_secret.id())
///             .role("roles/secretmanager.secretAccessor")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-artifactregistry.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("example-docker-custom-remote")
///             .description("example remote custom docker repository with credentials")
///             .format("DOCKER")
///             .mode("REMOTE_REPOSITORY")
///             .remoteRepositoryConfig(RepositoryRemoteRepositoryConfigArgs.builder()
///                 .description("custom common docker remote with credentials")
///                 .disableUpstreamValidation(true)
///                 .commonRepository(RepositoryRemoteRepositoryConfigCommonRepositoryArgs.builder()
///                     .uri("https://registry-1.docker.io")
///                     .build())
///                 .upstreamCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsArgs.builder()
///                     .usernamePasswordCredentials(RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentialsArgs.builder()
///                         .username("remote-username")
///                         .passwordSecretVersion(example_remote_secretVersion.name())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-remote-secret:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: example-secret
///       replication:
///         auto: {}
///   example-remote-secretVersion:
///     type: gcp:secretmanager:SecretVersion
///     name: example-remote-secret_version
///     properties:
///       secret: ${["example-remote-secret"].id}
///       secretData: remote-password
///   secret-access:
///     type: gcp:secretmanager:SecretIamMember
///     properties:
///       secretId: ${["example-remote-secret"].id}
///       role: roles/secretmanager.secretAccessor
///       member: serviceAccount:service-${project.number}@gcp-sa-artifactregistry.iam.gserviceaccount.com
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: example-docker-custom-remote
///       description: example remote custom docker repository with credentials
///       format: DOCKER
///       mode: REMOTE_REPOSITORY
///       remoteRepositoryConfig:
///         description: custom common docker remote with credentials
///         disableUpstreamValidation: true
///         commonRepository:
///           uri: https://registry-1.docker.io
///         upstreamCredentials:
///           usernamePasswordCredentials:
///             username: remote-username
///             passwordSecretVersion: ${["example-remote-secretVersion"].name}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Artifact Registry Repository Vulnerability Scanning
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_repo = new gcp.artifactregistry.Repository("my-repo", {
///     location: "us-central1",
///     repositoryId: "my-repository",
///     description: "example docker repository with vulnerability scanning config",
///     format: "DOCKER",
///     vulnerabilityScanningConfig: {
///         enablementConfig: "INHERITED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_repo = gcp.artifactregistry.Repository("my-repo",
///     location="us-central1",
///     repository_id="my-repository",
///     description="example docker repository with vulnerability scanning config",
///     format="DOCKER",
///     vulnerability_scanning_config={
///         "enablement_config": "INHERITED",
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
///     var my_repo = new Gcp.ArtifactRegistry.Repository("my-repo", new()
///     {
///         Location = "us-central1",
///         RepositoryId = "my-repository",
///         Description = "example docker repository with vulnerability scanning config",
///         Format = "DOCKER",
///         VulnerabilityScanningConfig = new Gcp.ArtifactRegistry.Inputs.RepositoryVulnerabilityScanningConfigArgs
///         {
///             EnablementConfig = "INHERITED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := artifactregistry.NewRepository(ctx, "my-repo", &artifactregistry.RepositoryArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			RepositoryId: pulumi.String("my-repository"),
/// 			Description:  pulumi.String("example docker repository with vulnerability scanning config"),
/// 			Format:       pulumi.String("DOCKER"),
/// 			VulnerabilityScanningConfig: &artifactregistry.RepositoryVulnerabilityScanningConfigArgs{
/// 				EnablementConfig: pulumi.String("INHERITED"),
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
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import com.pulumi.gcp.artifactregistry.inputs.RepositoryVulnerabilityScanningConfigArgs;
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
///         var my_repo = new Repository("my-repo", RepositoryArgs.builder()
///             .location("us-central1")
///             .repositoryId("my-repository")
///             .description("example docker repository with vulnerability scanning config")
///             .format("DOCKER")
///             .vulnerabilityScanningConfig(RepositoryVulnerabilityScanningConfigArgs.builder()
///                 .enablementConfig("INHERITED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-repo:
///     type: gcp:artifactregistry:Repository
///     properties:
///       location: us-central1
///       repositoryId: my-repository
///       description: example docker repository with vulnerability scanning config
///       format: DOCKER
///       vulnerabilityScanningConfig:
///         enablementConfig: INHERITED
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
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default {{project}}/{{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repository:Repository default {{location}}/{{repository_id}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Cleanup policies for this repository. Cleanup policies indicate when
  /// certain package versions can be automatically deleted.
  /// Map keys are policy IDs supplied by users during policy creation. They must
  /// unique within a repository and be under 128 characters in length.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryCleanupPolicy>?> cleanupPolicies;

  /// If true, the cleanup pipeline is prevented from deleting versions in this
  /// repository.
  late final pulumi.Output<bool?> cleanupPolicyDryRun;

  /// The time when the repository was created.
  late final pulumi.Output<String> createTime;

  /// The user-provided description of the repository.
  late final pulumi.Output<String?> description;

  /// Docker repository config contains repository level configuration for the repositories of docker type.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryDockerConfig?> dockerConfig;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The format of packages that are stored in the repository. Supported formats
  /// can be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).
  /// You can only create alpha formats if you are a member of the
  /// [alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).
  late final pulumi.Output<String> format;

  /// The Cloud KMS resource name of the customer managed encryption key that’s
  /// used to encrypt the contents of the Repository. Has the form:
  /// `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
  /// This value may not be changed after the Repository has been created.
  late final pulumi.Output<String?> kmsKeyName;

  /// Labels with user-defined metadata.
  /// This field may contain up to 64 entries. Label keys and values may be no
  /// longer than 63 characters. Label keys must begin with a lowercase letter
  /// and may only contain lowercase letters, numeric characters, underscores,
  /// and dashes.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values.
  late final pulumi.Output<String> location;

  /// MavenRepositoryConfig is maven related repository details.
  /// Provides additional configuration details for repositories of the maven
  /// format type.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryMavenConfig?> mavenConfig;

  /// The mode configures the repository to serve artifacts from different sources.
  /// Default value is `STANDARD_REPOSITORY`.
  /// Possible values are: `STANDARD_REPOSITORY`, `VIRTUAL_REPOSITORY`, `REMOTE_REPOSITORY`.
  late final pulumi.Output<String?> mode;

  /// The name of the repository, for example:
  /// "repo1"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The repository endpoint, for example: us-docker.pkg.dev/my-proj/my-repo.
  late final pulumi.Output<String> registryUri;

  /// Configuration specific for a Remote Repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryRemoteRepositoryConfig?>
      remoteRepositoryConfig;

  /// The last part of the repository name, for example:
  /// "repo1"
  late final pulumi.Output<String> repositoryId;

  /// The time when the repository was last updated.
  late final pulumi.Output<String> updateTime;

  /// Configuration specific for a Virtual Repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryVirtualRepositoryConfig?>
      virtualRepositoryConfig;

  /// Configuration for vulnerability scanning of artifacts stored in this repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryVulnerabilityScanningConfig>
      vulnerabilityScanningConfig;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_artifactregistry_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupPolicies =
        registerOutput<List<RepositoryCleanupPolicy>?>('cleanupPolicies');
    this.cleanupPolicyDryRun = registerOutput<bool?>('cleanupPolicyDryRun');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.dockerConfig = registerOutput<RepositoryDockerConfig?>('dockerConfig');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.format = registerOutput<String>('format');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.mavenConfig = registerOutput<RepositoryMavenConfig?>('mavenConfig');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.registryUri = registerOutput<String>('registryUri');
    this.remoteRepositoryConfig =
        registerOutput<RepositoryRemoteRepositoryConfig?>(
            'remoteRepositoryConfig');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualRepositoryConfig =
        registerOutput<RepositoryVirtualRepositoryConfig?>(
            'virtualRepositoryConfig');
    this.vulnerabilityScanningConfig =
        registerOutput<RepositoryVulnerabilityScanningConfig>(
            'vulnerabilityScanningConfig');
  }
}
