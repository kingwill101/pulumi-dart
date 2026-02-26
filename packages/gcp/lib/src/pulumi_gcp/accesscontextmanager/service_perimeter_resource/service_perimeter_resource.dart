import 'package:pulumi/pulumi.dart';
import 'service_perimeter_resource_args.dart';

/// Allows configuring a single GCP resource that should be inside the <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> block of a service perimeter.
/// This resource is intended to be used in cases where it is not possible to compile a full list
/// of projects to include in a <span pulumi-lang-nodejs="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-dotnet="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-go="`accesscontextmanager.ServicePerimeter`" pulumi-lang-python="`accesscontextmanager.ServicePerimeter`" pulumi-lang-yaml="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-java="`gcp.accesscontextmanager.ServicePerimeter`">`gcp.accesscontextmanager.ServicePerimeter`</span> resource,
/// to enable them to be added separately.
/// If your perimeter is in dry-run mode use <span pulumi-lang-nodejs="`gcp.accesscontextmanager.ServicePerimeterDryRunResource`" pulumi-lang-dotnet="`gcp.accesscontextmanager.ServicePerimeterDryRunResource`" pulumi-lang-go="`accesscontextmanager.ServicePerimeterDryRunResource`" pulumi-lang-python="`accesscontextmanager.ServicePerimeterDryRunResource`" pulumi-lang-yaml="`gcp.accesscontextmanager.ServicePerimeterDryRunResource`" pulumi-lang-java="`gcp.accesscontextmanager.ServicePerimeterDryRunResource`">`gcp.accesscontextmanager.ServicePerimeterDryRunResource`</span> instead.
///
/// > **Note:** If this resource is used alongside a <span pulumi-lang-nodejs="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-dotnet="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-go="`accesscontextmanager.ServicePerimeter`" pulumi-lang-python="`accesscontextmanager.ServicePerimeter`" pulumi-lang-yaml="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-java="`gcp.accesscontextmanager.ServicePerimeter`">`gcp.accesscontextmanager.ServicePerimeter`</span> resource,
/// the service perimeter resource must have a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`ignoreChanges " pulumi-lang-dotnet="`IgnoreChanges " pulumi-lang-go="`ignoreChanges " pulumi-lang-python="`ignore_changes " pulumi-lang-yaml="`ignoreChanges " pulumi-lang-java="`ignoreChanges ">`ignore_changes </span>= [status[0].resources]` so
/// they don't fight over which resources should be in the policy.
///
///
/// To get more information about ServicePerimeterResource, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters)
/// * How-to Guides
/// * [Service Perimeter Quickstart](https://cloud.google.com/vpc-service-controls/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> and set <span pulumi-lang-nodejs="`userProjectOverride`" pulumi-lang-dotnet="`UserProjectOverride`" pulumi-lang-go="`userProjectOverride`" pulumi-lang-python="`user_project_override`" pulumi-lang-yaml="`userProjectOverride`" pulumi-lang-java="`userProjectOverride`">`user_project_override`</span> to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// <span pulumi-lang-nodejs="`billingProject`" pulumi-lang-dotnet="`BillingProject`" pulumi-lang-go="`billingProject`" pulumi-lang-python="`billing_project`" pulumi-lang-yaml="`billingProject`" pulumi-lang-java="`billingProject`">`billing_project`</span> you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Service Perimeter Resource Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
/// parent: "organizations/123456789",
/// title: "my policy",
/// });
/// const service_perimeter_resourceServicePerimeter = new gcp.accesscontextmanager.ServicePerimeter("service-perimeter-resource", {
/// parent: pulumi.interpolate`accessPolicies/${access_policy.name}`,
/// name: pulumi.interpolate`accessPolicies/${access_policy.name}/servicePerimeters/restrict_all`,
/// title: "restrict_all",
/// status: {
/// restrictedServices: ["storage.googleapis.com"],
/// },
/// });
/// const service_perimeter_resource = new gcp.accesscontextmanager.ServicePerimeterResource("service-perimeter-resource", {
/// perimeterName: service_perimeter_resourceServicePerimeter.name,
/// resource: "projects/987654321",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
/// parent="organizations/123456789",
/// title="my policy")
/// service_perimeter_resource_service_perimeter = gcp.accesscontextmanager.ServicePerimeter("service-perimeter-resource",
/// parent=access_policy.name.apply(lambda name: f"accessPolicies/{name}"),
/// name=access_policy.name.apply(lambda name: f"accessPolicies/{name}/servicePerimeters/restrict_all"),
/// title="restrict_all",
/// status={
/// "restricted_services": ["storage.googleapis.com"],
/// })
/// service_perimeter_resource = gcp.accesscontextmanager.ServicePerimeterResource("service-perimeter-resource",
/// perimeter_name=service_perimeter_resource_service_perimeter.name,
/// resource="projects/987654321")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
/// {
/// Parent = "organizations/123456789",
/// Title = "my policy",
/// });
///
/// var service_perimeter_resourceServicePerimeter = new Gcp.AccessContextManager.ServicePerimeter("service-perimeter-resource", new()
/// {
/// Parent = access_policy.Name.Apply(name => $"accessPolicies/{name}"),
/// Name = access_policy.Name.Apply(name => $"accessPolicies/{name}/servicePerimeters/restrict_all"),
/// Title = "restrict_all",
/// Status = new Gcp.AccessContextManager.Inputs.ServicePerimeterStatusArgs
/// {
/// RestrictedServices = new[]
/// {
/// "storage.googleapis.com",
/// },
/// },
/// });
///
/// var service_perimeter_resource = new Gcp.AccessContextManager.ServicePerimeterResource("service-perimeter-resource", new()
/// {
/// PerimeterName = service_perimeter_resourceServicePerimeter.Name,
/// Resource = "projects/987654321",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// access_policy, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// Parent: pulumi.String("organizations/123456789"),
/// Title:  pulumi.String("my policy"),
/// })
/// if err != nil {
/// return err
/// }
/// service_perimeter_resourceServicePerimeter, err := accesscontextmanager.NewServicePerimeter(ctx, "service-perimeter-resource", &accesscontextmanager.ServicePerimeterArgs{
/// Parent: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v", name), nil
/// }).(pulumi.StringOutput),
/// Name: access_policy.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("accessPolicies/%v/servicePerimeters/restrict_all", name), nil
/// }).(pulumi.StringOutput),
/// Title: pulumi.String("restrict_all"),
/// Status: &accesscontextmanager.ServicePerimeterStatusArgs{
/// RestrictedServices: pulumi.StringArray{
/// pulumi.String("storage.googleapis.com"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = accesscontextmanager.NewServicePerimeterResource(ctx, "service-perimeter-resource", &accesscontextmanager.ServicePerimeterResourceArgs{
/// PerimeterName: service_perimeter_resourceServicePerimeter.Name,
/// Resource:      pulumi.String("projects/987654321"),
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeter;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterArgs;
/// import com.pulumi.gcp.accesscontextmanager.inputs.ServicePerimeterStatusArgs;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterResource;
/// import com.pulumi.gcp.accesscontextmanager.ServicePerimeterResourceArgs;
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
/// var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
/// .parent("organizations/123456789")
/// .title("my policy")
/// .build());
///
/// var service_perimeter_resourceServicePerimeter = new ServicePerimeter("service-perimeter-resourceServicePerimeter", ServicePerimeterArgs.builder()
/// .parent(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s", _name)))
/// .name(access_policy.name().applyValue(_name -> String.format("accessPolicies/%s/servicePerimeters/restrict_all", _name)))
/// .title("restrict_all")
/// .status(ServicePerimeterStatusArgs.builder()
/// .restrictedServices("storage.googleapis.com")
/// .build())
/// .build());
///
/// var service_perimeter_resource = new ServicePerimeterResource("service-perimeter-resource", ServicePerimeterResourceArgs.builder()
/// .perimeterName(service_perimeter_resourceServicePerimeter.name())
/// .resource("projects/987654321")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// service-perimeter-resource:
/// type: gcp:accesscontextmanager:ServicePerimeterResource
/// properties:
/// perimeterName: ${["service-perimeter-resourceServicePerimeter"].name}
/// resource: projects/987654321
/// service-perimeter-resourceServicePerimeter:
/// type: gcp:accesscontextmanager:ServicePerimeter
/// name: service-perimeter-resource
/// properties:
/// parent: accessPolicies/${["access-policy"].name}
/// name: accessPolicies/${["access-policy"].name}/servicePerimeters/restrict_all
/// title: restrict_all
/// status:
/// restrictedServices:
/// - storage.googleapis.com
/// access-policy:
/// type: gcp:accesscontextmanager:AccessPolicy
/// properties:
/// parent: organizations/123456789
/// title: my policy
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ServicePerimeterResource can be imported using any of these accepted formats:
///
/// * `{{perimeter_name}}/{{resource}}`
///
/// When using the `pulumi import` command, ServicePerimeterResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/servicePerimeterResource:ServicePerimeterResource default {{perimeter_name}}/{{resource}}
/// ```
class ServicePerimeterResource extends CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// The perimeter etag is internally used to prevent overwriting the list of perimeter resources on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of resources. The resource to add or remove is merged into that list and then this etag is sent with the PATCH call along with the updated resource list.
  late final Output<String> etag;

  /// The name of the Service Perimeter to add this resource to.
  late final Output<String> perimeterName;

  /// A GCP resource that is inside of the service perimeter.
  /// Currently only projects are allowed.
  /// Format: projects/{project_number}
  late final Output<String> resource;

  ServicePerimeterResource(
    String name, {
    ServicePerimeterResourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterResource:ServicePerimeterResource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.etag = registerOutput<String>('etag');
    this.perimeterName = registerOutput<String>('perimeterName');
    this.resource = registerOutput<String>('resource');
  }
}
