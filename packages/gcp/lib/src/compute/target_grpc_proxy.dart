import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_grpc_proxy_args.dart';

/// Represents a Target gRPC Proxy resource. A target gRPC proxy is a component
/// of load balancers intended for load balancing gRPC traffic. Global forwarding
/// rules reference a target gRPC proxy. The Target gRPC Proxy references
/// a URL map which specifies how traffic routes to gRPC backend services.
///
///
/// To get more information about TargetGrpcProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies)
/// * How-to Guides
/// * [Using Target gRPC Proxies](https://cloud.google.com/traffic-director/docs/proxyless-overview)
///
/// ## Example Usage
///
/// ### Target Grpc Proxy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "healthcheck",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     grpcHealthCheck: {
///         portName: "health-check-port",
///         portSpecification: "USE_NAMED_PORT",
///         grpcServiceName: "testservice",
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "backend",
///     portName: "grpc",
///     protocol: "GRPC",
///     timeoutSec: 10,
///     healthChecks: defaultHealthCheck.id,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "a description",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         routeRules: [{
///             priority: 1,
///             headerAction: {
///                 requestHeadersToRemoves: ["RemoveMe2"],
///                 requestHeadersToAdds: [{
///                     headerName: "AddSomethingElse",
///                     headerValue: "MyOtherValue",
///                     replace: true,
///                 }],
///                 responseHeadersToRemoves: ["RemoveMe3"],
///                 responseHeadersToAdds: [{
///                     headerName: "AddMe",
///                     headerValue: "MyValue",
///                     replace: false,
///                 }],
///             },
///             matchRules: [{
///                 fullPathMatch: "a full path",
///                 headerMatches: [{
///                     headerName: "someheader",
///                     exactMatch: "match this exactly",
///                     invertMatch: true,
///                 }],
///                 ignoreCase: true,
///                 metadataFilters: [{
///                     filterMatchCriteria: "MATCH_ANY",
///                     filterLabels: [{
///                         name: "PLANET",
///                         value: "MARS",
///                     }],
///                 }],
///                 queryParameterMatches: [{
///                     name: "a query parameter",
///                     presentMatch: true,
///                 }],
///             }],
///             urlRedirect: {
///                 hostRedirect: "A host",
///                 httpsRedirect: false,
///                 pathRedirect: "some/path",
///                 redirectResponseCode: "TEMPORARY_REDIRECT",
///                 stripQuery: true,
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// const _default = new gcp.compute.TargetGrpcProxy("default", {
///     name: "proxy",
///     urlMap: urlmap.id,
///     validateForProxyless: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="healthcheck",
///     timeout_sec=1,
///     check_interval_sec=1,
///     grpc_health_check={
///         "port_name": "health-check-port",
///         "port_specification": "USE_NAMED_PORT",
///         "grpc_service_name": "testservice",
///     })
/// home = gcp.compute.BackendService("home",
///     name="backend",
///     port_name="grpc",
///     protocol="GRPC",
///     timeout_sec=10,
///     health_checks=default_health_check.id,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED")
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="a description",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "route_rules": [{
///             "priority": 1,
///             "header_action": {
///                 "request_headers_to_removes": ["RemoveMe2"],
///                 "request_headers_to_adds": [{
///                     "header_name": "AddSomethingElse",
///                     "header_value": "MyOtherValue",
///                     "replace": True,
///                 }],
///                 "response_headers_to_removes": ["RemoveMe3"],
///                 "response_headers_to_adds": [{
///                     "header_name": "AddMe",
///                     "header_value": "MyValue",
///                     "replace": False,
///                 }],
///             },
///             "match_rules": [{
///                 "full_path_match": "a full path",
///                 "header_matches": [{
///                     "header_name": "someheader",
///                     "exact_match": "match this exactly",
///                     "invert_match": True,
///                 }],
///                 "ignore_case": True,
///                 "metadata_filters": [{
///                     "filter_match_criteria": "MATCH_ANY",
///                     "filter_labels": [{
///                         "name": "PLANET",
///                         "value": "MARS",
///                     }],
///                 }],
///                 "query_parameter_matches": [{
///                     "name": "a query parameter",
///                     "present_match": True,
///                 }],
///             }],
///             "url_redirect": {
///                 "host_redirect": "A host",
///                 "https_redirect": False,
///                 "path_redirect": "some/path",
///                 "redirect_response_code": "TEMPORARY_REDIRECT",
///                 "strip_query": True,
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// default = gcp.compute.TargetGrpcProxy("default",
///     name="proxy",
///     url_map=urlmap.id,
///     validate_for_proxyless=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "healthcheck",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         GrpcHealthCheck = new Gcp.Compute.Inputs.HealthCheckGrpcHealthCheckArgs
///         {
///             PortName = "health-check-port",
///             PortSpecification = "USE_NAMED_PORT",
///             GrpcServiceName = "testservice",
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "backend",
///         PortName = "grpc",
///         Protocol = "GRPC",
///         TimeoutSec = 10,
///         HealthChecks = defaultHealthCheck.Id,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "a description",
///         DefaultService = home.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = home.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         HeaderAction = new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHeaderActionArgs
///                         {
///                             RequestHeadersToRemoves = new[]
///                             {
///                                 "RemoveMe2",
///                             },
///                             RequestHeadersToAdds = new[]
///                             {
///                                 new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs
///                                 {
///                                     HeaderName = "AddSomethingElse",
///                                     HeaderValue = "MyOtherValue",
///                                     Replace = true,
///                                 },
///                             },
///                             ResponseHeadersToRemoves = new[]
///                             {
///                                 "RemoveMe3",
///                             },
///                             ResponseHeadersToAdds = new[]
///                             {
///                                 new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs
///                                 {
///                                     HeaderName = "AddMe",
///                                     HeaderValue = "MyValue",
///                                     Replace = false,
///                                 },
///                             },
///                         },
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 FullPathMatch = "a full path",
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "someheader",
///                                         ExactMatch = "match this exactly",
///                                         InvertMatch = true,
///                                     },
///                                 },
///                                 IgnoreCase = true,
///                                 MetadataFilters = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs
///                                     {
///                                         FilterMatchCriteria = "MATCH_ANY",
///                                         FilterLabels = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs
///                                             {
///                                                 Name = "PLANET",
///                                                 Value = "MARS",
///                                             },
///                                         },
///                                     },
///                                 },
///                                 QueryParameterMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                     {
///                                         Name = "a query parameter",
///                                         PresentMatch = true,
///                                     },
///                                 },
///                             },
///                         },
///                         UrlRedirect = new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleUrlRedirectArgs
///                         {
///                             HostRedirect = "A host",
///                             HttpsRedirect = false,
///                             PathRedirect = "some/path",
///                             RedirectResponseCode = "TEMPORARY_REDIRECT",
///                             StripQuery = true,
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Service = home.Id,
///                 Host = "hi.com",
///                 Path = "/home",
///             },
///         },
///     });
///
///     var @default = new Gcp.Compute.TargetGrpcProxy("default", new()
///     {
///         Name = "proxy",
///         UrlMap = urlmap.Id,
///         ValidateForProxyless = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("healthcheck"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			GrpcHealthCheck: &compute.HealthCheckGrpcHealthCheckArgs{
/// 				PortName:          pulumi.String("health-check-port"),
/// 				PortSpecification: pulumi.String("USE_NAMED_PORT"),
/// 				GrpcServiceName:   pulumi.String("testservice"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backend"),
/// 			PortName:            pulumi.String("grpc"),
/// 			Protocol:            pulumi.String("GRPC"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		urlmap, err := compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: home.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: home.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							HeaderAction: &compute.URLMapPathMatcherRouteRuleHeaderActionArgs{
/// 								RequestHeadersToRemoves: pulumi.StringArray{
/// 									pulumi.String("RemoveMe2"),
/// 								},
/// 								RequestHeadersToAdds: compute.URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArray{
/// 									&compute.URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs{
/// 										HeaderName:  pulumi.String("AddSomethingElse"),
/// 										HeaderValue: pulumi.String("MyOtherValue"),
/// 										Replace:     pulumi.Bool(true),
/// 									},
/// 								},
/// 								ResponseHeadersToRemoves: pulumi.StringArray{
/// 									pulumi.String("RemoveMe3"),
/// 								},
/// 								ResponseHeadersToAdds: compute.URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArray{
/// 									&compute.URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs{
/// 										HeaderName:  pulumi.String("AddMe"),
/// 										HeaderValue: pulumi.String("MyValue"),
/// 										Replace:     pulumi.Bool(false),
/// 									},
/// 								},
/// 							},
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									FullPathMatch: pulumi.String("a full path"),
/// 									HeaderMatches: compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName:  pulumi.String("someheader"),
/// 											ExactMatch:  pulumi.String("match this exactly"),
/// 											InvertMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 									IgnoreCase: pulumi.Bool(true),
/// 									MetadataFilters: compute.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs{
/// 											FilterMatchCriteria: pulumi.String("MATCH_ANY"),
/// 											FilterLabels: compute.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArray{
/// 												&compute.URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs{
/// 													Name:  pulumi.String("PLANET"),
/// 													Value: pulumi.String("MARS"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 									QueryParameterMatches: compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 											Name:         pulumi.String("a query parameter"),
/// 											PresentMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							UrlRedirect: &compute.URLMapPathMatcherRouteRuleUrlRedirectArgs{
/// 								HostRedirect:         pulumi.String("A host"),
/// 								HttpsRedirect:        pulumi.Bool(false),
/// 								PathRedirect:         pulumi.String("some/path"),
/// 								RedirectResponseCode: pulumi.String("TEMPORARY_REDIRECT"),
/// 								StripQuery:           pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Service: home.ID(),
/// 					Host:    pulumi.String("hi.com"),
/// 					Path:    pulumi.String("/home"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewTargetGrpcProxy(ctx, "default", &compute.TargetGrpcProxyArgs{
/// 			Name:                 pulumi.String("proxy"),
/// 			UrlMap:               urlmap.ID(),
/// 			ValidateForProxyless: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckGrpcHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
/// import com.pulumi.gcp.compute.TargetGrpcProxy;
/// import com.pulumi.gcp.compute.TargetGrpcProxyArgs;
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
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("healthcheck")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .grpcHealthCheck(HealthCheckGrpcHealthCheckArgs.builder()
///                 .portName("health-check-port")
///                 .portSpecification("USE_NAMED_PORT")
///                 .grpcServiceName("testservice")
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("backend")
///             .portName("grpc")
///             .protocol("GRPC")
///             .timeoutSec(10)
///             .healthChecks(defaultHealthCheck.id())
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("a description")
///             .defaultService(home.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .routeRules(URLMapPathMatcherRouteRuleArgs.builder()
///                     .priority(1)
///                     .headerAction(URLMapPathMatcherRouteRuleHeaderActionArgs.builder()
///                         .requestHeadersToRemoves("RemoveMe2")
///                         .requestHeadersToAdds(URLMapPathMatcherRouteRuleHeaderActionRequestHeadersToAddArgs.builder()
///                             .headerName("AddSomethingElse")
///                             .headerValue("MyOtherValue")
///                             .replace(true)
///                             .build())
///                         .responseHeadersToRemoves("RemoveMe3")
///                         .responseHeadersToAdds(URLMapPathMatcherRouteRuleHeaderActionResponseHeadersToAddArgs.builder()
///                             .headerName("AddMe")
///                             .headerValue("MyValue")
///                             .replace(false)
///                             .build())
///                         .build())
///                     .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                         .fullPathMatch("a full path")
///                         .headerMatches(URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                             .headerName("someheader")
///                             .exactMatch("match this exactly")
///                             .invertMatch(true)
///                             .build())
///                         .ignoreCase(true)
///                         .metadataFilters(URLMapPathMatcherRouteRuleMatchRuleMetadataFilterArgs.builder()
///                             .filterMatchCriteria("MATCH_ANY")
///                             .filterLabels(URLMapPathMatcherRouteRuleMatchRuleMetadataFilterFilterLabelArgs.builder()
///                                 .name("PLANET")
///                                 .value("MARS")
///                                 .build())
///                             .build())
///                         .queryParameterMatches(URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                             .name("a query parameter")
///                             .presentMatch(true)
///                             .build())
///                         .build())
///                     .urlRedirect(URLMapPathMatcherRouteRuleUrlRedirectArgs.builder()
///                         .hostRedirect("A host")
///                         .httpsRedirect(false)
///                         .pathRedirect("some/path")
///                         .redirectResponseCode("TEMPORARY_REDIRECT")
///                         .stripQuery(true)
///                         .build())
///                     .build())
///                 .build())
///             .tests(URLMapTestArgs.builder()
///                 .service(home.id())
///                 .host("hi.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///         var default_ = new TargetGrpcProxy("default", TargetGrpcProxyArgs.builder()
///             .name("proxy")
///             .urlMap(urlmap.id())
///             .validateForProxyless(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:TargetGrpcProxy
///     properties:
///       name: proxy
///       urlMap: ${urlmap.id}
///       validateForProxyless: true
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: a description
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           routeRules:
///             - priority: 1
///               headerAction:
///                 requestHeadersToRemoves:
///                   - RemoveMe2
///                 requestHeadersToAdds:
///                   - headerName: AddSomethingElse
///                     headerValue: MyOtherValue
///                     replace: true
///                 responseHeadersToRemoves:
///                   - RemoveMe3
///                 responseHeadersToAdds:
///                   - headerName: AddMe
///                     headerValue: MyValue
///                     replace: false
///               matchRules:
///                 - fullPathMatch: a full path
///                   headerMatches:
///                     - headerName: someheader
///                       exactMatch: match this exactly
///                       invertMatch: true
///                   ignoreCase: true
///                   metadataFilters:
///                     - filterMatchCriteria: MATCH_ANY
///                       filterLabels:
///                         - name: PLANET
///                           value: MARS
///                   queryParameterMatches:
///                     - name: a query parameter
///                       presentMatch: true
///               urlRedirect:
///                 hostRedirect: A host
///                 httpsRedirect: false
///                 pathRedirect: some/path
///                 redirectResponseCode: TEMPORARY_REDIRECT
///                 stripQuery: true
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend
///       portName: grpc
///       protocol: GRPC
///       timeoutSec: 10
///       healthChecks: ${defaultHealthCheck.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: healthcheck
///       timeoutSec: 1
///       checkIntervalSec: 1
///       grpcHealthCheck:
///         portName: health-check-port
///         portSpecification: USE_NAMED_PORT
///         grpcServiceName: testservice
/// ```
///
///
/// ## Import
///
/// TargetGrpcProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetGrpcProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetGrpcProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default projects/{{project}}/global/targetGrpcProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default {{name}}
/// ```
class TargetGrpcProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in
  /// this object. This field is used in optimistic locking. This field
  /// will be ignored when inserting a TargetGrpcProxy. An up-to-date
  /// fingerprint must be provided in order to patch/update the
  /// TargetGrpcProxy; otherwise, the request will fail with error
  /// 412 conditionNotMet. To see the latest fingerprint, make a get()
  /// request to retrieve the TargetGrpcProxy. A base64-encoded string.
  late final pulumi.Output<String> fingerprint;

  /// Name of the resource. Provided by the client when the resource
  /// is created. The name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long
  /// and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  /// URL to the UrlMap resource that defines the mapping from URL to
  /// the BackendService. The protocol field in the BackendService
  /// must be set to GRPC.
  late final pulumi.Output<String?> urlMap;

  /// If true, indicates that the BackendServices referenced by
  /// the urlMap may be accessed by gRPC applications without using
  /// a sidecar proxy. This will enable configuration checks on urlMap
  /// and its referenced BackendServices to not allow unsupported features.
  /// A gRPC application must use "xds:///" scheme in the target URI
  /// of the service it is connecting to. If false, indicates that the
  /// BackendServices referenced by the urlMap will be accessed by gRPC
  /// applications via a sidecar proxy. In this case, a gRPC application
  /// must not use "xds:///" scheme in the target URI of the service
  /// it is connecting to
  late final pulumi.Output<bool?> validateForProxyless;

  /// Creates a new [TargetGrpcProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGrpcProxy]. {@macro pulumi_compute_target_grpc_proxy_target_grpc_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGrpcProxy(
    String name, {
    TargetGrpcProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/targetGrpcProxy:TargetGrpcProxy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.urlMap = registerOutput<String?>('urlMap');
    this.validateForProxyless = registerOutput<bool?>('validateForProxyless');
  }
}
