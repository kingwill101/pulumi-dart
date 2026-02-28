import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_orgs_desc_args.dart';

/// An authorized organizations description describes a list of organizations
/// (1) that have been authorized to use certain asset (for example, device) data
/// owned by different organizations at the enforcement points, or (2) with certain
/// asset (for example, device) have been authorized to access the resources in
/// another organization at the enforcement points.
///
///
/// To get more information about AuthorizedOrgsDesc, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.authorizedOrgsDescs)
/// * How-to Guides
/// * [gcloud docs](https://cloud.google.com/beyondcorp-enterprise/docs/cross-org-authorization)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Authorized Orgs Desc Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const test_access = new gcp.accesscontextmanager.AccessPolicy("test-access", {
///     parent: "organizations/123456789",
///     title: "my policy",
/// });
/// const authorized_orgs_desc = new gcp.accesscontextmanager.AuthorizedOrgsDesc("authorized-orgs-desc", {
///     parent: pulumi.interpolate`accessPolicies/${test_access.name}`,
///     name: pulumi.interpolate`accessPolicies/${test_access.name}/authorizedOrgsDescs/fakeDescName`,
///     authorizationType: "AUTHORIZATION_TYPE_TRUST",
///     assetType: "ASSET_TYPE_CREDENTIAL_STRENGTH",
///     authorizationDirection: "AUTHORIZATION_DIRECTION_TO",
///     orgs: [
///         "organizations/12345",
///         "organizations/98765",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_access = gcp.accesscontextmanager.AccessPolicy("test-access",
///     parent="organizations/123456789",
///     title="my policy")
/// authorized_orgs_desc = gcp.accesscontextmanager.AuthorizedOrgsDesc("authorized-orgs-desc",
///     parent=test_access.name.apply(lambda name: f"accessPolicies/{name}"),
///     name=test_access.name.apply(lambda name: f"accessPolicies/{name}/authorizedOrgsDescs/fakeDescName"),
///     authorization_type="AUTHORIZATION_TYPE_TRUST",
///     asset_type="ASSET_TYPE_CREDENTIAL_STRENGTH",
///     authorization_direction="AUTHORIZATION_DIRECTION_TO",
///     orgs=[
///         "organizations/12345",
///         "organizations/98765",
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
///     var test_access = new Gcp.AccessContextManager.AccessPolicy("test-access", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "my policy",
///     });
///
///     var authorized_orgs_desc = new Gcp.AccessContextManager.AuthorizedOrgsDesc("authorized-orgs-desc", new()
///     {
///         Parent = test_access.Name.Apply(name => $"accessPolicies/{name}"),
///         Name = test_access.Name.Apply(name => $"accessPolicies/{name}/authorizedOrgsDescs/fakeDescName"),
///         AuthorizationType = "AUTHORIZATION_TYPE_TRUST",
///         AssetType = "ASSET_TYPE_CREDENTIAL_STRENGTH",
///         AuthorizationDirection = "AUTHORIZATION_DIRECTION_TO",
///         Orgs = new[]
///         {
///             "organizations/12345",
///             "organizations/98765",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test_access, err := accesscontextmanager.NewAccessPolicy(ctx, "test-access", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewAuthorizedOrgsDesc(ctx, "authorized-orgs-desc", &accesscontextmanager.AuthorizedOrgsDescArgs{
/// 			Parent: test_access.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: test_access.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v/authorizedOrgsDescs/fakeDescName", name), nil
/// 			}).(pulumi.StringOutput),
/// 			AuthorizationType:      pulumi.String("AUTHORIZATION_TYPE_TRUST"),
/// 			AssetType:              pulumi.String("ASSET_TYPE_CREDENTIAL_STRENGTH"),
/// 			AuthorizationDirection: pulumi.String("AUTHORIZATION_DIRECTION_TO"),
/// 			Orgs: pulumi.StringArray{
/// 				pulumi.String("organizations/12345"),
/// 				pulumi.String("organizations/98765"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.AuthorizedOrgsDesc;
/// import com.pulumi.gcp.accesscontextmanager.AuthorizedOrgsDescArgs;
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
///         var test_access = new AccessPolicy("test-access", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("my policy")
///             .build());
///
///         var authorized_orgs_desc = new AuthorizedOrgsDesc("authorized-orgs-desc", AuthorizedOrgsDescArgs.builder()
///             .parent(test_access.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .name(test_access.name().applyValue(_name -> String.format("accessPolicies/%s/authorizedOrgsDescs/fakeDescName", _name)))
///             .authorizationType("AUTHORIZATION_TYPE_TRUST")
///             .assetType("ASSET_TYPE_CREDENTIAL_STRENGTH")
///             .authorizationDirection("AUTHORIZATION_DIRECTION_TO")
///             .orgs(
///                 "organizations/12345",
///                 "organizations/98765")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   authorized-orgs-desc:
///     type: gcp:accesscontextmanager:AuthorizedOrgsDesc
///     properties:
///       parent: accessPolicies/${["test-access"].name}
///       name: accessPolicies/${["test-access"].name}/authorizedOrgsDescs/fakeDescName
///       authorizationType: AUTHORIZATION_TYPE_TRUST
///       assetType: ASSET_TYPE_CREDENTIAL_STRENGTH
///       authorizationDirection: AUTHORIZATION_DIRECTION_TO
///       orgs:
///         - organizations/12345
///         - organizations/98765
///   test-access:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: my policy
/// ```
///
///
/// ## Import
///
/// AuthorizedOrgsDesc can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AuthorizedOrgsDesc can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/authorizedOrgsDesc:AuthorizedOrgsDesc default {{name}}
/// ```
class AuthorizedOrgsDesc extends pulumi.CustomResource {
  /// The type of entities that need to use the authorization relationship during
  /// evaluation, such as a device. Valid values are "ASSET_TYPE_DEVICE" and
  /// "ASSET_TYPE_CREDENTIAL_STRENGTH".
  /// Possible values are: `ASSET_TYPE_DEVICE`, `ASSET_TYPE_CREDENTIAL_STRENGTH`.
  late final pulumi.Output<String?> assetType;
  /// The direction of the authorization relationship between this organization
  /// and the organizations listed in the "orgs" field. The valid values for this
  /// field include the following:
  /// AUTHORIZATION_DIRECTION_FROM: Allows this organization to evaluate traffic
  /// in the organizations listed in the `orgs` field.
  /// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in the `orgs`
  /// field to evaluate the traffic in this organization.
  /// For the authorization relationship to take effect, all of the organizations
  /// must authorize and specify the appropriate relationship direction. For
  /// example, if organization A authorized organization B and C to evaluate its
  /// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the authorization
  /// direction, organizations B and C must specify
  /// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction in their
  /// "AuthorizedOrgsDesc" resource.
  /// Possible values are: `AUTHORIZATION_DIRECTION_TO`, `AUTHORIZATION_DIRECTION_FROM`.
  late final pulumi.Output<String?> authorizationDirection;
  /// A granular control type for authorization levels. Valid value is "AUTHORIZATION_TYPE_TRUST".
  /// Possible values are: `AUTHORIZATION_TYPE_TRUST`.
  late final pulumi.Output<String?> authorizationType;
  /// Time the AuthorizedOrgsDesc was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Resource name for the `AuthorizedOrgsDesc`. Format:
  /// `accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}`.
  /// The `authorized_orgs_desc` component must begin with a letter, followed by
  /// alphanumeric characters or `_`.
  /// After you create an `AuthorizedOrgsDesc`, you cannot change its `name`.
  late final pulumi.Output<String> name;
  /// The list of organization ids in this AuthorizedOrgsDesc.
  /// Format: `organizations/<org_number>`
  /// Example: `organizations/123456`
  late final pulumi.Output<List<String>?> orgs;
  /// Required. Resource name for the access policy which owns this `AuthorizedOrgsDesc`.
  late final pulumi.Output<String> parent;
  /// Time the AuthorizedOrgsDesc was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthorizedOrgsDesc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizedOrgsDesc]. {@macro pulumi_accesscontextmanager_authorized_orgs_desc_authorized_orgs_desc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizedOrgsDesc(
    String name, {
    AuthorizedOrgsDescArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/authorizedOrgsDesc:AuthorizedOrgsDesc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assetType = registerOutput<String?>('assetType');
    this.authorizationDirection = registerOutput<String?>('authorizationDirection');
    this.authorizationType = registerOutput<String?>('authorizationType');
    this.createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    this.orgs = registerOutput<List<String>?>('orgs');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
