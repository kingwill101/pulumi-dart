import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_association_args.dart';

/// An association for the OrganizationSecurityPolicy.
///
///
/// To get more information about OrganizationSecurityPolicyAssociation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/organizationSecurityPolicies/addAssociation)
/// * How-to Guides
/// * [Associating a policy with the organization or folder](https://cloud.google.com/vpc/docs/using-firewall-policies#associate)
///
/// ## Example Usage
///
/// ### Organization Security Policy Association Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const securityPolicyTarget = new gcp.organizations.Folder("security_policy_target", {
///     displayName: "tf-test-secpol",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     displayName: "tf-test",
///     parent: securityPolicyTarget.name,
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyAssociation = new gcp.compute.OrganizationSecurityPolicyAssociation("policy", {
///     name: "tf-test",
///     attachmentId: policy.parent,
///     policyId: policy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// security_policy_target = gcp.organizations.Folder("security_policy_target",
///     display_name="tf-test-secpol",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     display_name="tf-test",
///     parent=security_policy_target.name,
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_association = gcp.compute.OrganizationSecurityPolicyAssociation("policy",
///     name="tf-test",
///     attachment_id=policy.parent,
///     policy_id=policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityPolicyTarget = new Gcp.Organizations.Folder("security_policy_target", new()
///     {
///         DisplayName = "tf-test-secpol",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         DisplayName = "tf-test",
///         Parent = securityPolicyTarget.Name,
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyAssociation = new Gcp.Compute.OrganizationSecurityPolicyAssociation("policy", new()
///     {
///         Name = "tf-test",
///         AttachmentId = policy.Parent,
///         PolicyId = policy.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		securityPolicyTarget, err := organizations.NewFolder(ctx, "security_policy_target", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("tf-test-secpol"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			DisplayName: pulumi.String("tf-test"),
/// 			Parent:      securityPolicyTarget.Name,
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyAssociation(ctx, "policy", &compute.OrganizationSecurityPolicyAssociationArgs{
/// 			Name:         pulumi.String("tf-test"),
/// 			AttachmentId: policy.Parent,
/// 			PolicyId:     policy.ID(),
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyAssociation;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyAssociationArgs;
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
///         var securityPolicyTarget = new Folder("securityPolicyTarget", FolderArgs.builder()
///             .displayName("tf-test-secpol")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .displayName("tf-test")
///             .parent(securityPolicyTarget.name())
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyAssociation = new OrganizationSecurityPolicyAssociation("policyOrganizationSecurityPolicyAssociation", OrganizationSecurityPolicyAssociationArgs.builder()
///             .name("tf-test")
///             .attachmentId(policy.parent())
///             .policyId(policy.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   securityPolicyTarget:
///     type: gcp:organizations:Folder
///     name: security_policy_target
///     properties:
///       displayName: tf-test-secpol
///       parent: organizations/123456789
///       deletionProtection: false
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       displayName: tf-test
///       parent: ${securityPolicyTarget.name}
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyAssociation:
///     type: gcp:compute:OrganizationSecurityPolicyAssociation
///     name: policy
///     properties:
///       name: tf-test
///       attachmentId: ${policy.parent}
///       policyId: ${policy.id}
/// ```
///
///
/// ## Import
///
/// OrganizationSecurityPolicyAssociation can be imported using any of these accepted formats:
///
/// * `{{policy_id}}/association/{{name}}`
///
/// When using the `pulumi import` command, OrganizationSecurityPolicyAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicyAssociation:OrganizationSecurityPolicyAssociation default {{policy_id}}/association/{{name}}
/// ```
class OrganizationSecurityPolicyAssociation extends pulumi.CustomResource {
  /// The resource that the security policy is attached to.
  late final pulumi.Output<String> attachmentId;

  /// The display name of the security policy of the association.
  late final pulumi.Output<String> displayName;

  /// The name for an association.
  late final pulumi.Output<String> name;

  /// The security policy ID of the association.
  late final pulumi.Output<String> policyId;

  /// Creates a new [OrganizationSecurityPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityPolicyAssociation]. {@macro pulumi_compute_organization_security_policy_association_organization_security_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityPolicyAssociation(
    String name, {
    OrganizationSecurityPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyAssociation:OrganizationSecurityPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attachmentId = registerOutput<String>('attachmentId');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.policyId = registerOutput<String>('policyId');
  }
}
