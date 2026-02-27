import 'package:pulumi/pulumi.dart';
import '../region_url_map_default_route_action/region_url_map_default_route_action.dart';
import '../region_url_map_default_url_redirect/region_url_map_default_url_redirect.dart';
import '../region_url_map_header_action/region_url_map_header_action.dart';
import '../region_url_map_host_rule/region_url_map_host_rule.dart';
import '../region_url_map_path_matcher/region_url_map_path_matcher.dart';
import '../region_url_map_test/region_url_map_test.dart';
import 'region_url_map_args.dart';

/// UrlMaps are used to route requests to a backend service based on rules
/// that you define for the host and path of an incoming URL.
///
///
///
/// ## Example Usage
///
/// ### Region Url Map Basic
///
///
///
/// ### Region Url Map Default Route Action
///
///
///
/// ### Region Url Map L7 Ilb Path
///
///
///
/// ### Region Url Map L7 Ilb Path Partial
///
///
///
/// ### Region Url Map L7 Ilb Route
///
///
///
/// ### Region Url Map L7 Ilb Route Partial
///
///
///
/// ### Region Url Map Path Template Match
///
///
///
/// ### Region Url Map Path Matcher Default Route Action
///
///
///
/// ### Region Url Map Default Mirror Percent
///
///
///
/// ### Region Url Map Path Matcher Default Mirror Percent
///
///
///
/// ### Region Url Map Path Rule Mirror Percent
///
///
///
/// ### Region Url Map Route Rule Mirror Percent
///
///
///
///
/// ## Import
///
/// RegionUrlMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/urlMaps/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionUrlMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default projects/{{project}}/regions/{{region}}/urlMaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionUrlMap:RegionUrlMap default {{name}}
/// ```
class RegionUrlMap extends CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// defaultRouteAction takes effect when none of the hostRules match. The load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. If defaultRouteAction specifies any weightedBackendServices, defaultService must not be set. Conversely if defaultService is set, defaultRouteAction cannot contain any weightedBackendServices.
  /// Only one of defaultRouteAction or defaultUrlRedirect must be set.
  /// URL maps for Classic external HTTP(S) load balancers only support the urlRewrite action within defaultRouteAction.
  /// defaultRouteAction has no effect when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  /// Structure is documented below.
  late final Output<RegionUrlMapDefaultRouteAction?> defaultRouteAction;

  /// The full or partial URL of the defaultService resource to which traffic is directed if
  /// none of the hostRules match. If defaultRouteAction is additionally specified, advanced
  /// routing actions like URL Rewrites, etc. take effect prior to sending the request to the
  /// backend. However, if defaultService is specified, defaultRouteAction cannot contain any
  /// weightedBackendServices. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified.  Only one of defaultService,
  /// defaultUrlRedirect or defaultRouteAction.weightedBackendService must be set.
  late final Output<String?> defaultService;

  /// When none of the specified hostRules match, the request is redirected to a URL specified
  /// by defaultUrlRedirect. If defaultUrlRedirect is specified, defaultService or
  /// defaultRouteAction must not be set.
  /// Structure is documented below.
  late final Output<RegionUrlMapDefaultUrlRedirect?> defaultUrlRedirect;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final Output<String> fingerprint;

  /// Specifies changes to request and response headers that need to take effect for the selected backendService.
  /// headerAction specified here take effect before headerAction in the enclosing HttpRouteRule, PathMatcher and UrlMap.
  /// headerAction is not supported for load balancers that have their loadBalancingScheme set to EXTERNAL.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  late final Output<RegionUrlMapHeaderAction?> headerAction;

  /// The list of HostRules to use against the URL.
  /// Structure is documented below.
  late final Output<List<RegionUrlMapHostRule>?> hostRules;

  /// The unique identifier for the resource.
  late final Output<int> mapId;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The list of named PathMatchers to use against the URL.
  /// Structure is documented below.
  late final Output<List<RegionUrlMapPathMatcher>?> pathMatchers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Region in which the url map should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The list of expected URL mappings. Requests to update this UrlMap will
  /// succeed only if all of the test cases pass.
  /// Structure is documented below.
  late final Output<List<RegionUrlMapTest>?> tests;

  RegionUrlMap(
    String name, {
    RegionUrlMapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionUrlMap:RegionUrlMap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.defaultRouteAction =
        registerOutput<RegionUrlMapDefaultRouteAction?>('defaultRouteAction');
    this.defaultService = registerOutput<String?>('defaultService');
    this.defaultUrlRedirect =
        registerOutput<RegionUrlMapDefaultUrlRedirect?>('defaultUrlRedirect');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.headerAction =
        registerOutput<RegionUrlMapHeaderAction?>('headerAction');
    this.hostRules = registerOutput<List<RegionUrlMapHostRule>?>('hostRules');
    this.mapId = registerOutput<int>('mapId');
    this.name = registerOutput<String>('name');
    this.pathMatchers =
        registerOutput<List<RegionUrlMapPathMatcher>?>('pathMatchers');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.tests = registerOutput<List<RegionUrlMapTest>?>('tests');
  }
}
