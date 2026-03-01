import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_rbac_role_binding_args.dart';
import 'membership_rbac_role_binding_role.dart';
import 'membership_rbac_role_binding_state.dart';

/// RBACRoleBinding represents a rbacrolebinding across the Fleet.
///
/// To get more information about MembershipRBACRoleBinding, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.memberships)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Membership Rbac Role Binding Basic
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
///     membershipId: "tf-test-membership_1443",
///     endpoint: {
///         gkeCluster: {
///             resourceLink: pulumi.interpolate`//container.googleapis.com/${primary.id}`,
///         },
///     },
/// }, {
///     dependsOn: [primary],
/// });
/// const project = gcp.organizations.getProject({});
/// const membershipRbacRoleBinding = new gcp.gkehub.MembershipRbacRoleBinding("membership_rbac_role_binding", {
///     membershipRbacRoleBindingId: "tf-test-membership-rbac-role-binding_26032",
///     membershipId: membership.membershipId,
///     user: project.then(project => `service-${project.number}@gcp-sa-anthossupport.iam.gserviceaccount.com`),
///     role: {
///         predefinedRole: "ANTHOS_SUPPORT",
///     },
///     location: "global",
/// }, {
///     dependsOn: [membership],
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
///     membership_id="tf-test-membership_1443",
///     endpoint={
///         "gke_cluster": {
///             "resource_link": primary.id.apply(lambda id: f"//container.googleapis.com/{id}"),
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[primary]))
/// project = gcp.organizations.get_project()
/// membership_rbac_role_binding = gcp.gkehub.MembershipRbacRoleBinding("membership_rbac_role_binding",
///     membership_rbac_role_binding_id="tf-test-membership-rbac-role-binding_26032",
///     membership_id=membership.membership_id,
///     user=f"service-{project.number}@gcp-sa-anthossupport.iam.gserviceaccount.com",
///     role={
///         "predefined_role": "ANTHOS_SUPPORT",
///     },
///     location="global",
///     opts = pulumi.ResourceOptions(depends_on=[membership]))
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
///         MembershipId = "tf-test-membership_1443",
///         Endpoint = new Gcp.GkeHub.Inputs.MembershipEndpointArgs
///         {
///             GkeCluster = new Gcp.GkeHub.Inputs.MembershipEndpointGkeClusterArgs
///             {
///                 ResourceLink = primary.Id.Apply(id => $"//container.googleapis.com/{id}"),
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primary,
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var membershipRbacRoleBinding = new Gcp.GkeHub.MembershipRbacRoleBinding("membership_rbac_role_binding", new()
///     {
///         MembershipRbacRoleBindingId = "tf-test-membership-rbac-role-binding_26032",
///         MembershipId = membership.MembershipId,
///         User = $"service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-anthossupport.iam.gserviceaccount.com",
///         Role = new Gcp.GkeHub.Inputs.MembershipRbacRoleBindingRoleArgs
///         {
///             PredefinedRole = "ANTHOS_SUPPORT",
///         },
///         Location = "global",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             membership,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
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
/// 		membership, err := gkehub.NewMembership(ctx, "membership", &gkehub.MembershipArgs{
/// 			MembershipId: pulumi.String("tf-test-membership_1443"),
/// 			Endpoint: &gkehub.MembershipEndpointArgs{
/// 				GkeCluster: &gkehub.MembershipEndpointGkeClusterArgs{
/// 					ResourceLink: primary.ID().ApplyT(func(id string) (string, error) {
/// 						return fmt.Sprintf("//container.googleapis.com/%v", id), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primary,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewMembershipRbacRoleBinding(ctx, "membership_rbac_role_binding", &gkehub.MembershipRbacRoleBindingArgs{
/// 			MembershipRbacRoleBindingId: pulumi.String("tf-test-membership-rbac-role-binding_26032"),
/// 			MembershipId:                membership.MembershipId,
/// 			User:                        pulumi.Sprintf("service-%v@gcp-sa-anthossupport.iam.gserviceaccount.com", project.Number),
/// 			Role: &gkehub.MembershipRbacRoleBindingRoleArgs{
/// 				PredefinedRole: pulumi.String("ANTHOS_SUPPORT"),
/// 			},
/// 			Location: pulumi.String("global"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			membership,
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
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.gkehub.Membership;
/// import com.pulumi.gcp.gkehub.MembershipArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipEndpointGkeClusterArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.gkehub.MembershipRbacRoleBinding;
/// import com.pulumi.gcp.gkehub.MembershipRbacRoleBindingArgs;
/// import com.pulumi.gcp.gkehub.inputs.MembershipRbacRoleBindingRoleArgs;
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
///             .membershipId("tf-test-membership_1443")
///             .endpoint(MembershipEndpointArgs.builder()
///                 .gkeCluster(MembershipEndpointGkeClusterArgs.builder()
///                     .resourceLink(primary.id().applyValue(_id -> String.format("//container.googleapis.com/%s", _id)))
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primary)
///                 .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var membershipRbacRoleBinding = new MembershipRbacRoleBinding("membershipRbacRoleBinding", MembershipRbacRoleBindingArgs.builder()
///             .membershipRbacRoleBindingId("tf-test-membership-rbac-role-binding_26032")
///             .membershipId(membership.membershipId())
///             .user(String.format("service-%s@gcp-sa-anthossupport.iam.gserviceaccount.com", project.number()))
///             .role(MembershipRbacRoleBindingRoleArgs.builder()
///                 .predefinedRole("ANTHOS_SUPPORT")
///                 .build())
///             .location("global")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(membership)
///                 .build());
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
///       membershipId: tf-test-membership_1443
///       endpoint:
///         gkeCluster:
///           resourceLink: //container.googleapis.com/${primary.id}
///     options:
///       dependsOn:
///         - ${primary}
///   membershipRbacRoleBinding:
///     type: gcp:gkehub:MembershipRbacRoleBinding
///     name: membership_rbac_role_binding
///     properties:
///       membershipRbacRoleBindingId: tf-test-membership-rbac-role-binding_26032
///       membershipId: ${membership.membershipId}
///       user: service-${project.number}@gcp-sa-anthossupport.iam.gserviceaccount.com
///       role:
///         predefinedRole: ANTHOS_SUPPORT
///       location: global
///     options:
///       dependsOn:
///         - ${membership}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// MembershipRBACRoleBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/rbacrolebindings/{{membership_rbac_role_binding_id}}`
///
/// * `{{project}}/{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}`
///
/// * `{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}`
///
/// When using the `pulumi import` command, MembershipRBACRoleBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default projects/{{project}}/locations/{{location}}/memberships/{{membership_id}}/rbacrolebindings/{{membership_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default {{project}}/{{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding default {{location}}/{{membership_id}}/{{membership_rbac_role_binding_id}}
/// ```
class MembershipRbacRoleBinding extends pulumi.CustomResource {
  /// Time the RBAC Role Binding was created in UTC.
  late final pulumi.Output<String> createTime;

  /// Time the RBAC Role Binding was deleted in UTC.
  late final pulumi.Output<String> deleteTime;

  /// Location of the Membership
  late final pulumi.Output<String> location;

  /// Id of the membership
  late final pulumi.Output<String> membershipId;

  /// The client-provided identifier of the RBAC Role Binding.
  late final pulumi.Output<String> membershipRbacRoleBindingId;

  /// The resource name for the RBAC Role Binding
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Role to bind to the principal.
  /// Structure is documented below.
  late final pulumi.Output<MembershipRbacRoleBindingRole> role;

  /// State of the RBAC Role Binding resource.
  /// Structure is documented below.
  late final pulumi.Output<List<MembershipRbacRoleBindingState>> states;

  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;

  /// Time the RBAC Role Binding was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Principal that is be authorized in the cluster (at least of one the oneof
  /// is required). Updating one will unset the other automatically.
  /// user is the name of the user as seen by the kubernetes cluster, example
  /// "alice" or "alice@domain.tld"
  late final pulumi.Output<String> user;

  /// Creates a new [MembershipRbacRoleBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MembershipRbacRoleBinding]. {@macro pulumi_gkehub_membership_rbac_role_binding_membership_rbac_role_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MembershipRbacRoleBinding(
    String name, {
    MembershipRbacRoleBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:gkehub/membershipRbacRoleBinding:MembershipRbacRoleBinding',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.location = registerOutput<String>('location');
    this.membershipId = registerOutput<String>('membershipId');
    this.membershipRbacRoleBindingId = registerOutput<String>(
      'membershipRbacRoleBindingId',
    );
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<MembershipRbacRoleBindingRole>('role');
    this.states = registerOutput<List<MembershipRbacRoleBindingState>>(
      'states',
    );
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.user = registerOutput<String>('user');
  }
}
