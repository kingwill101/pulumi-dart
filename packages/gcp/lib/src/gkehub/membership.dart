import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_args.dart';
import 'membership_authority.dart';
import 'membership_endpoint.dart';

/// Membership contains information about a member cluster.
///
///
/// To get more information about Membership, see:
///
/// * [API documentation](https://cloud.google.com/anthos/multicluster-management/reference/rest/v1/projects.locations.memberships)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Regional
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "basic-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     deletionProtection: false,
///     network: "default",
///     subnetwork: "default",
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
///     membershipId: "basic",
///     location: "us-west1",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: pulumi.interpolate`//container.googleapis.com/${primary.id}`,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="basic-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     deletion_protection=False,
///     network="default",
///     subnetwork="default")
/// membership = gcp.gkehub.Membership("membership",
///     membership_id="basic",
///     location="us-west1",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": primary.id.apply(lambda id: f"//container.googleapis.com/{id}"),
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
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "basic-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         DeletionProtection = false,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var membership = new Gcp.GkeHub.Membership("membership", new()
///     {
///         MembershipId = "basic",
///         Location = "us-west1",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = primary.Id.Apply(id => $"//container.googleapis.com/{id}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:               pulumi.String("basic-cluster"),
/// 			Location:           pulumi.String("us-central1-a"),
/// 			InitialNodeCount:   pulumi.Int(1),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("basic"),
/// 			Location:     pulumi.String("us-west1"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: primary.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("basic-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .deletionProtection(false)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var membership = new Membership("membership", MembershipArgs.builder()
///             .membershipId("basic")
///             .location("us-west1")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(primary.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
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
///     type: gcp:container:Cluster
///     properties:
///       name: basic-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       deletionProtection: false
///       network: default
///       subnetwork: default
///   membership:
///     type: gcp:gkehub:Membership
///     properties:
///       membershipId: basic
///       location: us-west1
///       endpoint:
///         gkeCluster:
///           resourceLink: //container.googleapis.com/${primary.id}
/// ```
///
/// ### Gkehub Membership Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "basic-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
///     membershipId: "basic",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: pulumi.interpolate`//container.googleapis.com/${primary.id}`,
///         },
///     },
///     labels: {
///         env: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="basic-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// membership = gcp.gkehub.Membership("membership",
///     membership_id="basic",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": primary.id.apply(lambda id: f"//container.googleapis.com/{id}"),
///         },
///     },
///     labels={
///         "env": "test",
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
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "basic-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var membership = new Gcp.GkeHub.Membership("membership", new()
///     {
///         MembershipId = "basic",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = primary.Id.Apply(id => $"//container.googleapis.com/{id}"),
///             },
///         },
///         Labels =
///         {
///             { "env", "test" },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:               pulumi.String("basic-cluster"),
/// 			Location:           pulumi.String("us-central1-a"),
/// 			InitialNodeCount:   pulumi.Int(1),
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("basic"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: primary.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("basic-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var membership = new Membership("membership", MembershipArgs.builder()
///             .membershipId("basic")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(primary.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
///                     .build())
///                 .build())
///             .labels(Map.of("env", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: basic-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   membership:
///     type: gcp:gkehub:Membership
///     properties:
///       membershipId: basic
///       endpoint:
///         gkeCluster:
///           resourceLink: //container.googleapis.com/${primary.id}
///       labels:
///         env: test
/// ```
///
/// ### Gkehub Membership Issuer
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "basic-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     workloadIdentityConfig: {
///         workloadPool: "my-project-name.svc.id.goog",
///     },
///     deletionProtection: true,
///     network: "default",
///     subnetwork: "default",
/// });
/// const membership = new gcp.gkehub.Membership("membership", {
///     membershipId: "basic",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: primary.id,
///         },
///     },
///     authority: {
///         issuer: pulumi.interpolate`https://container.googleapis.com/v1/${primary.id}`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="basic-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     workload_identity_config={
///         "workload_pool": "my-project-name.svc.id.goog",
///     },
///     deletion_protection=True,
///     network="default",
///     subnetwork="default")
/// membership = gcp.gkehub.Membership("membership",
///     membership_id="basic",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": primary.id,
///         },
///     },
///     authority={
///         "issuer": primary.id.apply(lambda id: f"https://container.googleapis.com/v1/{id}"),
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
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "basic-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         WorkloadIdentityConfig = new Gcp.Container.Inputs.ClusterWorkloadIdentityConfigArgs
///         {
///             WorkloadPool = "my-project-name.svc.id.goog",
///         },
///         DeletionProtection = true,
///         Network = "default",
///         Subnetwork = "default",
///     });
///
///     var membership = new Gcp.GkeHub.Membership("membership", new()
///     {
///         MembershipId = "basic",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = primary.Id,
///             },
///         },
///         Authority = new Gcp.GkeHub.Inputs.MembershipAuthorityArgs
///         {
///             Issuer = primary.Id.Apply(id => $"https://container.googleapis.com/v1/{id}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("basic-cluster"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			WorkloadIdentityConfig: &container.ClusterWorkloadIdentityConfigArgs{
/// 				WorkloadPool: pulumi.String("my-project-name.svc.id.goog"),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 			Network:            pulumi.String("default"),
/// 			Subnetwork:         pulumi.String("default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("basic"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: primary.ID(),
/// 				},
/// 			},
/// 			Authority: &gkehub.MembershipAuthorityArgs{
/// 				Issuer: primary.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("https://container.googleapis.com/v1/%v", id), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterWorkloadIdentityConfigArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipAuthorityArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("basic-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .workloadIdentityConfig(ClusterWorkloadIdentityConfigArgs.builder()
///                 .workloadPool("my-project-name.svc.id.goog")
///                 .build())
///             .deletionProtection(true)
///             .network("default")
///             .subnetwork("default")
///             .build());
///
///         var membership = new Membership("membership", MembershipArgs.builder()
///             .membershipId("basic")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(primary.id())
///                     .build())
///                 .build())
///             .authority(MembershipAuthorityArgs.builder()
///                 .issuer(primary.id().applyValue(_id -> String.format("https://container.googleapis.com/v1/%s", _id)))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: basic-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       workloadIdentityConfig:
///         workloadPool: my-project-name.svc.id.goog
///       deletionProtection: true
///       network: default
///       subnetwork: default
///   membership:
///     type: gcp:gkehub:Membership
///     properties:
///       membershipId: basic
///       endpoint:
///         gkeCluster:
///           resourceLink: ${primary.id}
///       authority:
///         issuer: https://container.googleapis.com/v1/${primary.id}
/// ```
///
///
/// ## Import
///
/// Membership can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}`
///
/// * `{{project}}/{{location}}/{{membership_id}}`
///
/// * `{{location}}/{{membership_id}}`
///
/// When using the `pulumi import` command, Membership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default {{project}}/{{location}}/{{membership_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membership:Membership default {{location}}/{{membership_id}}
/// ```
class Membership extends pulumi.CustomResource {
  /// Authority encodes how Google will recognize identities from this Membership.
  /// See the workload identity documentation for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// Structure is documented below.
  late final pulumi.Output<MembershipAuthority?> authority;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  late final pulumi.Output<MembershipEndpoint?> endpoint;
  /// Labels to apply to this membership.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Location of the membership.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;
  /// The client-provided identifier of the membership.
  late final pulumi.Output<String> membershipId;
  /// The unique identifier of the membership.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Creates a new [Membership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Membership]. {@macro pulumi_gkehub_membership_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Membership(
    String name, {
    MembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/membership:Membership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authority = registerOutput<MembershipAuthority?>('authority');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.endpoint = registerOutput<MembershipEndpoint?>('endpoint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
