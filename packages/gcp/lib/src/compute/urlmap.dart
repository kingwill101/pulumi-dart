import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_args.dart';
import 'urlmap_default_custom_error_response_policy.dart';
import 'urlmap_default_route_action.dart';
import 'urlmap_default_url_redirect.dart';
import 'urlmap_header_action.dart';
import 'urlmap_host_rule.dart';
import 'urlmap_path_matcher.dart';
import 'urlmap_test.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const login = new gcp.compute.BackendService("login", {
///     name: "login",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
/// });
/// const staticBucket = new gcp.storage.Bucket("static", {
///     name: "static-asset-bucket",
///     location: "US",
/// });
/// const static = new gcp.compute.BackendBucket("static", {
///     name: "static-asset-backend-bucket",
///     bucketName: staticBucket.name,
///     enableCdn: true,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "a description",
///     defaultService: static.id,
///     hostRules: [
///         {
///             hosts: ["mysite.com"],
///             pathMatcher: "mysite",
///         },
///         {
///             hosts: ["myothersite.com"],
///             pathMatcher: "otherpaths",
///         },
///     ],
///     pathMatchers: [
///         {
///             name: "mysite",
///             defaultService: static.id,
///             pathRules: [
///                 {
///                     paths: ["/home"],
///                     service: static.id,
///                 },
///                 {
///                     paths: ["/login"],
///                     service: login.id,
///                 },
///                 {
///                     paths: ["/static"],
///                     service: static.id,
///                 },
///             ],
///         },
///         {
///             name: "otherpaths",
///             defaultService: static.id,
///         },
///     ],
///     tests: [{
///         service: static.id,
///         host: "example.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// login = gcp.compute.BackendService("login",
///     name="login",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id)
/// static_bucket = gcp.storage.Bucket("static",
///     name="static-asset-bucket",
///     location="US")
/// static = gcp.compute.BackendBucket("static",
///     name="static-asset-backend-bucket",
///     bucket_name=static_bucket.name,
///     enable_cdn=True)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="a description",
///     default_service=static.id,
///     host_rules=[
///         {
///             "hosts": ["mysite.com"],
///             "path_matcher": "mysite",
///         },
///         {
///             "hosts": ["myothersite.com"],
///             "path_matcher": "otherpaths",
///         },
///     ],
///     path_matchers=[
///         {
///             "name": "mysite",
///             "default_service": static.id,
///             "path_rules": [
///                 {
///                     "paths": ["/home"],
///                     "service": static.id,
///                 },
///                 {
///                     "paths": ["/login"],
///                     "service": login.id,
///                 },
///                 {
///                     "paths": ["/static"],
///                     "service": static.id,
///                 },
///             ],
///         },
///         {
///             "name": "otherpaths",
///             "default_service": static.id,
///         },
///     ],
///     tests=[{
///         "service": static.id,
///         "host": "example.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var login = new Gcp.Compute.BackendService("login", new()
///     {
///         Name = "login",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
///     });
///
///     var staticBucket = new Gcp.Storage.Bucket("static", new()
///     {
///         Name = "static-asset-bucket",
///         Location = "US",
///     });
///
///     var @static = new Gcp.Compute.BackendBucket("static", new()
///     {
///         Name = "static-asset-backend-bucket",
///         BucketName = staticBucket.Name,
///         EnableCdn = true,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "a description",
///         DefaultService = @static.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "mysite",
///             },
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "myothersite.com",
///                 },
///                 PathMatcher = "otherpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "mysite",
///                 DefaultService = @static.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = @static.Id,
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/login",
///                         },
///                         Service = login.Id,
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/static",
///                         },
///                         Service = @static.Id,
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "otherpaths",
///                 DefaultService = @static.Id,
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Service = @static.Id,
///                 Host = "example.com",
///                 Path = "/home",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		login, err := compute.NewBackendService(ctx, "login", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("login"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		staticBucket, err := storage.NewBucket(ctx, "static", &storage.BucketArgs{
/// 			Name:     pulumi.String("static-asset-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		static, err := compute.NewBackendBucket(ctx, "static", &compute.BackendBucketArgs{
/// 			Name:       pulumi.String("static-asset-backend-bucket"),
/// 			BucketName: staticBucket.Name,
/// 			EnableCdn:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: static.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("mysite"),
/// 				},
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("myothersite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("otherpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("mysite"),
/// 					DefaultService: static.ID(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: static.ID(),
/// 						},
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/login"),
/// 							},
/// 							Service: login.ID(),
/// 						},
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/static"),
/// 							},
/// 							Service: static.ID(),
/// 						},
/// 					},
/// 				},
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("otherpaths"),
/// 					DefaultService: static.ID(),
/// 				},
/// 			},
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Service: static.ID(),
/// 					Host:    pulumi.String("example.com"),
/// 					Path:    pulumi.String("/home"),
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var default_ = new HttpHealthCheck("default", HttpHealthCheckArgs.builder()
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var login = new BackendService("login", BackendServiceArgs.builder()
///             .name("login")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
///             .build());
///
///         var staticBucket = new Bucket("staticBucket", BucketArgs.builder()
///             .name("static-asset-bucket")
///             .location("US")
///             .build());
///
///         var static_ = new BackendBucket("static", BackendBucketArgs.builder()
///             .name("static-asset-backend-bucket")
///             .bucketName(staticBucket.name())
///             .enableCdn(true)
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("a description")
///             .defaultService(static_.id())
///             .hostRules(
///                 URLMapHostRuleArgs.builder()
///                     .hosts("mysite.com")
///                     .pathMatcher("mysite")
///                     .build(),
///                 URLMapHostRuleArgs.builder()
///                     .hosts("myothersite.com")
///                     .pathMatcher("otherpaths")
///                     .build())
///             .pathMatchers(
///                 URLMapPathMatcherArgs.builder()
///                     .name("mysite")
///                     .defaultService(static_.id())
///                     .pathRules(
///                         URLMapPathMatcherPathRuleArgs.builder()
///                             .paths("/home")
///                             .service(static_.id())
///                             .build(),
///                         URLMapPathMatcherPathRuleArgs.builder()
///                             .paths("/login")
///                             .service(login.id())
///                             .build(),
///                         URLMapPathMatcherPathRuleArgs.builder()
///                             .paths("/static")
///                             .service(static_.id())
///                             .build())
///                     .build(),
///                 URLMapPathMatcherArgs.builder()
///                     .name("otherpaths")
///                     .defaultService(static_.id())
///                     .build())
///             .tests(URLMapTestArgs.builder()
///                 .service(static_.id())
///                 .host("example.com")
///                 .path("/home")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: a description
///       defaultService: ${static.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: mysite
///         - hosts:
///             - myothersite.com
///           pathMatcher: otherpaths
///       pathMatchers:
///         - name: mysite
///           defaultService: ${static.id}
///           pathRules:
///             - paths:
///                 - /home
///               service: ${static.id}
///             - paths:
///                 - /login
///               service: ${login.id}
///             - paths:
///                 - /static
///               service: ${static.id}
///         - name: otherpaths
///           defaultService: ${static.id}
///       tests:
///         - service: ${static.id}
///           host: example.com
///           path: /home
///   login:
///     type: gcp:compute:BackendService
///     properties:
///       name: login
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HttpHealthCheck
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   static:
///     type: gcp:compute:BackendBucket
///     properties:
///       name: static-asset-backend-bucket
///       bucketName: ${staticBucket.name}
///       enableCdn: true
///   staticBucket:
///     type: gcp:storage:Bucket
///     name: static
///     properties:
///       name: static-asset-bucket
///       location: US
/// ```
///
/// ### Url Map Traffic Director Route
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
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
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
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
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Traffic Director Route Partial
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
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
///             matchRules: [{
///                 prefixMatch: "/someprefix",
///                 headerMatches: [{
///                     headerName: "someheader",
///                     exactMatch: "match this exactly",
///                     invertMatch: true,
///                 }],
///             }],
///             urlRedirect: {
///                 pathRedirect: "some/path",
///                 redirectResponseCode: "TEMPORARY_REDIRECT",
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
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
///             "match_rules": [{
///                 "prefix_match": "/someprefix",
///                 "header_matches": [{
///                     "header_name": "someheader",
///                     "exact_match": "match this exactly",
///                     "invert_match": True,
///                 }],
///             }],
///             "url_redirect": {
///                 "path_redirect": "some/path",
///                 "redirect_response_code": "TEMPORARY_REDIRECT",
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
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
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/someprefix",
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "someheader",
///                                         ExactMatch = "match this exactly",
///                                         InvertMatch = true,
///                                     },
///                                 },
///                             },
///                         },
///                         UrlRedirect = new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleUrlRedirectArgs
///                         {
///                             PathRedirect = "some/path",
///                             RedirectResponseCode = "TEMPORARY_REDIRECT",
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
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
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
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/someprefix"),
/// 									HeaderMatches: compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName:  pulumi.String("someheader"),
/// 											ExactMatch:  pulumi.String("match this exactly"),
/// 											InvertMatch: pulumi.Bool(true),
/// 										},
/// 									},
/// 								},
/// 							},
/// 							UrlRedirect: &compute.URLMapPathMatcherRouteRuleUrlRedirectArgs{
/// 								PathRedirect:         pulumi.String("some/path"),
/// 								RedirectResponseCode: pulumi.String("TEMPORARY_REDIRECT"),
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
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
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
///                     .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                         .prefixMatch("/someprefix")
///                         .headerMatches(URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                             .headerName("someheader")
///                             .exactMatch("match this exactly")
///                             .invertMatch(true)
///                             .build())
///                         .build())
///                     .urlRedirect(URLMapPathMatcherRouteRuleUrlRedirectArgs.builder()
///                         .pathRedirect("some/path")
///                         .redirectResponseCode("TEMPORARY_REDIRECT")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
///               matchRules:
///                 - prefixMatch: /someprefix
///                   headerMatches:
///                     - headerName: someheader
///                       exactMatch: match this exactly
///                       invertMatch: true
///               urlRedirect:
///                 pathRedirect: some/path
///                 redirectResponseCode: TEMPORARY_REDIRECT
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Traffic Director Path
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
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
///         pathRules: [{
///             paths: ["/home"],
///             routeAction: {
///                 corsPolicy: {
///                     allowCredentials: true,
///                     allowHeaders: ["Allowed content"],
///                     allowMethods: ["GET"],
///                     allowOriginRegexes: ["abc.*"],
///                     allowOrigins: ["Allowed origin"],
///                     exposeHeaders: ["Exposed header"],
///                     maxAge: 30,
///                     disabled: false,
///                 },
///                 faultInjectionPolicy: {
///                     abort: {
///                         httpStatus: 234,
///                         percentage: 5.6,
///                     },
///                     delay: {
///                         fixedDelay: {
///                             seconds: "0",
///                             nanos: 50000,
///                         },
///                         percentage: 7.8,
///                     },
///                 },
///                 requestMirrorPolicy: {
///                     backendService: home.id,
///                 },
///                 retryPolicy: {
///                     numRetries: 4,
///                     perTryTimeout: {
///                         seconds: "30",
///                     },
///                     retryConditions: [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 timeout: {
///                     seconds: "20",
///                     nanos: 750000000,
///                 },
///                 urlRewrite: {
///                     hostRewrite: "dev.example.com",
///                     pathPrefixRewrite: "/v1/api/",
///                 },
///                 weightedBackendServices: [{
///                     backendService: home.id,
///                     weight: 400,
///                     headerAction: {
///                         requestHeadersToRemoves: ["RemoveMe"],
///                         requestHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: true,
///                         }],
///                         responseHeadersToRemoves: ["RemoveMe"],
///                         responseHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: false,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
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
///         "path_rules": [{
///             "paths": ["/home"],
///             "route_action": {
///                 "cors_policy": {
///                     "allow_credentials": True,
///                     "allow_headers": ["Allowed content"],
///                     "allow_methods": ["GET"],
///                     "allow_origin_regexes": ["abc.*"],
///                     "allow_origins": ["Allowed origin"],
///                     "expose_headers": ["Exposed header"],
///                     "max_age": 30,
///                     "disabled": False,
///                 },
///                 "fault_injection_policy": {
///                     "abort": {
///                         "http_status": 234,
///                         "percentage": 5.6,
///                     },
///                     "delay": {
///                         "fixed_delay": {
///                             "seconds": "0",
///                             "nanos": 50000,
///                         },
///                         "percentage": 7.8,
///                     },
///                 },
///                 "request_mirror_policy": {
///                     "backend_service": home.id,
///                 },
///                 "retry_policy": {
///                     "num_retries": 4,
///                     "per_try_timeout": {
///                         "seconds": "30",
///                     },
///                     "retry_conditions": [
///                         "5xx",
///                         "deadline-exceeded",
///                     ],
///                 },
///                 "timeout": {
///                     "seconds": "20",
///                     "nanos": 750000000,
///                 },
///                 "url_rewrite": {
///                     "host_rewrite": "dev.example.com",
///                     "path_prefix_rewrite": "/v1/api/",
///                 },
///                 "weighted_backend_services": [{
///                     "backend_service": home.id,
///                     "weight": 400,
///                     "header_action": {
///                         "request_headers_to_removes": ["RemoveMe"],
///                         "request_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": True,
///                         }],
///                         "response_headers_to_removes": ["RemoveMe"],
///                         "response_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": False,
///                         }],
///                     },
///                 }],
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
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
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         RouteAction = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             CorsPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs
///                             {
///                                 AllowCredentials = true,
///                                 AllowHeaders = new[]
///                                 {
///                                     "Allowed content",
///                                 },
///                                 AllowMethods = new[]
///                                 {
///                                     "GET",
///                                 },
///                                 AllowOriginRegexes = new[]
///                                 {
///                                     "abc.*",
///                                 },
///                                 AllowOrigins = new[]
///                                 {
///                                     "Allowed origin",
///                                 },
///                                 ExposeHeaders = new[]
///                                 {
///                                     "Exposed header",
///                                 },
///                                 MaxAge = 30,
///                                 Disabled = false,
///                             },
///                             FaultInjectionPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs
///                             {
///                                 Abort = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs
///                                 {
///                                     HttpStatus = 234,
///                                     Percentage = 5.6,
///                                 },
///                                 Delay = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs
///                                 {
///                                     FixedDelay = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs
///                                     {
///                                         Seconds = "0",
///                                         Nanos = 50000,
///                                     },
///                                     Percentage = 7.8,
///                                 },
///                             },
///                             RequestMirrorPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs
///                             {
///                                 BackendService = home.Id,
///                             },
///                             RetryPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionRetryPolicyArgs
///                             {
///                                 NumRetries = 4,
///                                 PerTryTimeout = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs
///                                 {
///                                     Seconds = "30",
///                                 },
///                                 RetryConditions = new[]
///                                 {
///                                     "5xx",
///                                     "deadline-exceeded",
///                                 },
///                             },
///                             Timeout = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionTimeoutArgs
///                             {
///                                 Seconds = "20",
///                                 Nanos = 750000000,
///                             },
///                             UrlRewrite = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionUrlRewriteArgs
///                             {
///                                 HostRewrite = "dev.example.com",
///                                 PathPrefixRewrite = "/v1/api/",
///                             },
///                             WeightedBackendServices = new[]
///                             {
///                                 new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs
///                                 {
///                                     BackendService = home.Id,
///                                     Weight = 400,
///                                     HeaderAction = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs
///                                     {
///                                         RequestHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         RequestHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = true,
///                                             },
///                                         },
///                                         ResponseHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         ResponseHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = false,
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
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
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
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
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							RouteAction: &compute.URLMapPathMatcherPathRuleRouteActionArgs{
/// 								CorsPolicy: &compute.URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs{
/// 									AllowCredentials: pulumi.Bool(true),
/// 									AllowHeaders: pulumi.StringArray{
/// 										pulumi.String("Allowed content"),
/// 									},
/// 									AllowMethods: pulumi.StringArray{
/// 										pulumi.String("GET"),
/// 									},
/// 									AllowOriginRegexes: pulumi.StringArray{
/// 										pulumi.String("abc.*"),
/// 									},
/// 									AllowOrigins: pulumi.StringArray{
/// 										pulumi.String("Allowed origin"),
/// 									},
/// 									ExposeHeaders: pulumi.StringArray{
/// 										pulumi.String("Exposed header"),
/// 									},
/// 									MaxAge:   pulumi.Int(30),
/// 									Disabled: pulumi.Bool(false),
/// 								},
/// 								FaultInjectionPolicy: &compute.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs{
/// 									Abort: &compute.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs{
/// 										HttpStatus: pulumi.Int(234),
/// 										Percentage: pulumi.Float64(5.6),
/// 									},
/// 									Delay: &compute.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs{
/// 										FixedDelay: &compute.URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs{
/// 											Seconds: pulumi.String("0"),
/// 											Nanos:   pulumi.Int(50000),
/// 										},
/// 										Percentage: pulumi.Float64(7.8),
/// 									},
/// 								},
/// 								RequestMirrorPolicy: &compute.URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs{
/// 									BackendService: home.ID(),
/// 								},
/// 								RetryPolicy: &compute.URLMapPathMatcherPathRuleRouteActionRetryPolicyArgs{
/// 									NumRetries: pulumi.Int(4),
/// 									PerTryTimeout: &compute.URLMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs{
/// 										Seconds: pulumi.String("30"),
/// 									},
/// 									RetryConditions: pulumi.StringArray{
/// 										pulumi.String("5xx"),
/// 										pulumi.String("deadline-exceeded"),
/// 									},
/// 								},
/// 								Timeout: &compute.URLMapPathMatcherPathRuleRouteActionTimeoutArgs{
/// 									Seconds: pulumi.String("20"),
/// 									Nanos:   pulumi.Int(750000000),
/// 								},
/// 								UrlRewrite: &compute.URLMapPathMatcherPathRuleRouteActionUrlRewriteArgs{
/// 									HostRewrite:       pulumi.String("dev.example.com"),
/// 									PathPrefixRewrite: pulumi.String("/v1/api/"),
/// 								},
/// 								WeightedBackendServices: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArray{
/// 									&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs{
/// 										BackendService: home.ID(),
/// 										Weight:         pulumi.Int(400),
/// 										HeaderAction: &compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs{
/// 											RequestHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											RequestHeadersToAdds: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 												&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(true),
/// 												},
/// 											},
/// 											ResponseHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											ResponseHeadersToAdds: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 												&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(false),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
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
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
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
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .routeAction(URLMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .corsPolicy(URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs.builder()
///                             .allowCredentials(true)
///                             .allowHeaders("Allowed content")
///                             .allowMethods("GET")
///                             .allowOriginRegexes("abc.*")
///                             .allowOrigins("Allowed origin")
///                             .exposeHeaders("Exposed header")
///                             .maxAge(30)
///                             .disabled(false)
///                             .build())
///                         .faultInjectionPolicy(URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyArgs.builder()
///                             .abort(URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbortArgs.builder()
///                                 .httpStatus(234)
///                                 .percentage(5.6)
///                                 .build())
///                             .delay(URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayArgs.builder()
///                                 .fixedDelay(URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelayArgs.builder()
///                                     .seconds("0")
///                                     .nanos(50000)
///                                     .build())
///                                 .percentage(7.8)
///                                 .build())
///                             .build())
///                         .requestMirrorPolicy(URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs.builder()
///                             .backendService(home.id())
///                             .build())
///                         .retryPolicy(URLMapPathMatcherPathRuleRouteActionRetryPolicyArgs.builder()
///                             .numRetries(4)
///                             .perTryTimeout(URLMapPathMatcherPathRuleRouteActionRetryPolicyPerTryTimeoutArgs.builder()
///                                 .seconds("30")
///                                 .build())
///                             .retryConditions(
///                                 "5xx",
///                                 "deadline-exceeded")
///                             .build())
///                         .timeout(URLMapPathMatcherPathRuleRouteActionTimeoutArgs.builder()
///                             .seconds("20")
///                             .nanos(750000000)
///                             .build())
///                         .urlRewrite(URLMapPathMatcherPathRuleRouteActionUrlRewriteArgs.builder()
///                             .hostRewrite("dev.example.com")
///                             .pathPrefixRewrite("/v1/api/")
///                             .build())
///                         .weightedBackendServices(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(home.id())
///                             .weight(400)
///                             .headerAction(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .requestHeadersToRemoves("RemoveMe")
///                                 .requestHeadersToAdds(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(true)
///                                     .build())
///                                 .responseHeadersToRemoves("RemoveMe")
///                                 .responseHeadersToAdds(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(false)
///                                     .build())
///                                 .build())
///                             .build())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
///           pathRules:
///             - paths:
///                 - /home
///               routeAction:
///                 corsPolicy:
///                   allowCredentials: true
///                   allowHeaders:
///                     - Allowed content
///                   allowMethods:
///                     - GET
///                   allowOriginRegexes:
///                     - abc.*
///                   allowOrigins:
///                     - Allowed origin
///                   exposeHeaders:
///                     - Exposed header
///                   maxAge: 30
///                   disabled: false
///                 faultInjectionPolicy:
///                   abort:
///                     httpStatus: 234
///                     percentage: 5.6
///                   delay:
///                     fixedDelay:
///                       seconds: 0
///                       nanos: 50000
///                     percentage: 7.8
///                 requestMirrorPolicy:
///                   backendService: ${home.id}
///                 retryPolicy:
///                   numRetries: 4
///                   perTryTimeout:
///                     seconds: 30
///                   retryConditions:
///                     - 5xx
///                     - deadline-exceeded
///                 timeout:
///                   seconds: 20
///                   nanos: 7.5e+08
///                 urlRewrite:
///                   hostRewrite: dev.example.com
///                   pathPrefixRewrite: /v1/api/
///                 weightedBackendServices:
///                   - backendService: ${home.id}
///                     weight: 400
///                     headerAction:
///                       requestHeadersToRemoves:
///                         - RemoveMe
///                       requestHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: true
///                       responseHeadersToRemoves:
///                         - RemoveMe
///                       responseHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: false
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Traffic Director Path Partial
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: _default.id,
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
///         pathRules: [{
///             paths: ["/home"],
///             routeAction: {
///                 corsPolicy: {
///                     allowCredentials: true,
///                     allowHeaders: ["Allowed content"],
///                     allowMethods: ["GET"],
///                     allowOriginRegexes: ["abc.*"],
///                     allowOrigins: ["Allowed origin"],
///                     exposeHeaders: ["Exposed header"],
///                     maxAge: 30,
///                     disabled: false,
///                 },
///                 weightedBackendServices: [{
///                     backendService: home.id,
///                     weight: 400,
///                     headerAction: {
///                         requestHeadersToRemoves: ["RemoveMe"],
///                         requestHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: true,
///                         }],
///                         responseHeadersToRemoves: ["RemoveMe"],
///                         responseHeadersToAdds: [{
///                             headerName: "AddMe",
///                             headerValue: "MyValue",
///                             replace: false,
///                         }],
///                     },
///                 }],
///                 maxStreamDuration: {
///                     nanos: 500000,
///                     seconds: "9",
///                 },
///             },
///         }],
///     }],
///     tests: [{
///         service: home.id,
///         host: "hi.com",
///         path: "/home",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default.id,
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
///         "path_rules": [{
///             "paths": ["/home"],
///             "route_action": {
///                 "cors_policy": {
///                     "allow_credentials": True,
///                     "allow_headers": ["Allowed content"],
///                     "allow_methods": ["GET"],
///                     "allow_origin_regexes": ["abc.*"],
///                     "allow_origins": ["Allowed origin"],
///                     "expose_headers": ["Exposed header"],
///                     "max_age": 30,
///                     "disabled": False,
///                 },
///                 "weighted_backend_services": [{
///                     "backend_service": home.id,
///                     "weight": 400,
///                     "header_action": {
///                         "request_headers_to_removes": ["RemoveMe"],
///                         "request_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": True,
///                         }],
///                         "response_headers_to_removes": ["RemoveMe"],
///                         "response_headers_to_adds": [{
///                             "header_name": "AddMe",
///                             "header_value": "MyValue",
///                             "replace": False,
///                         }],
///                     },
///                 }],
///                 "max_stream_duration": {
///                     "nanos": 500000,
///                     "seconds": "9",
///                 },
///             },
///         }],
///     }],
///     tests=[{
///         "service": home.id,
///         "host": "hi.com",
///         "path": "/home",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = @default.Id,
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
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         RouteAction = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             CorsPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs
///                             {
///                                 AllowCredentials = true,
///                                 AllowHeaders = new[]
///                                 {
///                                     "Allowed content",
///                                 },
///                                 AllowMethods = new[]
///                                 {
///                                     "GET",
///                                 },
///                                 AllowOriginRegexes = new[]
///                                 {
///                                     "abc.*",
///                                 },
///                                 AllowOrigins = new[]
///                                 {
///                                     "Allowed origin",
///                                 },
///                                 ExposeHeaders = new[]
///                                 {
///                                     "Exposed header",
///                                 },
///                                 MaxAge = 30,
///                                 Disabled = false,
///                             },
///                             WeightedBackendServices = new[]
///                             {
///                                 new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs
///                                 {
///                                     BackendService = home.Id,
///                                     Weight = 400,
///                                     HeaderAction = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs
///                                     {
///                                         RequestHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         RequestHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = true,
///                                             },
///                                         },
///                                         ResponseHeadersToRemoves = new[]
///                                         {
///                                             "RemoveMe",
///                                         },
///                                         ResponseHeadersToAdds = new[]
///                                         {
///                                             new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs
///                                             {
///                                                 HeaderName = "AddMe",
///                                                 HeaderValue = "MyValue",
///                                                 Replace = false,
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
///                             MaxStreamDuration = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionMaxStreamDurationArgs
///                             {
///                                 Nanos = 500000,
///                                 Seconds = "9",
///                             },
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
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			HealthChecks:        _default.ID(),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
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
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							RouteAction: &compute.URLMapPathMatcherPathRuleRouteActionArgs{
/// 								CorsPolicy: &compute.URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs{
/// 									AllowCredentials: pulumi.Bool(true),
/// 									AllowHeaders: pulumi.StringArray{
/// 										pulumi.String("Allowed content"),
/// 									},
/// 									AllowMethods: pulumi.StringArray{
/// 										pulumi.String("GET"),
/// 									},
/// 									AllowOriginRegexes: pulumi.StringArray{
/// 										pulumi.String("abc.*"),
/// 									},
/// 									AllowOrigins: pulumi.StringArray{
/// 										pulumi.String("Allowed origin"),
/// 									},
/// 									ExposeHeaders: pulumi.StringArray{
/// 										pulumi.String("Exposed header"),
/// 									},
/// 									MaxAge:   pulumi.Int(30),
/// 									Disabled: pulumi.Bool(false),
/// 								},
/// 								WeightedBackendServices: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArray{
/// 									&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs{
/// 										BackendService: home.ID(),
/// 										Weight:         pulumi.Int(400),
/// 										HeaderAction: &compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs{
/// 											RequestHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											RequestHeadersToAdds: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArray{
/// 												&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(true),
/// 												},
/// 											},
/// 											ResponseHeadersToRemoves: pulumi.StringArray{
/// 												pulumi.String("RemoveMe"),
/// 											},
/// 											ResponseHeadersToAdds: compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArray{
/// 												&compute.URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs{
/// 													HeaderName:  pulumi.String("AddMe"),
/// 													HeaderValue: pulumi.String("MyValue"),
/// 													Replace:     pulumi.Bool(false),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
/// 								MaxStreamDuration: &compute.URLMapPathMatcherPathRuleRouteActionMaxStreamDurationArgs{
/// 									Nanos:   pulumi.Int(500000),
/// 									Seconds: pulumi.String("9"),
/// 								},
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
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(default_.id())
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
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .routeAction(URLMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .corsPolicy(URLMapPathMatcherPathRuleRouteActionCorsPolicyArgs.builder()
///                             .allowCredentials(true)
///                             .allowHeaders("Allowed content")
///                             .allowMethods("GET")
///                             .allowOriginRegexes("abc.*")
///                             .allowOrigins("Allowed origin")
///                             .exposeHeaders("Exposed header")
///                             .maxAge(30)
///                             .disabled(false)
///                             .build())
///                         .weightedBackendServices(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceArgs.builder()
///                             .backendService(home.id())
///                             .weight(400)
///                             .headerAction(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionArgs.builder()
///                                 .requestHeadersToRemoves("RemoveMe")
///                                 .requestHeadersToAdds(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionRequestHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(true)
///                                     .build())
///                                 .responseHeadersToRemoves("RemoveMe")
///                                 .responseHeadersToAdds(URLMapPathMatcherPathRuleRouteActionWeightedBackendServiceHeaderActionResponseHeadersToAddArgs.builder()
///                                     .headerName("AddMe")
///                                     .headerValue("MyValue")
///                                     .replace(false)
///                                     .build())
///                                 .build())
///                             .build())
///                         .maxStreamDuration(URLMapPathMatcherPathRuleRouteActionMaxStreamDurationArgs.builder()
///                             .nanos(500000)
///                             .seconds("9")
///                             .build())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
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
///           pathRules:
///             - paths:
///                 - /home
///               routeAction:
///                 corsPolicy:
///                   allowCredentials: true
///                   allowHeaders:
///                     - Allowed content
///                   allowMethods:
///                     - GET
///                   allowOriginRegexes:
///                     - abc.*
///                   allowOrigins:
///                     - Allowed origin
///                   exposeHeaders:
///                     - Exposed header
///                   maxAge: 30
///                   disabled: false
///                 weightedBackendServices:
///                   - backendService: ${home.id}
///                     weight: 400
///                     headerAction:
///                       requestHeadersToRemoves:
///                         - RemoveMe
///                       requestHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: true
///                       responseHeadersToRemoves:
///                         - RemoveMe
///                       responseHeadersToAdds:
///                         - headerName: AddMe
///                           headerValue: MyValue
///                           replace: false
///                 maxStreamDuration:
///                   nanos: 500000
///                   seconds: 9
///       tests:
///         - service: ${home.id}
///           host: hi.com
///           path: /home
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${default.id}
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Header Based Routing
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "default",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const service_a = new gcp.compute.BackendService("service-a", {
///     name: "service-a",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const service_b = new gcp.compute.BackendService("service-b", {
///     name: "service-b",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "header-based routing example",
///     defaultService: _default.id,
///     hostRules: [{
///         hosts: ["*"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: _default.id,
///         routeRules: [
///             {
///                 priority: 1,
///                 service: service_a.id,
///                 matchRules: [{
///                     prefixMatch: "/",
///                     ignoreCase: true,
///                     headerMatches: [{
///                         headerName: "abtest",
///                         exactMatch: "a",
///                     }],
///                 }],
///             },
///             {
///                 priority: 2,
///                 service: service_b.id,
///                 matchRules: [{
///                     ignoreCase: true,
///                     prefixMatch: "/",
///                     headerMatches: [{
///                         headerName: "abtest",
///                         exactMatch: "b",
///                     }],
///                 }],
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="default",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// service_a = gcp.compute.BackendService("service-a",
///     name="service-a",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// service_b = gcp.compute.BackendService("service-b",
///     name="service-b",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="header-based routing example",
///     default_service=default.id,
///     host_rules=[{
///         "hosts": ["*"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default.id,
///         "route_rules": [
///             {
///                 "priority": 1,
///                 "service": service_a.id,
///                 "match_rules": [{
///                     "prefix_match": "/",
///                     "ignore_case": True,
///                     "header_matches": [{
///                         "header_name": "abtest",
///                         "exact_match": "a",
///                     }],
///                 }],
///             },
///             {
///                 "priority": 2,
///                 "service": service_b.id,
///                 "match_rules": [{
///                     "ignore_case": True,
///                     "prefix_match": "/",
///                     "header_matches": [{
///                         "header_name": "abtest",
///                         "exact_match": "b",
///                     }],
///                 }],
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "default",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var service_a = new Gcp.Compute.BackendService("service-a", new()
///     {
///         Name = "service-a",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var service_b = new Gcp.Compute.BackendService("service-b", new()
///     {
///         Name = "service-b",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "header-based routing example",
///         DefaultService = @default.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "*",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = @default.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         Service = service_a.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/",
///                                 IgnoreCase = true,
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "abtest",
///                                         ExactMatch = "a",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 2,
///                         Service = service_b.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 IgnoreCase = true,
///                                 PrefixMatch = "/",
///                                 HeaderMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs
///                                     {
///                                         HeaderName = "abtest",
///                                         ExactMatch = "b",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("default"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_a, err := compute.NewBackendService(ctx, "service-a", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("service-a"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_b, err := compute.NewBackendService(ctx, "service-b", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("service-b"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("header-based routing example"),
/// 			DefaultService: _default.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: _default.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							Service:  service_a.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/"),
/// 									IgnoreCase:  pulumi.Bool(true),
/// 									HeaderMatches: compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName: pulumi.String("abtest"),
/// 											ExactMatch: pulumi.String("a"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(2),
/// 							Service:  service_b.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									IgnoreCase:  pulumi.Bool(true),
/// 									PrefixMatch: pulumi.String("/"),
/// 									HeaderMatches: compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs{
/// 											HeaderName: pulumi.String("abtest"),
/// 											ExactMatch: pulumi.String("b"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("default")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var service_a = new BackendService("service-a", BackendServiceArgs.builder()
///             .name("service-a")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var service_b = new BackendService("service-b", BackendServiceArgs.builder()
///             .name("service-b")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("header-based routing example")
///             .defaultService(default_.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("*")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(default_.id())
///                 .routeRules(
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(1)
///                         .service(service_a.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .prefixMatch("/")
///                             .ignoreCase(true)
///                             .headerMatches(URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                                 .headerName("abtest")
///                                 .exactMatch("a")
///                                 .build())
///                             .build())
///                         .build(),
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(2)
///                         .service(service_b.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .ignoreCase(true)
///                             .prefixMatch("/")
///                             .headerMatches(URLMapPathMatcherRouteRuleMatchRuleHeaderMatchArgs.builder()
///                                 .headerName("abtest")
///                                 .exactMatch("b")
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: header-based routing example
///       defaultService: ${default.id}
///       hostRules:
///         - hosts:
///             - '*'
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${default.id}
///           routeRules:
///             - priority: 1
///               service: ${["service-a"].id}
///               matchRules:
///                 - prefixMatch: /
///                   ignoreCase: true
///                   headerMatches:
///                     - headerName: abtest
///                       exactMatch: a
///             - priority: 2
///               service: ${["service-b"].id}
///               matchRules:
///                 - ignoreCase: true
///                   prefixMatch: /
///                   headerMatches:
///                     - headerName: abtest
///                       exactMatch: b
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: default
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   service-a:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-a
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   service-b:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-b
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Url Map Parameter Based Routing
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHttpHealthCheck = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "default",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const service_a = new gcp.compute.BackendService("service-a", {
///     name: "service-a",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const service_b = new gcp.compute.BackendService("service-b", {
///     name: "service-b",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: defaultHttpHealthCheck.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "parameter-based routing example",
///     defaultService: _default.id,
///     hostRules: [{
///         hosts: ["*"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: _default.id,
///         routeRules: [
///             {
///                 priority: 1,
///                 service: service_a.id,
///                 matchRules: [{
///                     prefixMatch: "/",
///                     ignoreCase: true,
///                     queryParameterMatches: [{
///                         name: "abtest",
///                         exactMatch: "a",
///                     }],
///                 }],
///             },
///             {
///                 priority: 2,
///                 service: service_b.id,
///                 matchRules: [{
///                     ignoreCase: true,
///                     prefixMatch: "/",
///                     queryParameterMatches: [{
///                         name: "abtest",
///                         exactMatch: "b",
///                     }],
///                 }],
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_http_health_check = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// default = gcp.compute.BackendService("default",
///     name="default",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// service_a = gcp.compute.BackendService("service-a",
///     name="service-a",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// service_b = gcp.compute.BackendService("service-b",
///     name="service-b",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=default_http_health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="parameter-based routing example",
///     default_service=default.id,
///     host_rules=[{
///         "hosts": ["*"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default.id,
///         "route_rules": [
///             {
///                 "priority": 1,
///                 "service": service_a.id,
///                 "match_rules": [{
///                     "prefix_match": "/",
///                     "ignore_case": True,
///                     "query_parameter_matches": [{
///                         "name": "abtest",
///                         "exact_match": "a",
///                     }],
///                 }],
///             },
///             {
///                 "priority": 2,
///                 "service": service_b.id,
///                 "match_rules": [{
///                     "ignore_case": True,
///                     "prefix_match": "/",
///                     "query_parameter_matches": [{
///                         "name": "abtest",
///                         "exact_match": "b",
///                     }],
///                 }],
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHttpHealthCheck = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "default",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var service_a = new Gcp.Compute.BackendService("service-a", new()
///     {
///         Name = "service-a",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var service_b = new Gcp.Compute.BackendService("service-b", new()
///     {
///         Name = "service-b",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = defaultHttpHealthCheck.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "parameter-based routing example",
///         DefaultService = @default.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "*",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = @default.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         Service = service_a.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/",
///                                 IgnoreCase = true,
///                                 QueryParameterMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                     {
///                                         Name = "abtest",
///                                         ExactMatch = "a",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 2,
///                         Service = service_b.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 IgnoreCase = true,
///                                 PrefixMatch = "/",
///                                 QueryParameterMatches = new[]
///                                 {
///                                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs
///                                     {
///                                         Name = "abtest",
///                                         ExactMatch = "b",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHttpHealthCheck, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("default"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_a, err := compute.NewBackendService(ctx, "service-a", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("service-a"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_b, err := compute.NewBackendService(ctx, "service-b", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("service-b"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: defaultHttpHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("parameter-based routing example"),
/// 			DefaultService: _default.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: _default.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							Service:  service_a.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/"),
/// 									IgnoreCase:  pulumi.Bool(true),
/// 									QueryParameterMatches: compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 											Name:       pulumi.String("abtest"),
/// 											ExactMatch: pulumi.String("a"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(2),
/// 							Service:  service_b.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									IgnoreCase:  pulumi.Bool(true),
/// 									PrefixMatch: pulumi.String("/"),
/// 									QueryParameterMatches: compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArray{
/// 										&compute.URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs{
/// 											Name:       pulumi.String("abtest"),
/// 											ExactMatch: pulumi.String("b"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var defaultHttpHealthCheck = new HttpHealthCheck("defaultHttpHealthCheck", HttpHealthCheckArgs.builder()
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("default")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var service_a = new BackendService("service-a", BackendServiceArgs.builder()
///             .name("service-a")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var service_b = new BackendService("service-b", BackendServiceArgs.builder()
///             .name("service-b")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(defaultHttpHealthCheck.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("parameter-based routing example")
///             .defaultService(default_.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("*")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(default_.id())
///                 .routeRules(
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(1)
///                         .service(service_a.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .prefixMatch("/")
///                             .ignoreCase(true)
///                             .queryParameterMatches(URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                                 .name("abtest")
///                                 .exactMatch("a")
///                                 .build())
///                             .build())
///                         .build(),
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(2)
///                         .service(service_b.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .ignoreCase(true)
///                             .prefixMatch("/")
///                             .queryParameterMatches(URLMapPathMatcherRouteRuleMatchRuleQueryParameterMatchArgs.builder()
///                                 .name("abtest")
///                                 .exactMatch("b")
///                                 .build())
///                             .build())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: parameter-based routing example
///       defaultService: ${default.id}
///       hostRules:
///         - hosts:
///             - '*'
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${default.id}
///           routeRules:
///             - priority: 1
///               service: ${["service-a"].id}
///               matchRules:
///                 - prefixMatch: /
///                   ignoreCase: true
///                   queryParameterMatches:
///                     - name: abtest
///                       exactMatch: a
///             - priority: 2
///               service: ${["service-b"].id}
///               matchRules:
///                 - ignoreCase: true
///                   prefixMatch: /
///                   queryParameterMatches:
///                     - name: abtest
///                       exactMatch: b
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: default
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   service-a:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-a
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   service-b:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-b
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${defaultHttpHealthCheck.id}
///   defaultHttpHealthCheck:
///     type: gcp:compute:HttpHealthCheck
///     name: default
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
/// ```
///
/// ### Url Map Default Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.BackendService("mirror", {
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for default route action mirror percent",
///     defaultService: home.id,
///     defaultRouteAction: {
///         requestMirrorPolicy: {
///             backendService: mirror.id,
///             mirrorPercent: 50,
///         },
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.BackendService("mirror",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for default route action mirror percent",
///     default_service=home.id,
///     default_route_action={
///         "request_mirror_policy": {
///             "backend_service": mirror.id,
///             "mirror_percent": 50,
///         },
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.BackendService("mirror", new()
///     {
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for default route action mirror percent",
///         DefaultService = home.Id,
///         DefaultRouteAction = new Gcp.Compute.Inputs.URLMapDefaultRouteActionArgs
///         {
///             RequestMirrorPolicy = new Gcp.Compute.Inputs.URLMapDefaultRouteActionRequestMirrorPolicyArgs
///             {
///                 BackendService = mirror.Id,
///                 MirrorPercent = 50,
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewBackendService(ctx, "mirror", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for default route action mirror percent"),
/// 			DefaultService: home.ID(),
/// 			DefaultRouteAction: &compute.URLMapDefaultRouteActionArgs{
/// 				RequestMirrorPolicy: &compute.URLMapDefaultRouteActionRequestMirrorPolicyArgs{
/// 					BackendService: mirror.ID(),
/// 					MirrorPercent:  pulumi.Float64(50),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new BackendService("mirror", BackendServiceArgs.builder()
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for default route action mirror percent")
///             .defaultService(home.id())
///             .defaultRouteAction(URLMapDefaultRouteActionArgs.builder()
///                 .requestMirrorPolicy(URLMapDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                     .backendService(mirror.id())
///                     .mirrorPercent(50.0)
///                     .build())
///                 .build())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for default route action mirror percent
///       defaultService: ${home.id}
///       defaultRouteAction:
///         requestMirrorPolicy:
///           backendService: ${mirror.id}
///           mirrorPercent: 50
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:BackendService
///     properties:
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Path Matcher Default Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.BackendService("mirror", {
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for default route action mirror percent",
///     defaultService: home.id,
///     defaultRouteAction: {
///         requestMirrorPolicy: {
///             backendService: mirror.id,
///             mirrorPercent: 50,
///         },
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.BackendService("mirror",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for default route action mirror percent",
///     default_service=home.id,
///     default_route_action={
///         "request_mirror_policy": {
///             "backend_service": mirror.id,
///             "mirror_percent": 50,
///         },
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.BackendService("mirror", new()
///     {
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for default route action mirror percent",
///         DefaultService = home.Id,
///         DefaultRouteAction = new Gcp.Compute.Inputs.URLMapDefaultRouteActionArgs
///         {
///             RequestMirrorPolicy = new Gcp.Compute.Inputs.URLMapDefaultRouteActionRequestMirrorPolicyArgs
///             {
///                 BackendService = mirror.Id,
///                 MirrorPercent = 50,
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewBackendService(ctx, "mirror", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for default route action mirror percent"),
/// 			DefaultService: home.ID(),
/// 			DefaultRouteAction: &compute.URLMapDefaultRouteActionArgs{
/// 				RequestMirrorPolicy: &compute.URLMapDefaultRouteActionRequestMirrorPolicyArgs{
/// 					BackendService: mirror.ID(),
/// 					MirrorPercent:  pulumi.Float64(50),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultRouteActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new BackendService("mirror", BackendServiceArgs.builder()
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for default route action mirror percent")
///             .defaultService(home.id())
///             .defaultRouteAction(URLMapDefaultRouteActionArgs.builder()
///                 .requestMirrorPolicy(URLMapDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                     .backendService(mirror.id())
///                     .mirrorPercent(50.0)
///                     .build())
///                 .build())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for default route action mirror percent
///       defaultService: ${home.id}
///       defaultRouteAction:
///         requestMirrorPolicy:
///           backendService: ${mirror.id}
///           mirrorPercent: 50
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:BackendService
///     properties:
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Path Rule Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.BackendService("mirror", {
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for path matcher default route action mirror percent",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         defaultRouteAction: {
///             requestMirrorPolicy: {
///                 backendService: mirror.id,
///                 mirrorPercent: 75,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.BackendService("mirror",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for path matcher default route action mirror percent",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "default_route_action": {
///             "request_mirror_policy": {
///                 "backend_service": mirror.id,
///                 "mirror_percent": 75,
///             },
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.BackendService("mirror", new()
///     {
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for path matcher default route action mirror percent",
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
///                 DefaultRouteAction = new Gcp.Compute.Inputs.URLMapPathMatcherDefaultRouteActionArgs
///                 {
///                     RequestMirrorPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs
///                     {
///                         BackendService = mirror.Id,
///                         MirrorPercent = 75,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewBackendService(ctx, "mirror", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for path matcher default route action mirror percent"),
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
/// 					DefaultRouteAction: &compute.URLMapPathMatcherDefaultRouteActionArgs{
/// 						RequestMirrorPolicy: &compute.URLMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs{
/// 							BackendService: mirror.ID(),
/// 							MirrorPercent:  pulumi.Float64(75),
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherDefaultRouteActionArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new BackendService("mirror", BackendServiceArgs.builder()
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for path matcher default route action mirror percent")
///             .defaultService(home.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .defaultRouteAction(URLMapPathMatcherDefaultRouteActionArgs.builder()
///                     .requestMirrorPolicy(URLMapPathMatcherDefaultRouteActionRequestMirrorPolicyArgs.builder()
///                         .backendService(mirror.id())
///                         .mirrorPercent(75.0)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for path matcher default route action mirror percent
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           defaultRouteAction:
///             requestMirrorPolicy:
///               backendService: ${mirror.id}
///               mirrorPercent: 75
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:BackendService
///     properties:
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Route Rule Mirror Percent
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const home = new gcp.compute.BackendService("home", {
///     name: "home",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const mirror = new gcp.compute.BackendService("mirror", {
///     name: "mirror",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for path rule route action mirror percent",
///     defaultService: home.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: home.id,
///         pathRules: [{
///             paths: ["/home"],
///             service: home.id,
///             routeAction: {
///                 requestMirrorPolicy: {
///                     backendService: mirror.id,
///                     mirrorPercent: 25,
///                 },
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// home = gcp.compute.BackendService("home",
///     name="home",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// mirror = gcp.compute.BackendService("mirror",
///     name="mirror",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for path rule route action mirror percent",
///     default_service=home.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": home.id,
///         "path_rules": [{
///             "paths": ["/home"],
///             "service": home.id,
///             "route_action": {
///                 "request_mirror_policy": {
///                     "backend_service": mirror.id,
///                     "mirror_percent": 25,
///                 },
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var home = new Gcp.Compute.BackendService("home", new()
///     {
///         Name = "home",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var mirror = new Gcp.Compute.BackendService("mirror", new()
///     {
///         Name = "mirror",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for path rule route action mirror percent",
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
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/home",
///                         },
///                         Service = home.Id,
///                         RouteAction = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionArgs
///                         {
///                             RequestMirrorPolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs
///                             {
///                                 BackendService = mirror.Id,
///                                 MirrorPercent = 25,
///                             },
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		home, err := compute.NewBackendService(ctx, "home", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("home"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mirror, err := compute.NewBackendService(ctx, "mirror", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("mirror"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for path rule route action mirror percent"),
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
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/home"),
/// 							},
/// 							Service: home.ID(),
/// 							RouteAction: &compute.URLMapPathMatcherPathRuleRouteActionArgs{
/// 								RequestMirrorPolicy: &compute.URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs{
/// 									BackendService: mirror.ID(),
/// 									MirrorPercent:  pulumi.Float64(25),
/// 								},
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var default_ = new HealthCheck("default", HealthCheckArgs.builder()
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var home = new BackendService("home", BackendServiceArgs.builder()
///             .name("home")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var mirror = new BackendService("mirror", BackendServiceArgs.builder()
///             .name("mirror")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for path rule route action mirror percent")
///             .defaultService(home.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(home.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/home")
///                     .service(home.id())
///                     .routeAction(URLMapPathMatcherPathRuleRouteActionArgs.builder()
///                         .requestMirrorPolicy(URLMapPathMatcherPathRuleRouteActionRequestMirrorPolicyArgs.builder()
///                             .backendService(mirror.id())
///                             .mirrorPercent(25.0)
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for path rule route action mirror percent
///       defaultService: ${home.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${home.id}
///           pathRules:
///             - paths:
///                 - /home
///               service: ${home.id}
///               routeAction:
///                 requestMirrorPolicy:
///                   backendService: ${mirror.id}
///                   mirrorPercent: 25
///   home:
///     type: gcp:compute:BackendService
///     properties:
///       name: home
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   mirror:
///     type: gcp:compute:BackendService
///     properties:
///       name: mirror
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Test Headers
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const health_check = new gcp.compute.HealthCheck("health-check", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backend = new gcp.compute.BackendService("backend", {
///     name: "backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: health_check.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "URL map with test headers",
///     defaultService: backend.id,
///     tests: [
///         {
///             description: "Test with custom headers",
///             host: "example.com",
///             path: "/",
///             service: backend.id,
///             headers: [
///                 {
///                     name: "User-Agent",
///                     value: "TestBot/1.0",
///                 },
///                 {
///                     name: "X-Custom-Header",
///                     value: "test-value",
///                 },
///             ],
///         },
///         {
///             description: "Test with authorization headers",
///             host: "api.example.com",
///             path: "/v1/test",
///             service: backend.id,
///             headers: [
///                 {
///                     name: "Authorization",
///                     value: "Bearer token123",
///                 },
///                 {
///                     name: "Content-Type",
///                     value: "application/json",
///                 },
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health-check",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend = gcp.compute.BackendService("backend",
///     name="backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="URL map with test headers",
///     default_service=backend.id,
///     tests=[
///         {
///             "description": "Test with custom headers",
///             "host": "example.com",
///             "path": "/",
///             "service": backend.id,
///             "headers": [
///                 {
///                     "name": "User-Agent",
///                     "value": "TestBot/1.0",
///                 },
///                 {
///                     "name": "X-Custom-Header",
///                     "value": "test-value",
///                 },
///             ],
///         },
///         {
///             "description": "Test with authorization headers",
///             "host": "api.example.com",
///             "path": "/v1/test",
///             "service": backend.id,
///             "headers": [
///                 {
///                     "name": "Authorization",
///                     "value": "Bearer token123",
///                 },
///                 {
///                     "name": "Content-Type",
///                     "value": "application/json",
///                 },
///             ],
///         },
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
///     var health_check = new Gcp.Compute.HealthCheck("health-check", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backend = new Gcp.Compute.BackendService("backend", new()
///     {
///         Name = "backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = health_check.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "URL map with test headers",
///         DefaultService = backend.Id,
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test with custom headers",
///                 Host = "example.com",
///                 Path = "/",
///                 Service = backend.Id,
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "User-Agent",
///                         Value = "TestBot/1.0",
///                     },
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "X-Custom-Header",
///                         Value = "test-value",
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test with authorization headers",
///                 Host = "api.example.com",
///                 Path = "/v1/test",
///                 Service = backend.Id,
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "Authorization",
///                         Value = "Bearer token123",
///                     },
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "Content-Type",
///                         Value = "application/json",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		health_check, err := compute.NewHealthCheck(ctx, "health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewBackendService(ctx, "backend", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: health_check.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("URL map with test headers"),
/// 			DefaultService: backend.ID(),
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test with custom headers"),
/// 					Host:        pulumi.String("example.com"),
/// 					Path:        pulumi.String("/"),
/// 					Service:     backend.ID(),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("User-Agent"),
/// 							Value: pulumi.String("TestBot/1.0"),
/// 						},
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("X-Custom-Header"),
/// 							Value: pulumi.String("test-value"),
/// 						},
/// 					},
/// 				},
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test with authorization headers"),
/// 					Host:        pulumi.String("api.example.com"),
/// 					Path:        pulumi.String("/v1/test"),
/// 					Service:     backend.ID(),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("Authorization"),
/// 							Value: pulumi.String("Bearer token123"),
/// 						},
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("Content-Type"),
/// 							Value: pulumi.String("application/json"),
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var health_check = new HealthCheck("health-check", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backend = new BackendService("backend", BackendServiceArgs.builder()
///             .name("backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(health_check.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("URL map with test headers")
///             .defaultService(backend.id())
///             .tests(
///                 URLMapTestArgs.builder()
///                     .description("Test with custom headers")
///                     .host("example.com")
///                     .path("/")
///                     .service(backend.id())
///                     .headers(
///                         URLMapTestHeaderArgs.builder()
///                             .name("User-Agent")
///                             .value("TestBot/1.0")
///                             .build(),
///                         URLMapTestHeaderArgs.builder()
///                             .name("X-Custom-Header")
///                             .value("test-value")
///                             .build())
///                     .build(),
///                 URLMapTestArgs.builder()
///                     .description("Test with authorization headers")
///                     .host("api.example.com")
///                     .path("/v1/test")
///                     .service(backend.id())
///                     .headers(
///                         URLMapTestHeaderArgs.builder()
///                             .name("Authorization")
///                             .value("Bearer token123")
///                             .build(),
///                         URLMapTestHeaderArgs.builder()
///                             .name("Content-Type")
///                             .value("application/json")
///                             .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   backend:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${["health-check"].id}
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: URL map with test headers
///       defaultService: ${backend.id}
///       tests:
///         - description: Test with custom headers
///           host: example.com
///           path: /
///           service: ${backend.id}
///           headers:
///             - name: User-Agent
///               value: TestBot/1.0
///             - name: X-Custom-Header
///               value: test-value
///         - description: Test with authorization headers
///           host: api.example.com
///           path: /v1/test
///           service: ${backend.id}
///           headers:
///             - name: Authorization
///               value: Bearer token123
///             - name: Content-Type
///               value: application/json
/// ```
///
/// ### Url Map Test Expected Output Url
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const health_check = new gcp.compute.HealthCheck("health-check", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backend = new gcp.compute.BackendService("backend", {
///     name: "backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: health_check.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "URL map with expected output URL tests",
///     defaultService: backend.id,
///     tests: [
///         {
///             description: "Test with expected output URL",
///             host: "example.com",
///             path: "/",
///             service: backend.id,
///             headers: [{
///                 name: "User-Agent",
///                 value: "TestBot/1.0",
///             }],
///             expectedOutputUrl: "http://example.com/",
///         },
///         {
///             description: "Test API routing with expected output URL",
///             host: "api.example.com",
///             path: "/v1/users",
///             service: backend.id,
///             headers: [{
///                 name: "Authorization",
///                 value: "Bearer token123",
///             }],
///             expectedOutputUrl: "http://api.example.com/v1/users",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health-check",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend = gcp.compute.BackendService("backend",
///     name="backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="URL map with expected output URL tests",
///     default_service=backend.id,
///     tests=[
///         {
///             "description": "Test with expected output URL",
///             "host": "example.com",
///             "path": "/",
///             "service": backend.id,
///             "headers": [{
///                 "name": "User-Agent",
///                 "value": "TestBot/1.0",
///             }],
///             "expected_output_url": "http://example.com/",
///         },
///         {
///             "description": "Test API routing with expected output URL",
///             "host": "api.example.com",
///             "path": "/v1/users",
///             "service": backend.id,
///             "headers": [{
///                 "name": "Authorization",
///                 "value": "Bearer token123",
///             }],
///             "expected_output_url": "http://api.example.com/v1/users",
///         },
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
///     var health_check = new Gcp.Compute.HealthCheck("health-check", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backend = new Gcp.Compute.BackendService("backend", new()
///     {
///         Name = "backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = health_check.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "URL map with expected output URL tests",
///         DefaultService = backend.Id,
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test with expected output URL",
///                 Host = "example.com",
///                 Path = "/",
///                 Service = backend.Id,
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "User-Agent",
///                         Value = "TestBot/1.0",
///                     },
///                 },
///                 ExpectedOutputUrl = "http://example.com/",
///             },
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test API routing with expected output URL",
///                 Host = "api.example.com",
///                 Path = "/v1/users",
///                 Service = backend.Id,
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "Authorization",
///                         Value = "Bearer token123",
///                     },
///                 },
///                 ExpectedOutputUrl = "http://api.example.com/v1/users",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		health_check, err := compute.NewHealthCheck(ctx, "health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewBackendService(ctx, "backend", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: health_check.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("URL map with expected output URL tests"),
/// 			DefaultService: backend.ID(),
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test with expected output URL"),
/// 					Host:        pulumi.String("example.com"),
/// 					Path:        pulumi.String("/"),
/// 					Service:     backend.ID(),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("User-Agent"),
/// 							Value: pulumi.String("TestBot/1.0"),
/// 						},
/// 					},
/// 					ExpectedOutputUrl: pulumi.String("http://example.com/"),
/// 				},
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test API routing with expected output URL"),
/// 					Host:        pulumi.String("api.example.com"),
/// 					Path:        pulumi.String("/v1/users"),
/// 					Service:     backend.ID(),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("Authorization"),
/// 							Value: pulumi.String("Bearer token123"),
/// 						},
/// 					},
/// 					ExpectedOutputUrl: pulumi.String("http://api.example.com/v1/users"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var health_check = new HealthCheck("health-check", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backend = new BackendService("backend", BackendServiceArgs.builder()
///             .name("backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(health_check.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("URL map with expected output URL tests")
///             .defaultService(backend.id())
///             .tests(
///                 URLMapTestArgs.builder()
///                     .description("Test with expected output URL")
///                     .host("example.com")
///                     .path("/")
///                     .service(backend.id())
///                     .headers(URLMapTestHeaderArgs.builder()
///                         .name("User-Agent")
///                         .value("TestBot/1.0")
///                         .build())
///                     .expectedOutputUrl("http://example.com/")
///                     .build(),
///                 URLMapTestArgs.builder()
///                     .description("Test API routing with expected output URL")
///                     .host("api.example.com")
///                     .path("/v1/users")
///                     .service(backend.id())
///                     .headers(URLMapTestHeaderArgs.builder()
///                         .name("Authorization")
///                         .value("Bearer token123")
///                         .build())
///                     .expectedOutputUrl("http://api.example.com/v1/users")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   backend:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${["health-check"].id}
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: URL map with expected output URL tests
///       defaultService: ${backend.id}
///       tests:
///         - description: Test with expected output URL
///           host: example.com
///           path: /
///           service: ${backend.id}
///           headers:
///             - name: User-Agent
///               value: TestBot/1.0
///           expectedOutputUrl: http://example.com/
///         - description: Test API routing with expected output URL
///           host: api.example.com
///           path: /v1/users
///           service: ${backend.id}
///           headers:
///             - name: Authorization
///               value: Bearer token123
///           expectedOutputUrl: http://api.example.com/v1/users
/// ```
///
/// ### Url Map Test Redirect Response Code
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const health_check = new gcp.compute.HealthCheck("health-check", {
///     name: "health-check",
///     timeoutSec: 1,
///     checkIntervalSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backend = new gcp.compute.BackendService("backend", {
///     name: "backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     healthChecks: health_check.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "URL map with redirect response code tests",
///     defaultService: backend.id,
///     hostRules: [{
///         hosts: ["example.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: backend.id,
///         pathRules: [{
///             paths: ["/redirect/*"],
///             urlRedirect: {
///                 hostRedirect: "newsite.com",
///                 pathRedirect: "/new-path/",
///                 httpsRedirect: true,
///                 redirectResponseCode: "MOVED_PERMANENTLY_DEFAULT",
///                 stripQuery: false,
///             },
///         }],
///     }],
///     tests: [
///         {
///             description: "Test redirect with expected response code",
///             host: "example.com",
///             path: "/redirect/old-page",
///             headers: [{
///                 name: "Referer",
///                 value: "https://oldsite.com",
///             }],
///             expectedOutputUrl: "https://newsite.com/new-path/",
///             expectedRedirectResponseCode: 301,
///         },
///         {
///             description: "Test another redirect scenario",
///             host: "example.com",
///             path: "/redirect/another-page",
///             headers: [{
///                 name: "User-Agent",
///                 value: "TestBot/1.0",
///             }],
///             expectedOutputUrl: "https://newsite.com/new-path/",
///             expectedRedirectResponseCode: 301,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// health_check = gcp.compute.HealthCheck("health-check",
///     name="health-check",
///     timeout_sec=1,
///     check_interval_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend = gcp.compute.BackendService("backend",
///     name="backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     health_checks=health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="URL map with redirect response code tests",
///     default_service=backend.id,
///     host_rules=[{
///         "hosts": ["example.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": backend.id,
///         "path_rules": [{
///             "paths": ["/redirect/*"],
///             "url_redirect": {
///                 "host_redirect": "newsite.com",
///                 "path_redirect": "/new-path/",
///                 "https_redirect": True,
///                 "redirect_response_code": "MOVED_PERMANENTLY_DEFAULT",
///                 "strip_query": False,
///             },
///         }],
///     }],
///     tests=[
///         {
///             "description": "Test redirect with expected response code",
///             "host": "example.com",
///             "path": "/redirect/old-page",
///             "headers": [{
///                 "name": "Referer",
///                 "value": "https://oldsite.com",
///             }],
///             "expected_output_url": "https://newsite.com/new-path/",
///             "expected_redirect_response_code": 301,
///         },
///         {
///             "description": "Test another redirect scenario",
///             "host": "example.com",
///             "path": "/redirect/another-page",
///             "headers": [{
///                 "name": "User-Agent",
///                 "value": "TestBot/1.0",
///             }],
///             "expected_output_url": "https://newsite.com/new-path/",
///             "expected_redirect_response_code": 301,
///         },
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
///     var health_check = new Gcp.Compute.HealthCheck("health-check", new()
///     {
///         Name = "health-check",
///         TimeoutSec = 1,
///         CheckIntervalSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backend = new Gcp.Compute.BackendService("backend", new()
///     {
///         Name = "backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         HealthChecks = health_check.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "URL map with redirect response code tests",
///         DefaultService = backend.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "example.com",
///                 },
///                 PathMatcher = "allpaths",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "allpaths",
///                 DefaultService = backend.Id,
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/redirect/*",
///                         },
///                         UrlRedirect = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleUrlRedirectArgs
///                         {
///                             HostRedirect = "newsite.com",
///                             PathRedirect = "/new-path/",
///                             HttpsRedirect = true,
///                             RedirectResponseCode = "MOVED_PERMANENTLY_DEFAULT",
///                             StripQuery = false,
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test redirect with expected response code",
///                 Host = "example.com",
///                 Path = "/redirect/old-page",
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "Referer",
///                         Value = "https://oldsite.com",
///                     },
///                 },
///                 ExpectedOutputUrl = "https://newsite.com/new-path/",
///                 ExpectedRedirectResponseCode = 301,
///             },
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Description = "Test another redirect scenario",
///                 Host = "example.com",
///                 Path = "/redirect/another-page",
///                 Headers = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapTestHeaderArgs
///                     {
///                         Name = "User-Agent",
///                         Value = "TestBot/1.0",
///                     },
///                 },
///                 ExpectedOutputUrl = "https://newsite.com/new-path/",
///                 ExpectedRedirectResponseCode = 301,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		health_check, err := compute.NewHealthCheck(ctx, "health-check", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewBackendService(ctx, "backend", &compute.BackendServiceArgs{
/// 			Name:         pulumi.String("backend"),
/// 			PortName:     pulumi.String("http"),
/// 			Protocol:     pulumi.String("HTTP"),
/// 			TimeoutSec:   pulumi.Int(10),
/// 			HealthChecks: health_check.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("URL map with redirect response code tests"),
/// 			DefaultService: backend.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("example.com"),
/// 					},
/// 					PathMatcher: pulumi.String("allpaths"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("allpaths"),
/// 					DefaultService: backend.ID(),
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/redirect/*"),
/// 							},
/// 							UrlRedirect: &compute.URLMapPathMatcherPathRuleUrlRedirectArgs{
/// 								HostRedirect:         pulumi.String("newsite.com"),
/// 								PathRedirect:         pulumi.String("/new-path/"),
/// 								HttpsRedirect:        pulumi.Bool(true),
/// 								RedirectResponseCode: pulumi.String("MOVED_PERMANENTLY_DEFAULT"),
/// 								StripQuery:           pulumi.Bool(false),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test redirect with expected response code"),
/// 					Host:        pulumi.String("example.com"),
/// 					Path:        pulumi.String("/redirect/old-page"),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("Referer"),
/// 							Value: pulumi.String("https://oldsite.com"),
/// 						},
/// 					},
/// 					ExpectedOutputUrl:            pulumi.String("https://newsite.com/new-path/"),
/// 					ExpectedRedirectResponseCode: pulumi.Int(301),
/// 				},
/// 				&compute.URLMapTestArgs{
/// 					Description: pulumi.String("Test another redirect scenario"),
/// 					Host:        pulumi.String("example.com"),
/// 					Path:        pulumi.String("/redirect/another-page"),
/// 					Headers: compute.URLMapTestHeaderArray{
/// 						&compute.URLMapTestHeaderArgs{
/// 							Name:  pulumi.String("User-Agent"),
/// 							Value: pulumi.String("TestBot/1.0"),
/// 						},
/// 					},
/// 					ExpectedOutputUrl:            pulumi.String("https://newsite.com/new-path/"),
/// 					ExpectedRedirectResponseCode: pulumi.Int(301),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
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
///         var health_check = new HealthCheck("health-check", HealthCheckArgs.builder()
///             .name("health-check")
///             .timeoutSec(1)
///             .checkIntervalSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backend = new BackendService("backend", BackendServiceArgs.builder()
///             .name("backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .healthChecks(health_check.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("URL map with redirect response code tests")
///             .defaultService(backend.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("example.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(backend.id())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/redirect/*")
///                     .urlRedirect(URLMapPathMatcherPathRuleUrlRedirectArgs.builder()
///                         .hostRedirect("newsite.com")
///                         .pathRedirect("/new-path/")
///                         .httpsRedirect(true)
///                         .redirectResponseCode("MOVED_PERMANENTLY_DEFAULT")
///                         .stripQuery(false)
///                         .build())
///                     .build())
///                 .build())
///             .tests(
///                 URLMapTestArgs.builder()
///                     .description("Test redirect with expected response code")
///                     .host("example.com")
///                     .path("/redirect/old-page")
///                     .headers(URLMapTestHeaderArgs.builder()
///                         .name("Referer")
///                         .value("https://oldsite.com")
///                         .build())
///                     .expectedOutputUrl("https://newsite.com/new-path/")
///                     .expectedRedirectResponseCode(301)
///                     .build(),
///                 URLMapTestArgs.builder()
///                     .description("Test another redirect scenario")
///                     .host("example.com")
///                     .path("/redirect/another-page")
///                     .headers(URLMapTestHeaderArgs.builder()
///                         .name("User-Agent")
///                         .value("TestBot/1.0")
///                         .build())
///                     .expectedOutputUrl("https://newsite.com/new-path/")
///                     .expectedRedirectResponseCode(301)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   health-check:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: health-check
///       timeoutSec: 1
///       checkIntervalSec: 1
///       tcpHealthCheck:
///         port: '80'
///   backend:
///     type: gcp:compute:BackendService
///     properties:
///       name: backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       healthChecks: ${["health-check"].id}
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: URL map with redirect response code tests
///       defaultService: ${backend.id}
///       hostRules:
///         - hosts:
///             - example.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${backend.id}
///           pathRules:
///             - paths:
///                 - /redirect/*
///               urlRedirect:
///                 hostRedirect: newsite.com
///                 pathRedirect: /new-path/
///                 httpsRedirect: true
///                 redirectResponseCode: MOVED_PERMANENTLY_DEFAULT
///                 stripQuery: false
///       tests:
///         - description: Test redirect with expected response code
///           host: example.com
///           path: /redirect/old-page
///           headers:
///             - name: Referer
///               value: https://oldsite.com
///           expectedOutputUrl: https://newsite.com/new-path/
///           expectedRedirectResponseCode: 301
///         - description: Test another redirect scenario
///           host: example.com
///           path: /redirect/another-page
///           headers:
///             - name: User-Agent
///               value: TestBot/1.0
///           expectedOutputUrl: https://newsite.com/new-path/
///           expectedRedirectResponseCode: 301
/// ```
///
/// ### Url Map Path Template Match
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const cart_backend = new gcp.compute.BackendService("cart-backend", {
///     name: "cart-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const user_backend = new gcp.compute.BackendService("user-backend", {
///     name: "user-service",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const staticBucket = new gcp.storage.Bucket("static", {
///     name: "static-asset-bucket",
///     location: "US",
/// });
/// const static = new gcp.compute.BackendBucket("static", {
///     name: "static-asset-backend-bucket",
///     bucketName: staticBucket.name,
///     enableCdn: true,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "a description",
///     defaultService: static.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "mysite",
///     }],
///     pathMatchers: [{
///         name: "mysite",
///         defaultService: static.id,
///         routeRules: [
///             {
///                 matchRules: [{
///                     pathTemplateMatch: "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                 }],
///                 service: cart_backend.id,
///                 priority: 1,
///                 routeAction: {
///                     urlRewrite: {
///                         pathTemplateRewrite: "/{username}-{cartid}/",
///                     },
///                 },
///             },
///             {
///                 matchRules: [{
///                     pathTemplateMatch: "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                 }],
///                 service: user_backend.id,
///                 priority: 2,
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// cart_backend = gcp.compute.BackendService("cart-backend",
///     name="cart-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// user_backend = gcp.compute.BackendService("user-backend",
///     name="user-service",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// static_bucket = gcp.storage.Bucket("static",
///     name="static-asset-bucket",
///     location="US")
/// static = gcp.compute.BackendBucket("static",
///     name="static-asset-backend-bucket",
///     bucket_name=static_bucket.name,
///     enable_cdn=True)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="a description",
///     default_service=static.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "mysite",
///     }],
///     path_matchers=[{
///         "name": "mysite",
///         "default_service": static.id,
///         "route_rules": [
///             {
///                 "match_rules": [{
///                     "path_template_match": "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                 }],
///                 "service": cart_backend.id,
///                 "priority": 1,
///                 "route_action": {
///                     "url_rewrite": {
///                         "path_template_rewrite": "/{username}-{cartid}/",
///                     },
///                 },
///             },
///             {
///                 "match_rules": [{
///                     "path_template_match": "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                 }],
///                 "service": user_backend.id,
///                 "priority": 2,
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var cart_backend = new Gcp.Compute.BackendService("cart-backend", new()
///     {
///         Name = "cart-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var user_backend = new Gcp.Compute.BackendService("user-backend", new()
///     {
///         Name = "user-service",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var staticBucket = new Gcp.Storage.Bucket("static", new()
///     {
///         Name = "static-asset-bucket",
///         Location = "US",
///     });
///
///     var @static = new Gcp.Compute.BackendBucket("static", new()
///     {
///         Name = "static-asset-backend-bucket",
///         BucketName = staticBucket.Name,
///         EnableCdn = true,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "a description",
///         DefaultService = @static.Id,
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "mysite",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "mysite",
///                 DefaultService = @static.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PathTemplateMatch = "/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}",
///                             },
///                         },
///                         Service = cart_backend.Id,
///                         Priority = 1,
///                         RouteAction = new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleRouteActionArgs
///                         {
///                             UrlRewrite = new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleRouteActionUrlRewriteArgs
///                             {
///                                 PathTemplateRewrite = "/{username}-{cartid}/",
///                             },
///                         },
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PathTemplateMatch = "/xyzwebservices/v2/xyz/users/*/accountinfo/*",
///                             },
///                         },
///                         Service = user_backend.Id,
///                         Priority = 2,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cart_backend, err := compute.NewBackendService(ctx, "cart-backend", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("cart-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user_backend, err := compute.NewBackendService(ctx, "user-backend", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("user-service"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		staticBucket, err := storage.NewBucket(ctx, "static", &storage.BucketArgs{
/// 			Name:     pulumi.String("static-asset-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		static, err := compute.NewBackendBucket(ctx, "static", &compute.BackendBucketArgs{
/// 			Name:       pulumi.String("static-asset-backend-bucket"),
/// 			BucketName: staticBucket.Name,
/// 			EnableCdn:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: static.ID(),
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("mysite"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("mysite"),
/// 					DefaultService: static.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PathTemplateMatch: pulumi.String("/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}"),
/// 								},
/// 							},
/// 							Service:  cart_backend.ID(),
/// 							Priority: pulumi.Int(1),
/// 							RouteAction: &compute.URLMapPathMatcherRouteRuleRouteActionArgs{
/// 								UrlRewrite: &compute.URLMapPathMatcherRouteRuleRouteActionUrlRewriteArgs{
/// 									PathTemplateRewrite: pulumi.String("/{username}-{cartid}/"),
/// 								},
/// 							},
/// 						},
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PathTemplateMatch: pulumi.String("/xyzwebservices/v2/xyz/users/*/accountinfo/*"),
/// 								},
/// 							},
/// 							Service:  user_backend.ID(),
/// 							Priority: pulumi.Int(2),
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
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
///         var default_ = new HttpHealthCheck("default", HttpHealthCheckArgs.builder()
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var cart_backend = new BackendService("cart-backend", BackendServiceArgs.builder()
///             .name("cart-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var user_backend = new BackendService("user-backend", BackendServiceArgs.builder()
///             .name("user-service")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var staticBucket = new Bucket("staticBucket", BucketArgs.builder()
///             .name("static-asset-bucket")
///             .location("US")
///             .build());
///
///         var static_ = new BackendBucket("static", BackendBucketArgs.builder()
///             .name("static-asset-backend-bucket")
///             .bucketName(staticBucket.name())
///             .enableCdn(true)
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("a description")
///             .defaultService(static_.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("mysite")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("mysite")
///                 .defaultService(static_.id())
///                 .routeRules(
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .pathTemplateMatch("/xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}")
///                             .build())
///                         .service(cart_backend.id())
///                         .priority(1)
///                         .routeAction(URLMapPathMatcherRouteRuleRouteActionArgs.builder()
///                             .urlRewrite(URLMapPathMatcherRouteRuleRouteActionUrlRewriteArgs.builder()
///                                 .pathTemplateRewrite("/{username}-{cartid}/")
///                                 .build())
///                             .build())
///                         .build(),
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .pathTemplateMatch("/xyzwebservices/v2/xyz/users/*/accountinfo/*")
///                             .build())
///                         .service(user_backend.id())
///                         .priority(2)
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: a description
///       defaultService: ${static.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: mysite
///       pathMatchers:
///         - name: mysite
///           defaultService: ${static.id}
///           routeRules:
///             - matchRules:
///                 - pathTemplateMatch: /xyzwebservices/v2/xyz/users/{username=*}/carts/{cartid=**}
///               service: ${["cart-backend"].id}
///               priority: 1
///               routeAction:
///                 urlRewrite:
///                   pathTemplateRewrite: /{username}-{cartid}/
///             - matchRules:
///                 - pathTemplateMatch: /xyzwebservices/v2/xyz/users/*/accountinfo/*
///               service: ${["user-backend"].id}
///               priority: 2
///   cart-backend:
///     type: gcp:compute:BackendService
///     properties:
///       name: cart-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   user-backend:
///     type: gcp:compute:BackendService
///     properties:
///       name: user-service
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HttpHealthCheck
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   static:
///     type: gcp:compute:BackendBucket
///     properties:
///       name: static-asset-backend-bucket
///       bucketName: ${staticBucket.name}
///       enableCdn: true
///   staticBucket:
///     type: gcp:storage:Bucket
///     name: static
///     properties:
///       name: static-asset-bucket
///       location: US
/// ```
///
/// ### Url Map Custom Error Response Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.HttpHealthCheck("default", {
///     name: "health-check",
///     requestPath: "/",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
/// });
/// const example = new gcp.compute.BackendService("example", {
///     name: "login",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     healthChecks: _default.id,
/// });
/// const errorBucket = new gcp.storage.Bucket("error", {
///     name: "static-asset-bucket",
///     location: "US",
/// });
/// const error = new gcp.compute.BackendBucket("error", {
///     name: "error-backend-bucket",
///     bucketName: errorBucket.name,
///     enableCdn: true,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "a description",
///     defaultService: example.id,
///     defaultCustomErrorResponsePolicy: {
///         errorResponseRules: [{
///             matchResponseCodes: ["5xx"],
///             path: "/internal_error.html",
///             overrideResponseCode: 502,
///         }],
///         errorService: error.id,
///     },
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "mysite",
///     }],
///     pathMatchers: [{
///         name: "mysite",
///         defaultService: example.id,
///         defaultCustomErrorResponsePolicy: {
///             errorResponseRules: [
///                 {
///                     matchResponseCodes: [
///                         "4xx",
///                         "5xx",
///                     ],
///                     path: "/login_error.html",
///                     overrideResponseCode: 404,
///                 },
///                 {
///                     matchResponseCodes: ["503"],
///                     path: "/bad_gateway.html",
///                     overrideResponseCode: 502,
///                 },
///             ],
///             errorService: error.id,
///         },
///         pathRules: [{
///             paths: ["/private/*"],
///             service: example.id,
///             customErrorResponsePolicy: {
///                 errorResponseRules: [{
///                     matchResponseCodes: ["4xx"],
///                     path: "/login.html",
///                     overrideResponseCode: 401,
///                 }],
///                 errorService: error.id,
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.HttpHealthCheck("default",
///     name="health-check",
///     request_path="/",
///     check_interval_sec=1,
///     timeout_sec=1)
/// example = gcp.compute.BackendService("example",
///     name="login",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     health_checks=default.id)
/// error_bucket = gcp.storage.Bucket("error",
///     name="static-asset-bucket",
///     location="US")
/// error = gcp.compute.BackendBucket("error",
///     name="error-backend-bucket",
///     bucket_name=error_bucket.name,
///     enable_cdn=True)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="a description",
///     default_service=example.id,
///     default_custom_error_response_policy={
///         "error_response_rules": [{
///             "match_response_codes": ["5xx"],
///             "path": "/internal_error.html",
///             "override_response_code": 502,
///         }],
///         "error_service": error.id,
///     },
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "mysite",
///     }],
///     path_matchers=[{
///         "name": "mysite",
///         "default_service": example.id,
///         "default_custom_error_response_policy": {
///             "error_response_rules": [
///                 {
///                     "match_response_codes": [
///                         "4xx",
///                         "5xx",
///                     ],
///                     "path": "/login_error.html",
///                     "override_response_code": 404,
///                 },
///                 {
///                     "match_response_codes": ["503"],
///                     "path": "/bad_gateway.html",
///                     "override_response_code": 502,
///                 },
///             ],
///             "error_service": error.id,
///         },
///         "path_rules": [{
///             "paths": ["/private/*"],
///             "service": example.id,
///             "custom_error_response_policy": {
///                 "error_response_rules": [{
///                     "match_response_codes": ["4xx"],
///                     "path": "/login.html",
///                     "override_response_code": 401,
///                 }],
///                 "error_service": error.id,
///             },
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.HttpHealthCheck("default", new()
///     {
///         Name = "health-check",
///         RequestPath = "/",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///     });
///
///     var example = new Gcp.Compute.BackendService("example", new()
///     {
///         Name = "login",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         HealthChecks = @default.Id,
///     });
///
///     var errorBucket = new Gcp.Storage.Bucket("error", new()
///     {
///         Name = "static-asset-bucket",
///         Location = "US",
///     });
///
///     var error = new Gcp.Compute.BackendBucket("error", new()
///     {
///         Name = "error-backend-bucket",
///         BucketName = errorBucket.Name,
///         EnableCdn = true,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "a description",
///         DefaultService = example.Id,
///         DefaultCustomErrorResponsePolicy = new Gcp.Compute.Inputs.URLMapDefaultCustomErrorResponsePolicyArgs
///         {
///             ErrorResponseRules = new[]
///             {
///                 new Gcp.Compute.Inputs.URLMapDefaultCustomErrorResponsePolicyErrorResponseRuleArgs
///                 {
///                     MatchResponseCodes = new[]
///                     {
///                         "5xx",
///                     },
///                     Path = "/internal_error.html",
///                     OverrideResponseCode = 502,
///                 },
///             },
///             ErrorService = error.Id,
///         },
///         HostRules = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapHostRuleArgs
///             {
///                 Hosts = new[]
///                 {
///                     "mysite.com",
///                 },
///                 PathMatcher = "mysite",
///             },
///         },
///         PathMatchers = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapPathMatcherArgs
///             {
///                 Name = "mysite",
///                 DefaultService = example.Id,
///                 DefaultCustomErrorResponsePolicy = new Gcp.Compute.Inputs.URLMapPathMatcherDefaultCustomErrorResponsePolicyArgs
///                 {
///                     ErrorResponseRules = new[]
///                     {
///                         new Gcp.Compute.Inputs.URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs
///                         {
///                             MatchResponseCodes = new[]
///                             {
///                                 "4xx",
///                                 "5xx",
///                             },
///                             Path = "/login_error.html",
///                             OverrideResponseCode = 404,
///                         },
///                         new Gcp.Compute.Inputs.URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs
///                         {
///                             MatchResponseCodes = new[]
///                             {
///                                 "503",
///                             },
///                             Path = "/bad_gateway.html",
///                             OverrideResponseCode = 502,
///                         },
///                     },
///                     ErrorService = error.Id,
///                 },
///                 PathRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleArgs
///                     {
///                         Paths = new[]
///                         {
///                             "/private/*",
///                         },
///                         Service = example.Id,
///                         CustomErrorResponsePolicy = new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleCustomErrorResponsePolicyArgs
///                         {
///                             ErrorResponseRules = new[]
///                             {
///                                 new Gcp.Compute.Inputs.URLMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRuleArgs
///                                 {
///                                     MatchResponseCodes = new[]
///                                     {
///                                         "4xx",
///                                     },
///                                     Path = "/login.html",
///                                     OverrideResponseCode = 401,
///                                 },
///                             },
///                             ErrorService = error.Id,
///                         },
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewHttpHealthCheck(ctx, "default", &compute.HttpHealthCheckArgs{
/// 			Name:             pulumi.String("health-check"),
/// 			RequestPath:      pulumi.String("/"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := compute.NewBackendService(ctx, "example", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("login"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			HealthChecks:        _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		errorBucket, err := storage.NewBucket(ctx, "error", &storage.BucketArgs{
/// 			Name:     pulumi.String("static-asset-bucket"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		error, err := compute.NewBackendBucket(ctx, "error", &compute.BackendBucketArgs{
/// 			Name:       pulumi.String("error-backend-bucket"),
/// 			BucketName: errorBucket.Name,
/// 			EnableCdn:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("a description"),
/// 			DefaultService: example.ID(),
/// 			DefaultCustomErrorResponsePolicy: &compute.URLMapDefaultCustomErrorResponsePolicyArgs{
/// 				ErrorResponseRules: compute.URLMapDefaultCustomErrorResponsePolicyErrorResponseRuleArray{
/// 					&compute.URLMapDefaultCustomErrorResponsePolicyErrorResponseRuleArgs{
/// 						MatchResponseCodes: pulumi.StringArray{
/// 							pulumi.String("5xx"),
/// 						},
/// 						Path:                 pulumi.String("/internal_error.html"),
/// 						OverrideResponseCode: pulumi.Int(502),
/// 					},
/// 				},
/// 				ErrorService: error.ID(),
/// 			},
/// 			HostRules: compute.URLMapHostRuleArray{
/// 				&compute.URLMapHostRuleArgs{
/// 					Hosts: pulumi.StringArray{
/// 						pulumi.String("mysite.com"),
/// 					},
/// 					PathMatcher: pulumi.String("mysite"),
/// 				},
/// 			},
/// 			PathMatchers: compute.URLMapPathMatcherArray{
/// 				&compute.URLMapPathMatcherArgs{
/// 					Name:           pulumi.String("mysite"),
/// 					DefaultService: example.ID(),
/// 					DefaultCustomErrorResponsePolicy: &compute.URLMapPathMatcherDefaultCustomErrorResponsePolicyArgs{
/// 						ErrorResponseRules: compute.URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArray{
/// 							&compute.URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs{
/// 								MatchResponseCodes: pulumi.StringArray{
/// 									pulumi.String("4xx"),
/// 									pulumi.String("5xx"),
/// 								},
/// 								Path:                 pulumi.String("/login_error.html"),
/// 								OverrideResponseCode: pulumi.Int(404),
/// 							},
/// 							&compute.URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs{
/// 								MatchResponseCodes: pulumi.StringArray{
/// 									pulumi.String("503"),
/// 								},
/// 								Path:                 pulumi.String("/bad_gateway.html"),
/// 								OverrideResponseCode: pulumi.Int(502),
/// 							},
/// 						},
/// 						ErrorService: error.ID(),
/// 					},
/// 					PathRules: compute.URLMapPathMatcherPathRuleArray{
/// 						&compute.URLMapPathMatcherPathRuleArgs{
/// 							Paths: pulumi.StringArray{
/// 								pulumi.String("/private/*"),
/// 							},
/// 							Service: example.ID(),
/// 							CustomErrorResponsePolicy: &compute.URLMapPathMatcherPathRuleCustomErrorResponsePolicyArgs{
/// 								ErrorResponseRules: compute.URLMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRuleArray{
/// 									&compute.URLMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRuleArgs{
/// 										MatchResponseCodes: pulumi.StringArray{
/// 											pulumi.String("4xx"),
/// 										},
/// 										Path:                 pulumi.String("/login.html"),
/// 										OverrideResponseCode: pulumi.Int(401),
/// 									},
/// 								},
/// 								ErrorService: error.ID(),
/// 							},
/// 						},
/// 					},
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
/// import com.pulumi.gcp.compute.HttpHealthCheck;
/// import com.pulumi.gcp.compute.HttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.compute.BackendBucket;
/// import com.pulumi.gcp.compute.BackendBucketArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapDefaultCustomErrorResponsePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherDefaultCustomErrorResponsePolicyArgs;
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
///         var default_ = new HttpHealthCheck("default", HttpHealthCheckArgs.builder()
///             .name("health-check")
///             .requestPath("/")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .build());
///
///         var example = new BackendService("example", BackendServiceArgs.builder()
///             .name("login")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .healthChecks(default_.id())
///             .build());
///
///         var errorBucket = new Bucket("errorBucket", BucketArgs.builder()
///             .name("static-asset-bucket")
///             .location("US")
///             .build());
///
///         var error = new BackendBucket("error", BackendBucketArgs.builder()
///             .name("error-backend-bucket")
///             .bucketName(errorBucket.name())
///             .enableCdn(true)
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("a description")
///             .defaultService(example.id())
///             .defaultCustomErrorResponsePolicy(URLMapDefaultCustomErrorResponsePolicyArgs.builder()
///                 .errorResponseRules(URLMapDefaultCustomErrorResponsePolicyErrorResponseRuleArgs.builder()
///                     .matchResponseCodes("5xx")
///                     .path("/internal_error.html")
///                     .overrideResponseCode(502)
///                     .build())
///                 .errorService(error.id())
///                 .build())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("mysite")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("mysite")
///                 .defaultService(example.id())
///                 .defaultCustomErrorResponsePolicy(URLMapPathMatcherDefaultCustomErrorResponsePolicyArgs.builder()
///                     .errorResponseRules(
///                         URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs.builder()
///                             .matchResponseCodes(
///                                 "4xx",
///                                 "5xx")
///                             .path("/login_error.html")
///                             .overrideResponseCode(404)
///                             .build(),
///                         URLMapPathMatcherDefaultCustomErrorResponsePolicyErrorResponseRuleArgs.builder()
///                             .matchResponseCodes("503")
///                             .path("/bad_gateway.html")
///                             .overrideResponseCode(502)
///                             .build())
///                     .errorService(error.id())
///                     .build())
///                 .pathRules(URLMapPathMatcherPathRuleArgs.builder()
///                     .paths("/private/*")
///                     .service(example.id())
///                     .customErrorResponsePolicy(URLMapPathMatcherPathRuleCustomErrorResponsePolicyArgs.builder()
///                         .errorResponseRules(URLMapPathMatcherPathRuleCustomErrorResponsePolicyErrorResponseRuleArgs.builder()
///                             .matchResponseCodes("4xx")
///                             .path("/login.html")
///                             .overrideResponseCode(401)
///                             .build())
///                         .errorService(error.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: a description
///       defaultService: ${example.id}
///       defaultCustomErrorResponsePolicy:
///         errorResponseRules:
///           - matchResponseCodes:
///               - 5xx
///             path: /internal_error.html
///             overrideResponseCode: 502
///         errorService: ${error.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: mysite
///       pathMatchers:
///         - name: mysite
///           defaultService: ${example.id}
///           defaultCustomErrorResponsePolicy:
///             errorResponseRules:
///               - matchResponseCodes:
///                   - 4xx
///                   - 5xx
///                 path: /login_error.html
///                 overrideResponseCode: 404
///               - matchResponseCodes:
///                   - '503'
///                 path: /bad_gateway.html
///                 overrideResponseCode: 502
///             errorService: ${error.id}
///           pathRules:
///             - paths:
///                 - /private/*
///               service: ${example.id}
///               customErrorResponsePolicy:
///                 errorResponseRules:
///                   - matchResponseCodes:
///                       - 4xx
///                     path: /login.html
///                     overrideResponseCode: 401
///                 errorService: ${error.id}
///   example:
///     type: gcp:compute:BackendService
///     properties:
///       name: login
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: EXTERNAL_MANAGED
///       healthChecks: ${default.id}
///   default:
///     type: gcp:compute:HttpHealthCheck
///     properties:
///       name: health-check
///       requestPath: /
///       checkIntervalSec: 1
///       timeoutSec: 1
///   error:
///     type: gcp:compute:BackendBucket
///     properties:
///       name: error-backend-bucket
///       bucketName: ${errorBucket.name}
///       enableCdn: true
///   errorBucket:
///     type: gcp:storage:Bucket
///     name: error
///     properties:
///       name: static-asset-bucket
///       location: US
/// ```
///
/// ### Url Map Http Filter Configs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "default-backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const service_a = new gcp.compute.BackendService("service-a", {
///     name: "service-a-backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for httpFilterConfigs in route rules",
///     defaultService: _default.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: _default.id,
///         routeRules: [{
///             priority: 1,
///             service: service_a.id,
///             matchRules: [{
///                 prefixMatch: "/",
///                 ignoreCase: true,
///             }],
///             httpFilterConfigs: [{
///                 filterName: "envoy.wasm",
///                 configTypeUrl: "type.googleapis.com/google.protobuf.Struct",
///                 config: JSON.stringify({
///                     name: "my-filter",
///                     root_id: "my_root_id",
///                     vm_config: {
///                         vm_id: "my_vm_id",
///                         runtime: "envoy.wasm.runtime.v8",
///                         code: {
///                             local: {
///                                 inline_string: "const WASM_BINARY = '...'",
///                             },
///                         },
///                     },
///                 }),
///             }],
///         }],
///     }],
///     tests: [{
///         service: _default.id,
///         host: "mysite.com",
///         path: "/",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="default-backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// service_a = gcp.compute.BackendService("service-a",
///     name="service-a-backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for httpFilterConfigs in route rules",
///     default_service=default.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default.id,
///         "route_rules": [{
///             "priority": 1,
///             "service": service_a.id,
///             "match_rules": [{
///                 "prefix_match": "/",
///                 "ignore_case": True,
///             }],
///             "http_filter_configs": [{
///                 "filter_name": "envoy.wasm",
///                 "config_type_url": "type.googleapis.com/google.protobuf.Struct",
///                 "config": json.dumps({
///                     "name": "my-filter",
///                     "root_id": "my_root_id",
///                     "vm_config": {
///                         "vm_id": "my_vm_id",
///                         "runtime": "envoy.wasm.runtime.v8",
///                         "code": {
///                             "local": {
///                                 "inline_string": "const WASM_BINARY = '...'",
///                             },
///                         },
///                     },
///                 }),
///             }],
///         }],
///     }],
///     tests=[{
///         "service": default.id,
///         "host": "mysite.com",
///         "path": "/",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "default-backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var service_a = new Gcp.Compute.BackendService("service-a", new()
///     {
///         Name = "service-a-backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for httpFilterConfigs in route rules",
///         DefaultService = @default.Id,
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
///                 DefaultService = @default.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         Service = service_a.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/",
///                                 IgnoreCase = true,
///                             },
///                         },
///                         HttpFilterConfigs = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHttpFilterConfigArgs
///                             {
///                                 FilterName = "envoy.wasm",
///                                 ConfigTypeUrl = "type.googleapis.com/google.protobuf.Struct",
///                                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                 {
///                                     ["name"] = "my-filter",
///                                     ["root_id"] = "my_root_id",
///                                     ["vm_config"] = new Dictionary<string, object?>
///                                     {
///                                         ["vm_id"] = "my_vm_id",
///                                         ["runtime"] = "envoy.wasm.runtime.v8",
///                                         ["code"] = new Dictionary<string, object?>
///                                         {
///                                             ["local"] = new Dictionary<string, object?>
///                                             {
///                                                 ["inline_string"] = "const WASM_BINARY = '...'",
///                                             },
///                                         },
///                                     },
///                                 }),
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Service = @default.Id,
///                 Host = "mysite.com",
///                 Path = "/",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("default-backend"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_a, err := compute.NewBackendService(ctx, "service-a", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("service-a-backend"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"name":    "my-filter",
/// 			"root_id": "my_root_id",
/// 			"vm_config": map[string]interface{}{
/// 				"vm_id":   "my_vm_id",
/// 				"runtime": "envoy.wasm.runtime.v8",
/// 				"code": map[string]interface{}{
/// 					"local": map[string]interface{}{
/// 						"inline_string": "const WASM_BINARY = '...'",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for httpFilterConfigs in route rules"),
/// 			DefaultService: _default.ID(),
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
/// 					DefaultService: _default.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							Service:  service_a.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/"),
/// 									IgnoreCase:  pulumi.Bool(true),
/// 								},
/// 							},
/// 							HttpFilterConfigs: compute.URLMapPathMatcherRouteRuleHttpFilterConfigArray{
/// 								&compute.URLMapPathMatcherRouteRuleHttpFilterConfigArgs{
/// 									FilterName:    pulumi.String("envoy.wasm"),
/// 									ConfigTypeUrl: pulumi.String("type.googleapis.com/google.protobuf.Struct"),
/// 									Config:        pulumi.String(json0),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Service: _default.ID(),
/// 					Host:    pulumi.String("mysite.com"),
/// 					Path:    pulumi.String("/"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("default-backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var service_a = new BackendService("service-a", BackendServiceArgs.builder()
///             .name("service-a-backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for httpFilterConfigs in route rules")
///             .defaultService(default_.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(default_.id())
///                 .routeRules(URLMapPathMatcherRouteRuleArgs.builder()
///                     .priority(1)
///                     .service(service_a.id())
///                     .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                         .prefixMatch("/")
///                         .ignoreCase(true)
///                         .build())
///                     .httpFilterConfigs(URLMapPathMatcherRouteRuleHttpFilterConfigArgs.builder()
///                         .filterName("envoy.wasm")
///                         .configTypeUrl("type.googleapis.com/google.protobuf.Struct")
///                         .config(serializeJson(
///                             jsonObject(
///                                 jsonProperty("name", "my-filter"),
///                                 jsonProperty("root_id", "my_root_id"),
///                                 jsonProperty("vm_config", jsonObject(
///                                     jsonProperty("vm_id", "my_vm_id"),
///                                     jsonProperty("runtime", "envoy.wasm.runtime.v8"),
///                                     jsonProperty("code", jsonObject(
///                                         jsonProperty("local", jsonObject(
///                                             jsonProperty("inline_string", "const WASM_BINARY = '...'")
///                                         ))
///                                     ))
///                                 ))
///                             )))
///                         .build())
///                     .build())
///                 .build())
///             .tests(URLMapTestArgs.builder()
///                 .service(default_.id())
///                 .host("mysite.com")
///                 .path("/")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for httpFilterConfigs in route rules
///       defaultService: ${default.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${default.id}
///           routeRules:
///             - priority: 1
///               service: ${["service-a"].id}
///               matchRules:
///                 - prefixMatch: /
///                   ignoreCase: true
///               httpFilterConfigs:
///                 - filterName: envoy.wasm
///                   configTypeUrl: type.googleapis.com/google.protobuf.Struct
///                   config:
///                     fn::toJSON:
///                       name: my-filter
///                       root_id: my_root_id
///                       vm_config:
///                         vm_id: my_vm_id
///                         runtime: envoy.wasm.runtime.v8
///                         code:
///                           local:
///                             inline_string: const WASM_BINARY = '...'
///       tests:
///         - service: ${default.id}
///           host: mysite.com
///           path: /
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: default-backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   service-a:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-a-backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
///
/// ### Url Map Http Filter Metadata
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const _default = new gcp.compute.BackendService("default", {
///     name: "default-backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const service_a = new gcp.compute.BackendService("service-a", {
///     name: "service-a-backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const service_b = new gcp.compute.BackendService("service-b", {
///     name: "service-b-backend",
///     portName: "http",
///     protocol: "HTTP",
///     timeoutSec: 10,
///     loadBalancingScheme: "INTERNAL_SELF_MANAGED",
///     healthChecks: defaultHealthCheck.id,
/// });
/// const urlmap = new gcp.compute.URLMap("urlmap", {
///     name: "urlmap",
///     description: "Test for httpFilterMetadata in route rules",
///     defaultService: _default.id,
///     hostRules: [{
///         hosts: ["mysite.com"],
///         pathMatcher: "allpaths",
///     }],
///     pathMatchers: [{
///         name: "allpaths",
///         defaultService: _default.id,
///         routeRules: [
///             {
///                 priority: 1,
///                 service: service_a.id,
///                 matchRules: [{
///                     prefixMatch: "/",
///                     ignoreCase: true,
///                 }],
///                 httpFilterMetadatas: [{
///                     filterName: "envoy.wasm",
///                     configTypeUrl: "type.googleapis.com/google.protobuf.Struct",
///                     config: JSON.stringify({
///                         fields: {
///                             timeout: {
///                                 string_value: "30s",
///                             },
///                             retries: {
///                                 number_value: 3,
///                             },
///                             debug: {
///                                 bool_value: true,
///                             },
///                         },
///                     }),
///                 }],
///             },
///             {
///                 priority: 2,
///                 service: service_b.id,
///                 matchRules: [{
///                     prefixMatch: "/api",
///                     ignoreCase: true,
///                 }],
///                 httpFilterMetadatas: [{
///                     filterName: "envoy.rate_limit",
///                     configTypeUrl: "type.googleapis.com/google.protobuf.Struct",
///                     config: JSON.stringify({
///                         fields: {
///                             requests_per_unit: {
///                                 number_value: 100,
///                             },
///                             unit: {
///                                 string_value: "MINUTE",
///                             },
///                         },
///                     }),
///                 }],
///             },
///         ],
///     }],
///     tests: [{
///         service: _default.id,
///         host: "mysite.com",
///         path: "/",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default = gcp.compute.BackendService("default",
///     name="default-backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// service_a = gcp.compute.BackendService("service-a",
///     name="service-a-backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// service_b = gcp.compute.BackendService("service-b",
///     name="service-b-backend",
///     port_name="http",
///     protocol="HTTP",
///     timeout_sec=10,
///     load_balancing_scheme="INTERNAL_SELF_MANAGED",
///     health_checks=default_health_check.id)
/// urlmap = gcp.compute.URLMap("urlmap",
///     name="urlmap",
///     description="Test for httpFilterMetadata in route rules",
///     default_service=default.id,
///     host_rules=[{
///         "hosts": ["mysite.com"],
///         "path_matcher": "allpaths",
///     }],
///     path_matchers=[{
///         "name": "allpaths",
///         "default_service": default.id,
///         "route_rules": [
///             {
///                 "priority": 1,
///                 "service": service_a.id,
///                 "match_rules": [{
///                     "prefix_match": "/",
///                     "ignore_case": True,
///                 }],
///                 "http_filter_metadatas": [{
///                     "filter_name": "envoy.wasm",
///                     "config_type_url": "type.googleapis.com/google.protobuf.Struct",
///                     "config": json.dumps({
///                         "fields": {
///                             "timeout": {
///                                 "string_value": "30s",
///                             },
///                             "retries": {
///                                 "number_value": 3,
///                             },
///                             "debug": {
///                                 "bool_value": True,
///                             },
///                         },
///                     }),
///                 }],
///             },
///             {
///                 "priority": 2,
///                 "service": service_b.id,
///                 "match_rules": [{
///                     "prefix_match": "/api",
///                     "ignore_case": True,
///                 }],
///                 "http_filter_metadatas": [{
///                     "filter_name": "envoy.rate_limit",
///                     "config_type_url": "type.googleapis.com/google.protobuf.Struct",
///                     "config": json.dumps({
///                         "fields": {
///                             "requests_per_unit": {
///                                 "number_value": 100,
///                             },
///                             "unit": {
///                                 "string_value": "MINUTE",
///                             },
///                         },
///                     }),
///                 }],
///             },
///         ],
///     }],
///     tests=[{
///         "service": default.id,
///         "host": "mysite.com",
///         "path": "/",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var @default = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "default-backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var service_a = new Gcp.Compute.BackendService("service-a", new()
///     {
///         Name = "service-a-backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var service_b = new Gcp.Compute.BackendService("service-b", new()
///     {
///         Name = "service-b-backend",
///         PortName = "http",
///         Protocol = "HTTP",
///         TimeoutSec = 10,
///         LoadBalancingScheme = "INTERNAL_SELF_MANAGED",
///         HealthChecks = defaultHealthCheck.Id,
///     });
///
///     var urlmap = new Gcp.Compute.URLMap("urlmap", new()
///     {
///         Name = "urlmap",
///         Description = "Test for httpFilterMetadata in route rules",
///         DefaultService = @default.Id,
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
///                 DefaultService = @default.Id,
///                 RouteRules = new[]
///                 {
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 1,
///                         Service = service_a.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/",
///                                 IgnoreCase = true,
///                             },
///                         },
///                         HttpFilterMetadatas = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHttpFilterMetadataArgs
///                             {
///                                 FilterName = "envoy.wasm",
///                                 ConfigTypeUrl = "type.googleapis.com/google.protobuf.Struct",
///                                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                 {
///                                     ["fields"] = new Dictionary<string, object?>
///                                     {
///                                         ["timeout"] = new Dictionary<string, object?>
///                                         {
///                                             ["string_value"] = "30s",
///                                         },
///                                         ["retries"] = new Dictionary<string, object?>
///                                         {
///                                             ["number_value"] = 3,
///                                         },
///                                         ["debug"] = new Dictionary<string, object?>
///                                         {
///                                             ["bool_value"] = true,
///                                         },
///                                     },
///                                 }),
///                             },
///                         },
///                     },
///                     new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleArgs
///                     {
///                         Priority = 2,
///                         Service = service_b.Id,
///                         MatchRules = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleMatchRuleArgs
///                             {
///                                 PrefixMatch = "/api",
///                                 IgnoreCase = true,
///                             },
///                         },
///                         HttpFilterMetadatas = new[]
///                         {
///                             new Gcp.Compute.Inputs.URLMapPathMatcherRouteRuleHttpFilterMetadataArgs
///                             {
///                                 FilterName = "envoy.rate_limit",
///                                 ConfigTypeUrl = "type.googleapis.com/google.protobuf.Struct",
///                                 Config = JsonSerializer.Serialize(new Dictionary<string, object?>
///                                 {
///                                     ["fields"] = new Dictionary<string, object?>
///                                     {
///                                         ["requests_per_unit"] = new Dictionary<string, object?>
///                                         {
///                                             ["number_value"] = 100,
///                                         },
///                                         ["unit"] = new Dictionary<string, object?>
///                                         {
///                                             ["string_value"] = "MINUTE",
///                                         },
///                                     },
///                                 }),
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tests = new[]
///         {
///             new Gcp.Compute.Inputs.URLMapTestArgs
///             {
///                 Service = @default.Id,
///                 Host = "mysite.com",
///                 Path = "/",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("default-backend"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_a, err := compute.NewBackendService(ctx, "service-a", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("service-a-backend"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service_b, err := compute.NewBackendService(ctx, "service-b", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("service-b-backend"),
/// 			PortName:            pulumi.String("http"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			TimeoutSec:          pulumi.Int(10),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL_SELF_MANAGED"),
/// 			HealthChecks:        defaultHealthCheck.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"fields": map[string]interface{}{
/// 				"timeout": map[string]interface{}{
/// 					"string_value": "30s",
/// 				},
/// 				"retries": map[string]interface{}{
/// 					"number_value": 3,
/// 				},
/// 				"debug": map[string]interface{}{
/// 					"bool_value": true,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"fields": map[string]interface{}{
/// 				"requests_per_unit": map[string]interface{}{
/// 					"number_value": 100,
/// 				},
/// 				"unit": map[string]interface{}{
/// 					"string_value": "MINUTE",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = compute.NewURLMap(ctx, "urlmap", &compute.URLMapArgs{
/// 			Name:           pulumi.String("urlmap"),
/// 			Description:    pulumi.String("Test for httpFilterMetadata in route rules"),
/// 			DefaultService: _default.ID(),
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
/// 					DefaultService: _default.ID(),
/// 					RouteRules: compute.URLMapPathMatcherRouteRuleArray{
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(1),
/// 							Service:  service_a.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/"),
/// 									IgnoreCase:  pulumi.Bool(true),
/// 								},
/// 							},
/// 							HttpFilterMetadatas: compute.URLMapPathMatcherRouteRuleHttpFilterMetadataArray{
/// 								&compute.URLMapPathMatcherRouteRuleHttpFilterMetadataArgs{
/// 									FilterName:    pulumi.String("envoy.wasm"),
/// 									ConfigTypeUrl: pulumi.String("type.googleapis.com/google.protobuf.Struct"),
/// 									Config:        pulumi.String(json0),
/// 								},
/// 							},
/// 						},
/// 						&compute.URLMapPathMatcherRouteRuleArgs{
/// 							Priority: pulumi.Int(2),
/// 							Service:  service_b.ID(),
/// 							MatchRules: compute.URLMapPathMatcherRouteRuleMatchRuleArray{
/// 								&compute.URLMapPathMatcherRouteRuleMatchRuleArgs{
/// 									PrefixMatch: pulumi.String("/api"),
/// 									IgnoreCase:  pulumi.Bool(true),
/// 								},
/// 							},
/// 							HttpFilterMetadatas: compute.URLMapPathMatcherRouteRuleHttpFilterMetadataArray{
/// 								&compute.URLMapPathMatcherRouteRuleHttpFilterMetadataArgs{
/// 									FilterName:    pulumi.String("envoy.rate_limit"),
/// 									ConfigTypeUrl: pulumi.String("type.googleapis.com/google.protobuf.Struct"),
/// 									Config:        pulumi.String(json1),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tests: compute.URLMapTestArray{
/// 				&compute.URLMapTestArgs{
/// 					Service: _default.ID(),
/// 					Host:    pulumi.String("mysite.com"),
/// 					Path:    pulumi.String("/"),
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.URLMap;
/// import com.pulumi.gcp.compute.URLMapArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapHostRuleArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapPathMatcherArgs;
/// import com.pulumi.gcp.compute.inputs.URLMapTestArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///             .name("health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var default_ = new BackendService("default", BackendServiceArgs.builder()
///             .name("default-backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var service_a = new BackendService("service-a", BackendServiceArgs.builder()
///             .name("service-a-backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var service_b = new BackendService("service-b", BackendServiceArgs.builder()
///             .name("service-b-backend")
///             .portName("http")
///             .protocol("HTTP")
///             .timeoutSec(10)
///             .loadBalancingScheme("INTERNAL_SELF_MANAGED")
///             .healthChecks(defaultHealthCheck.id())
///             .build());
///
///         var urlmap = new URLMap("urlmap", URLMapArgs.builder()
///             .name("urlmap")
///             .description("Test for httpFilterMetadata in route rules")
///             .defaultService(default_.id())
///             .hostRules(URLMapHostRuleArgs.builder()
///                 .hosts("mysite.com")
///                 .pathMatcher("allpaths")
///                 .build())
///             .pathMatchers(URLMapPathMatcherArgs.builder()
///                 .name("allpaths")
///                 .defaultService(default_.id())
///                 .routeRules(
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(1)
///                         .service(service_a.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .prefixMatch("/")
///                             .ignoreCase(true)
///                             .build())
///                         .httpFilterMetadatas(URLMapPathMatcherRouteRuleHttpFilterMetadataArgs.builder()
///                             .filterName("envoy.wasm")
///                             .configTypeUrl("type.googleapis.com/google.protobuf.Struct")
///                             .config(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("fields", jsonObject(
///                                         jsonProperty("timeout", jsonObject(
///                                             jsonProperty("string_value", "30s")
///                                         )),
///                                         jsonProperty("retries", jsonObject(
///                                             jsonProperty("number_value", 3)
///                                         )),
///                                         jsonProperty("debug", jsonObject(
///                                             jsonProperty("bool_value", true)
///                                         ))
///                                     ))
///                                 )))
///                             .build())
///                         .build(),
///                     URLMapPathMatcherRouteRuleArgs.builder()
///                         .priority(2)
///                         .service(service_b.id())
///                         .matchRules(URLMapPathMatcherRouteRuleMatchRuleArgs.builder()
///                             .prefixMatch("/api")
///                             .ignoreCase(true)
///                             .build())
///                         .httpFilterMetadatas(URLMapPathMatcherRouteRuleHttpFilterMetadataArgs.builder()
///                             .filterName("envoy.rate_limit")
///                             .configTypeUrl("type.googleapis.com/google.protobuf.Struct")
///                             .config(serializeJson(
///                                 jsonObject(
///                                     jsonProperty("fields", jsonObject(
///                                         jsonProperty("requests_per_unit", jsonObject(
///                                             jsonProperty("number_value", 100)
///                                         )),
///                                         jsonProperty("unit", jsonObject(
///                                             jsonProperty("string_value", "MINUTE")
///                                         ))
///                                     ))
///                                 )))
///                             .build())
///                         .build())
///                 .build())
///             .tests(URLMapTestArgs.builder()
///                 .service(default_.id())
///                 .host("mysite.com")
///                 .path("/")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   urlmap:
///     type: gcp:compute:URLMap
///     properties:
///       name: urlmap
///       description: Test for httpFilterMetadata in route rules
///       defaultService: ${default.id}
///       hostRules:
///         - hosts:
///             - mysite.com
///           pathMatcher: allpaths
///       pathMatchers:
///         - name: allpaths
///           defaultService: ${default.id}
///           routeRules:
///             - priority: 1
///               service: ${["service-a"].id}
///               matchRules:
///                 - prefixMatch: /
///                   ignoreCase: true
///               httpFilterMetadatas:
///                 - filterName: envoy.wasm
///                   configTypeUrl: type.googleapis.com/google.protobuf.Struct
///                   config:
///                     fn::toJSON:
///                       fields:
///                         timeout:
///                           string_value: 30s
///                         retries:
///                           number_value: 3
///                         debug:
///                           bool_value: true
///             - priority: 2
///               service: ${["service-b"].id}
///               matchRules:
///                 - prefixMatch: /api
///                   ignoreCase: true
///               httpFilterMetadatas:
///                 - filterName: envoy.rate_limit
///                   configTypeUrl: type.googleapis.com/google.protobuf.Struct
///                   config:
///                     fn::toJSON:
///                       fields:
///                         requests_per_unit:
///                           number_value: 100
///                         unit:
///                           string_value: MINUTE
///       tests:
///         - service: ${default.id}
///           host: mysite.com
///           path: /
///   default:
///     type: gcp:compute:BackendService
///     properties:
///       name: default-backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   service-a:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-a-backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   service-b:
///     type: gcp:compute:BackendService
///     properties:
///       name: service-b-backend
///       portName: http
///       protocol: HTTP
///       timeoutSec: 10
///       loadBalancingScheme: INTERNAL_SELF_MANAGED
///       healthChecks: ${defaultHealthCheck.id}
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: health-check
///       httpHealthCheck:
///         port: 80
/// ```
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
  late final pulumi.Output<URLMapDefaultCustomErrorResponsePolicy?> defaultCustomErrorResponsePolicy;
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

  /// Creates a new [URLMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [URLMap]. {@macro pulumi_compute_u_rlmap_urlmap_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.defaultCustomErrorResponsePolicy = registerOutput<URLMapDefaultCustomErrorResponsePolicy?>('defaultCustomErrorResponsePolicy');
    this.defaultRouteAction = registerOutput<URLMapDefaultRouteAction?>('defaultRouteAction');
    this.defaultService = registerOutput<String?>('defaultService');
    this.defaultUrlRedirect = registerOutput<URLMapDefaultUrlRedirect?>('defaultUrlRedirect');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.headerAction = registerOutput<URLMapHeaderAction?>('headerAction');
    this.hostRules = registerOutput<List<URLMapHostRule>?>('hostRules');
    this.mapId = registerOutput<int>('mapId');
    this.name = registerOutput<String>('name');
    this.pathMatchers = registerOutput<List<URLMapPathMatcher>?>('pathMatchers');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.tests = registerOutput<List<URLMapTest>?>('tests');
  }
}
