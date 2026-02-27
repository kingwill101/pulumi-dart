import 'package:pulumi/pulumi.dart' as pulumi;
import '../urlmap_default_custom_error_response_policy/urlmap_default_custom_error_response_policy.dart';
import '../urlmap_default_route_action/urlmap_default_route_action.dart';
import '../urlmap_default_url_redirect/urlmap_default_url_redirect.dart';
import '../urlmap_header_action/urlmap_header_action.dart';
import '../urlmap_host_rule/urlmap_host_rule.dart';
import '../urlmap_path_matcher/urlmap_path_matcher.dart';
import '../urlmap_test/urlmap_test.dart';
import 'urlmap_args.dart';

/// UrlMaps are used to route requests to a backend service based on rules
/// that you define for the host and path of an incoming URL.
///
///
/// To get more information about UrlMap, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/urlMaps)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/url-map-concepts)
///
/// ## Example Usage
///
/// ### Url Map Bucket And Service
///
///
///
/// ### Url Map Traffic Director Route
///
///
///
/// ### Url Map Traffic Director Route Partial
///
///
///
/// ### Url Map Traffic Director Path
///
///
///
/// ### Url Map Traffic Director Path Partial
///
///
///
/// ### Url Map Header Based Routing
///
///
///
/// ### Url Map Parameter Based Routing
///
///
///
/// ### Url Map Default Mirror Percent
///
///
///
/// ### Url Map Path Matcher Default Mirror Percent
///
///
///
/// ### Url Map Path Rule Mirror Percent
///
///
///
/// ### Url Map Route Rule Mirror Percent
///
///
///
/// ### Url Map Test Headers
///
///
///
/// ### Url Map Test Expected Output Url
///
///
///
/// ### Url Map Test Redirect Response Code
///
///
///
/// ### Url Map Path Template Match
///
///
///
/// ### Url Map Custom Error Response Policy
///
///
///
/// ### Url Map Http Filter Configs
///
///
///
/// ### Url Map Http Filter Metadata
///
///
///
///
/// ## Import
///
/// UrlMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/urlMaps/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, UrlMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/uRLMap:URLMap default projects/{{project}}/global/urlMaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/uRLMap:URLMap default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/uRLMap:URLMap default {{name}}
/// ```
class URLMap extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// defaultCustomErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// This policy takes effect at the PathMatcher level and applies only when no policy has been defined for the error code at lower levels like RouteRule and PathRule within this PathMatcher. If an error code does not have a policy defined in defaultCustomErrorResponsePolicy, then a policy defined for the error code in UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// For example, consider a UrlMap with the following configuration:
  /// UrlMap.defaultCustomErrorResponsePolicy is configured with policies for 5xx and 4xx errors
  /// A RouteRule for /coming_soon/ is configured for the error code 404.
  /// If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in RouteRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect.
  /// When used in conjunction with pathMatcher.defaultRouteAction.retryPolicy, retries take precedence. Only once all retries are exhausted, the defaultCustomErrorResponsePolicy is applied. While attempting a retry, if load balancer is successful in reaching the service, the defaultCustomErrorResponsePolicy is ignored and the response from the service is returned to the client.
  /// defaultCustomErrorResponsePolicy is supported only for global external Application Load Balancers.
  /// Structure is documented below.
  late final pulumi.Output<URLMapDefaultCustomErrorResponsePolicy?>
      defaultCustomErrorResponsePolicy;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions
  /// like URL rewrites, header transformations, etc. prior to forwarding the request to the selected backend.
  /// If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService
  /// is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// Structure is documented below.
  late final pulumi.Output<URLMapDefaultRouteAction?> defaultRouteAction;

  /// The backend service or backend bucket to use when none of the given rules match.
  late final pulumi.Output<String?> defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  late final pulumi.Output<URLMapDefaultUrlRedirect?> defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when you create
  /// the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This
  /// field is used in optimistic locking.
  late final pulumi.Output<String> fingerprint;

  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here take effect after
  /// headerAction specified under pathMatcher.
  /// Structure is documented below.
  late final pulumi.Output<URLMapHeaderAction?> headerAction;

  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  late final pulumi.Output<List<URLMapHostRule>?> hostRules;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> mapId;

  /// Name of the resource. Provided by the client when the resource is created. The
  /// name must be 1-63 characters long, and comply with RFC1035. Specifically, the
  /// name must be 1-63 characters long and match the regular expression
  /// `a-z?` which means the first character must be a lowercase
  /// letter, and all following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  late final pulumi.Output<List<URLMapPathMatcher>?> pathMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The list of expected URL mapping tests. Request to update this UrlMap will
  /// succeed only if all of the test cases pass. You can specify a maximum of 100
  /// tests per UrlMap.
  /// Structure is documented below.
  late final pulumi.Output<List<URLMapTest>?> tests;

  URLMap(
    String name, {
    URLMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/uRLMap:URLMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.defaultCustomErrorResponsePolicy =
        registerOutput<URLMapDefaultCustomErrorResponsePolicy?>(
            'defaultCustomErrorResponsePolicy');
    this.defaultRouteAction =
        registerOutput<URLMapDefaultRouteAction?>('defaultRouteAction');
    this.defaultService = registerOutput<String?>('defaultService');
    this.defaultUrlRedirect =
        registerOutput<URLMapDefaultUrlRedirect?>('defaultUrlRedirect');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.headerAction = registerOutput<URLMapHeaderAction?>('headerAction');
    this.hostRules = registerOutput<List<URLMapHostRule>?>('hostRules');
    this.mapId = registerOutput<int>('mapId');
    this.name = registerOutput<String>('name');
    this.pathMatchers =
        registerOutput<List<URLMapPathMatcher>?>('pathMatchers');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.tests = registerOutput<List<URLMapTest>?>('tests');
  }
}
