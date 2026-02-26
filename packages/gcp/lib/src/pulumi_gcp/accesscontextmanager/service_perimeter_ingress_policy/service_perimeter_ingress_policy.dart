import 'package:pulumi/pulumi.dart';
import '../service_perimeter_ingress_policy_ingress_from/service_perimeter_ingress_policy_ingress_from.dart';
import '../service_perimeter_ingress_policy_ingress_to/service_perimeter_ingress_policy_ingress_to.dart';
import 'service_perimeter_ingress_policy_args.dart';

/// Manage a single IngressPolicy in the status (enforced) configuration for a service perimeter.
/// IngressPolicies match requests based on ingressFrom and ingressTo stanzas. For an ingress policy to match,
/// both the ingressFrom and ingressTo stanzas must be matched. If an IngressPolicy matches a request,
/// the request is allowed through the perimeter boundary from outside the perimeter.
/// For example, access from the internet can be allowed either based on an AccessLevel or,
/// for traffic hosted on Google Cloud, the project of the source network.
/// For access from private networks, using the project of the hosting network is required.
/// Individual ingress policies can be limited by restricting which services and/
/// or actions they match using the ingressTo field.
///
/// > **Note:** By default, updates to this resource will remove the IngressPolicy from the
/// from the perimeter and add it back in a non-atomic manner. To ensure that the new IngressPolicy
/// is added before the old one is removed, add a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`createBeforeDestroy " pulumi-lang-dotnet="`CreateBeforeDestroy " pulumi-lang-go="`createBeforeDestroy " pulumi-lang-python="`create_before_destroy " pulumi-lang-yaml="`createBeforeDestroy " pulumi-lang-java="`createBeforeDestroy ">`create_before_destroy </span>= true` to this resource.
/// > **Note:** If this resource is used alongside a <span pulumi-lang-nodejs="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-dotnet="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-go="`accesscontextmanager.ServicePerimeter`" pulumi-lang-python="`accesscontextmanager.ServicePerimeter`" pulumi-lang-yaml="`gcp.accesscontextmanager.ServicePerimeter`" pulumi-lang-java="`gcp.accesscontextmanager.ServicePerimeter`">`gcp.accesscontextmanager.ServicePerimeter`</span> resource,
/// the service perimeter resource must have a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`ignoreChanges " pulumi-lang-dotnet="`IgnoreChanges " pulumi-lang-go="`ignoreChanges " pulumi-lang-python="`ignore_changes " pulumi-lang-yaml="`ignoreChanges " pulumi-lang-java="`ignoreChanges ">`ignore_changes </span>= [status[0].ingress_policies]` so
/// they don't fight over which ingress rules should be in the policy.
///
///
/// To get more information about ServicePerimeterIngressPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.servicePerimeters#ingresspolicy)
/// * How-to Guides
/// * [Guide to Ingress and Egress Rules](https://cloud.google.com/vpc-service-controls/docs/ingress-egress-rules)
///
/// ## Example Usage
class ServicePerimeterIngressPolicy extends CustomResource {
  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// The perimeter etag is internally used to prevent overwriting the list of policies on PATCH calls. It is retrieved from the same GET perimeter API call that's used to get the current list of policies. The policy defined in this resource is added or removed from that list, and then this etag is sent with the PATCH call along with the updated policies.
  late final Output<String> etag;

  /// Defines the conditions on the source of a request causing this `IngressPolicy`
  /// to apply.
  /// Structure is documented below.
  late final Output<ServicePerimeterIngressPolicyIngressFrom?> ingressFrom;

  /// Defines the conditions on the `ApiOperation` and request destination that cause
  /// this `IngressPolicy` to apply.
  /// Structure is documented below.
  late final Output<ServicePerimeterIngressPolicyIngressTo?> ingressTo;

  /// The name of the Service Perimeter to add this resource to.
  late final Output<String> perimeter;

  /// Human readable title. Must be unique within the perimeter. Does not affect behavior.
  late final Output<String?> title;

  ServicePerimeterIngressPolicy(
    String name, {
    ServicePerimeterIngressPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/servicePerimeterIngressPolicy:ServicePerimeterIngressPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicyId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.ingressFrom =
        Output.createUnknown<ServicePerimeterIngressPolicyIngressFrom?>();
    this.ingressTo =
        Output.createUnknown<ServicePerimeterIngressPolicyIngressTo?>();
    this.perimeter = Output.createUnknown<String>();
    this.title = Output.createUnknown<String?>();
  }
}
