import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_dry_run_resource_args.dart';

/// Allows configuring a single GCP resource that should be inside of the `spec` block of a dry run service perimeter.
/// This resource is intended to be used in cases where it is not possible to compile a full list
/// of projects to include in a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// to enable them to be added separately.
/// If your perimeter is NOT in dry-run mode use `gcp.accesscontextmanager.ServicePerimeterResource` instead.
///
/// > **Note:** If this resource is used alongside a `gcp.accesscontextmanager.ServicePerimeter` resource,
/// the service perimeter resource must have a `lifecycle` block with `ignore_changes = [spec[0].resources]` so
/// they don't fight over which resources should be in the policy.
///
///
/// To get more information about ServicePerimeterDryRunResource, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeter Dry Run Resource Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "my policy",
/// });
/// const service_perimeter_dry_run_resourceServicePerimeter = new gcp.accesscontextmanager.ServicePerimeter("service-perimeter-dry-run-resource", {
///     parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
///     name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/restrict_all`,
///     title: "restrict_all",
///     spec: {
///         restrictedServices: ["storage.googleapis.com"],
///     },
///     useExplicitDryRunSpec: true,
/// });
/// const service_perimeter_dry_run_resource = new gcp.accesscontextmanager.ServicePerimeterDryRunResource("service-perimeter-dry-run-resource", {
///     perimeterName: service_perimeter_dry_run_resourceServicePerimeter.name,
///     resource: "projects/987654321",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="my policy")
/// service_perimeter_dry_run_resource_service_perimeter = gcp.accesscontextmanager.ServicePerimeter("service-perimeter-dry-run-resource",
///     parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
///     name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/restrict_all"),
///     title="restrict_all",
///     spec={
///         "restricted_services": ["storage.googleapis.com"],
///     },
///     use_explicit_dry_run_spec=True)
/// service_perimeter_dry_run_resource = gcp.accesscontextmanager.ServicePerimeterDryRunResource("service-perimeter-dry-run-resource",
///     perimeter_name=service_perimeter_dry_run_resource_service_perimeter.name,
///     resource="projects/987654321")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "my policy",
///     });
///
///     var service_perimeter_dry_run_resourceServicePerimeter = new Gcp.AccessContextManager.ServicePerimeter("service-perimeter-dry-run-resource", new()
///     {
///         Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
///         Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/restrict_all"),
///         Title = "restrict_all",
///         Spec = new Gcp.AccessContextManager.Inputs.ServicePerimeterSpecArgs
///         {
///             RestrictedServices = new[]
///             {
///                 "storage.googleapis.com",
///             },
///         },
///         UseExplicitDryRunSpec = true,
///     });
///
///     var service_perimeter_dry_run_resource = new Gcp.AccessContextManager.ServicePerimeterDryRunResource("service-perimeter-dry-run-resource", new()
///     {
///         PerimeterName = service_perimeter_dry_run_resourceServicePerimeter.Name,
///         Resource = "projects/987654321",
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
/// 		access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("my policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_perimeter_dry_run_resourceServicePerimeter, err := accesscontextmanager.NewServicePerimeter(ctx, "service-perimeter-dry-run-resource", &accesscontextmanager.ServicePerimeterArgs{
/// 			Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("accessPolicies/%v/servicePerimeters/restrict_all", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Title: pulumi.String("restrict_all"),
/// 			Spec: &accesscontextmanager.ServicePerimeterSpecArgs{
/// 				RestrictedServices: pulumi.StringArray{
/// 					pulumi.String("storage.googleapis.com"),
/// 				},
/// 			},
/// 			UseExplicitDryRunSpec: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewServicePerimeterDryRunResource(ctx, "service-perimeter-dry-run-resource", &accesscontextmanager.ServicePerimeterDryRunResourceArgs{
/// 			PerimeterName: service_perimeter_dry_run_resourceServicePerimeter.Name,
/// 			Resource:      pulumi.String("projects/987654321"),
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
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeter;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterSpecArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterDryRunResource;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterDryRunResourceArgs;
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
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("my policy")
///             .build());
///
///         var service_perimeter_dry_run_resourceServicePerimeter = new ServicePerimeter("service-perimeter-dry-run-resourceServicePerimeter", ServicePerimeterArgs.builder()
///             .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
///             .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/restrict_all", _name)))
///             .title("restrict_all")
///             .spec(ServicePerimeterSpecArgs.builder()
///                 .restrictedServices("storage.googleapis.com")
///                 .build())
///             .useExplicitDryRunSpec(true)
///             .build());
///
///         var service_perimeter_dry_run_resource = new ServicePerimeterDryRunResource("service-perimeter-dry-run-resource", ServicePerimeterDryRunResourceArgs.builder()
///             .perimeterName(service_perimeter_dry_run_resourceServicePerimeter.name())
///             .resource("projects/987654321")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   service-perimeter-dry-run-resource:
///     type: gcp:accesscontextmanager:ServicePerimeterDryRunResource
///     properties:
///       perimeterName: ${["service-perimeter-dry-run-resourceServicePerimeter"].name}
///       resource: projects/987654321
///   service-perimeter-dry-run-resourceServicePerimeter:
///     type: gcp:accesscontextmanager:ServicePerimeter
///     name: service-perimeter-dry-run-resource
///     properties:
///       parent: accessPolicies/${["access-policy"].name}
///       name: accessPolicies/${["access-policy"].name}/servicePerimeters/restrict_all
///       title: restrict_all
///       spec:
///         restrictedServices:
///           - storage.googleapis.com
///       useExplicitDryRunSpec: true
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: my policy
/// ```
///
///
/// ## Import
///
/// ServicePerimeterDryRunResource can be imported using any of these accepted formats:
///
/// * `{{perimeter_name}}/{{resource}}`
///
/// When using the `pulumi import` command, ServicePerimeterDryRunResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeterDryRunResource:ServicePerimeterDryRunResource default {{perimeter_name}}/{{resource}}
/// ```
class ServicePerimeterDryRunResource extends pulumi.CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final pulumi.Output<String> accessPolicyId;
  /// The perimeter etag is internally used to prevent overwriting the list of perimeter resources on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of resources. The resource to add or remove is merged into that list and then this etag is sent with the PATCH call along with the updated resource list.
  late final pulumi.Output<String> etag;
  /// The name of the Service Perimeter to add this resource to.
  late final pulumi.Output<String> perimeterName;
  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  late final pulumi.Output<String> resource;

  /// Creates a new [ServicePerimeterDryRunResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePerimeterDryRunResource]. {@macro pulumi_accesscontextmanager_service_perimeter_dry_run_resource_service_perimeter_dry_run_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePerimeterDryRunResource(
    String name, {
    ServicePerimeterDryRunResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterDryRunResource:ServicePerimeterDryRunResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.etag = registerOutput<String>('etag');
    this.perimeterName = registerOutput<String>('perimeterName');
    this.resource = registerOutput<String>('resource');
  }
}
