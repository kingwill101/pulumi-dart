import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_args.dart';
import 'http_route_rule.dart';

/// HttpRoute is the resource defining how HTTP traffic should be routed by a Mesh or Gateway resource.
///
///
/// To get more information about HttpRoute, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-services/rest/v1beta1/projects.locations.httpRoutes)
/// * How-to Guides
/// * [Setup HTTP Services](https://cloud.google.com/traffic-director/docs/set-up-envoy-http-mesh)
///
/// ## Example Usage
///
/// ### Network Services Http Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.HttpRoute("default", {
///     name: "my-http-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         matches: [{
///             queryParameters: [{
///                 queryParameter: "key",
///                 exactMatch: "value",
///             }],
///             fullPathMatch: "example",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.HttpRoute("default",
///     name="my-http-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "matches": [{
///             "query_parameters": [{
///                 "query_parameter": "key",
///                 "exact_match": "value",
///             }],
///             "full_path_match": "example",
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
///     var @default = new Gcp.NetworkServices.HttpRoute("default", new()
///     {
///         Name = "my-http-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.HttpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchArgs
///                     {
///                         QueryParameters = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchQueryParameterArgs
///                             {
///                                 QueryParameter = "key",
///                                 ExactMatch = "value",
///                             },
///                         },
///                         FullPathMatch = "example",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewHttpRoute(ctx, "default", &networkservices.HttpRouteArgs{
/// 			Name: pulumi.String("my-http-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.HttpRouteRuleArray{
/// 				&networkservices.HttpRouteRuleArgs{
/// 					Matches: networkservices.HttpRouteRuleMatchArray{
/// 						&networkservices.HttpRouteRuleMatchArgs{
/// 							QueryParameters: networkservices.HttpRouteRuleMatchQueryParameterArray{
/// 								&networkservices.HttpRouteRuleMatchQueryParameterArgs{
/// 									QueryParameter: pulumi.String("key"),
/// 									ExactMatch:     pulumi.String("value"),
/// 								},
/// 							},
/// 							FullPathMatch: pulumi.String("example"),
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
/// import com.pulumi.gcp.networkservices.HttpRoute;
/// import com.pulumi.gcp.networkservices.HttpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleArgs;
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
///         var default_ = new HttpRoute("default", HttpRouteArgs.builder()
///             .name("my-http-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(HttpRouteRuleArgs.builder()
///                 .matches(HttpRouteRuleMatchArgs.builder()
///                     .queryParameters(HttpRouteRuleMatchQueryParameterArgs.builder()
///                         .queryParameter("key")
///                         .exactMatch("value")
///                         .build())
///                     .fullPathMatch("example")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:HttpRoute
///     properties:
///       name: my-http-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - matches:
///             - queryParameters:
///                 - queryParameter: key
///                   exactMatch: value
///               fullPathMatch: example
/// ```
///
/// ### Network Services Http Route Matches And Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.HttpRoute("default", {
///     name: "my-http-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         matches: [
///             {
///                 headers: [{
///                     header: "header",
///                     invertMatch: false,
///                     regexMatch: "header-value",
///                 }],
///                 queryParameters: [{
///                     queryParameter: "key",
///                     exactMatch: "value",
///                 }],
///                 prefixMatch: "example",
///                 ignoreCase: false,
///             },
///             {
///                 headers: [{
///                     header: "header",
///                     invertMatch: false,
///                     presentMatch: true,
///                 }],
///                 queryParameters: [{
///                     queryParameter: "key",
///                     regexMatch: "value",
///                 }],
///                 regexMatch: "example",
///                 ignoreCase: false,
///             },
///             {
///                 headers: [{
///                     header: "header",
///                     invertMatch: false,
///                     presentMatch: true,
///                 }],
///                 queryParameters: [{
///                     queryParameter: "key",
///                     presentMatch: true,
///                 }],
///                 fullPathMatch: "example",
///                 ignoreCase: false,
///             },
///         ],
///         action: {
///             redirect: {
///                 hostRedirect: "new-host",
///                 pathRedirect: "new-path",
///                 prefixRewrite: "new-prefix",
///                 httpsRedirect: true,
///                 stripQuery: true,
///                 portRedirect: 8081,
///             },
///             urlRewrite: {
///                 pathPrefixRewrite: "new-prefix",
///                 hostRewrite: "new-host",
///             },
///             retryPolicy: {
///                 retryConditions: ["server_error"],
///                 numRetries: 1,
///                 perTryTimeout: "1s",
///             },
///             requestMirrorPolicy: {
///                 destination: {
///                     serviceName: "new",
///                     weight: 1,
///                 },
///             },
///             corsPolicy: {
///                 allowOrigins: ["example"],
///                 allowMethods: [
///                     "GET",
///                     "PUT",
///                 ],
///                 allowHeaders: [
///                     "version",
///                     "type",
///                 ],
///                 exposeHeaders: [
///                     "version",
///                     "type",
///                 ],
///                 maxAge: "1s",
///                 allowCredentials: true,
///                 disabled: false,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.HttpRoute("default",
///     name="my-http-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "matches": [
///             {
///                 "headers": [{
///                     "header": "header",
///                     "invert_match": False,
///                     "regex_match": "header-value",
///                 }],
///                 "query_parameters": [{
///                     "query_parameter": "key",
///                     "exact_match": "value",
///                 }],
///                 "prefix_match": "example",
///                 "ignore_case": False,
///             },
///             {
///                 "headers": [{
///                     "header": "header",
///                     "invert_match": False,
///                     "present_match": True,
///                 }],
///                 "query_parameters": [{
///                     "query_parameter": "key",
///                     "regex_match": "value",
///                 }],
///                 "regex_match": "example",
///                 "ignore_case": False,
///             },
///             {
///                 "headers": [{
///                     "header": "header",
///                     "invert_match": False,
///                     "present_match": True,
///                 }],
///                 "query_parameters": [{
///                     "query_parameter": "key",
///                     "present_match": True,
///                 }],
///                 "full_path_match": "example",
///                 "ignore_case": False,
///             },
///         ],
///         "action": {
///             "redirect": {
///                 "host_redirect": "new-host",
///                 "path_redirect": "new-path",
///                 "prefix_rewrite": "new-prefix",
///                 "https_redirect": True,
///                 "strip_query": True,
///                 "port_redirect": 8081,
///             },
///             "url_rewrite": {
///                 "path_prefix_rewrite": "new-prefix",
///                 "host_rewrite": "new-host",
///             },
///             "retry_policy": {
///                 "retry_conditions": ["server_error"],
///                 "num_retries": 1,
///                 "per_try_timeout": "1s",
///             },
///             "request_mirror_policy": {
///                 "destination": {
///                     "service_name": "new",
///                     "weight": 1,
///                 },
///             },
///             "cors_policy": {
///                 "allow_origins": ["example"],
///                 "allow_methods": [
///                     "GET",
///                     "PUT",
///                 ],
///                 "allow_headers": [
///                     "version",
///                     "type",
///                 ],
///                 "expose_headers": [
///                     "version",
///                     "type",
///                 ],
///                 "max_age": "1s",
///                 "allow_credentials": True,
///                 "disabled": False,
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
///     var @default = new Gcp.NetworkServices.HttpRoute("default", new()
///     {
///         Name = "my-http-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.HttpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchHeaderArgs
///                             {
///                                 Header = "header",
///                                 InvertMatch = false,
///                                 RegexMatch = "header-value",
///                             },
///                         },
///                         QueryParameters = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchQueryParameterArgs
///                             {
///                                 QueryParameter = "key",
///                                 ExactMatch = "value",
///                             },
///                         },
///                         PrefixMatch = "example",
///                         IgnoreCase = false,
///                     },
///                     new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchHeaderArgs
///                             {
///                                 Header = "header",
///                                 InvertMatch = false,
///                                 PresentMatch = true,
///                             },
///                         },
///                         QueryParameters = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchQueryParameterArgs
///                             {
///                                 QueryParameter = "key",
///                                 RegexMatch = "value",
///                             },
///                         },
///                         RegexMatch = "example",
///                         IgnoreCase = false,
///                     },
///                     new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchArgs
///                     {
///                         Headers = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchHeaderArgs
///                             {
///                                 Header = "header",
///                                 InvertMatch = false,
///                                 PresentMatch = true,
///                             },
///                         },
///                         QueryParameters = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchQueryParameterArgs
///                             {
///                                 QueryParameter = "key",
///                                 PresentMatch = true,
///                             },
///                         },
///                         FullPathMatch = "example",
///                         IgnoreCase = false,
///                     },
///                 },
///                 Action = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionArgs
///                 {
///                     Redirect = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRedirectArgs
///                     {
///                         HostRedirect = "new-host",
///                         PathRedirect = "new-path",
///                         PrefixRewrite = "new-prefix",
///                         HttpsRedirect = true,
///                         StripQuery = true,
///                         PortRedirect = 8081,
///                     },
///                     UrlRewrite = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionUrlRewriteArgs
///                     {
///                         PathPrefixRewrite = "new-prefix",
///                         HostRewrite = "new-host",
///                     },
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "server_error",
///                         },
///                         NumRetries = 1,
///                         PerTryTimeout = "1s",
///                     },
///                     RequestMirrorPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRequestMirrorPolicyArgs
///                     {
///                         Destination = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs
///                         {
///                             ServiceName = "new",
///                             Weight = 1,
///                         },
///                     },
///                     CorsPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionCorsPolicyArgs
///                     {
///                         AllowOrigins = new[]
///                         {
///                             "example",
///                         },
///                         AllowMethods = new[]
///                         {
///                             "GET",
///                             "PUT",
///                         },
///                         AllowHeaders = new[]
///                         {
///                             "version",
///                             "type",
///                         },
///                         ExposeHeaders = new[]
///                         {
///                             "version",
///                             "type",
///                         },
///                         MaxAge = "1s",
///                         AllowCredentials = true,
///                         Disabled = false,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewHttpRoute(ctx, "default", &networkservices.HttpRouteArgs{
/// 			Name: pulumi.String("my-http-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.HttpRouteRuleArray{
/// 				&networkservices.HttpRouteRuleArgs{
/// 					Matches: networkservices.HttpRouteRuleMatchArray{
/// 						&networkservices.HttpRouteRuleMatchArgs{
/// 							Headers: networkservices.HttpRouteRuleMatchHeaderArray{
/// 								&networkservices.HttpRouteRuleMatchHeaderArgs{
/// 									Header:      pulumi.String("header"),
/// 									InvertMatch: pulumi.Bool(false),
/// 									RegexMatch:  pulumi.String("header-value"),
/// 								},
/// 							},
/// 							QueryParameters: networkservices.HttpRouteRuleMatchQueryParameterArray{
/// 								&networkservices.HttpRouteRuleMatchQueryParameterArgs{
/// 									QueryParameter: pulumi.String("key"),
/// 									ExactMatch:     pulumi.String("value"),
/// 								},
/// 							},
/// 							PrefixMatch: pulumi.String("example"),
/// 							IgnoreCase:  pulumi.Bool(false),
/// 						},
/// 						&networkservices.HttpRouteRuleMatchArgs{
/// 							Headers: networkservices.HttpRouteRuleMatchHeaderArray{
/// 								&networkservices.HttpRouteRuleMatchHeaderArgs{
/// 									Header:       pulumi.String("header"),
/// 									InvertMatch:  pulumi.Bool(false),
/// 									PresentMatch: pulumi.Bool(true),
/// 								},
/// 							},
/// 							QueryParameters: networkservices.HttpRouteRuleMatchQueryParameterArray{
/// 								&networkservices.HttpRouteRuleMatchQueryParameterArgs{
/// 									QueryParameter: pulumi.String("key"),
/// 									RegexMatch:     pulumi.String("value"),
/// 								},
/// 							},
/// 							RegexMatch: pulumi.String("example"),
/// 							IgnoreCase: pulumi.Bool(false),
/// 						},
/// 						&networkservices.HttpRouteRuleMatchArgs{
/// 							Headers: networkservices.HttpRouteRuleMatchHeaderArray{
/// 								&networkservices.HttpRouteRuleMatchHeaderArgs{
/// 									Header:       pulumi.String("header"),
/// 									InvertMatch:  pulumi.Bool(false),
/// 									PresentMatch: pulumi.Bool(true),
/// 								},
/// 							},
/// 							QueryParameters: networkservices.HttpRouteRuleMatchQueryParameterArray{
/// 								&networkservices.HttpRouteRuleMatchQueryParameterArgs{
/// 									QueryParameter: pulumi.String("key"),
/// 									PresentMatch:   pulumi.Bool(true),
/// 								},
/// 							},
/// 							FullPathMatch: pulumi.String("example"),
/// 							IgnoreCase:    pulumi.Bool(false),
/// 						},
/// 					},
/// 					Action: &networkservices.HttpRouteRuleActionArgs{
/// 						Redirect: &networkservices.HttpRouteRuleActionRedirectArgs{
/// 							HostRedirect:  pulumi.String("new-host"),
/// 							PathRedirect:  pulumi.String("new-path"),
/// 							PrefixRewrite: pulumi.String("new-prefix"),
/// 							HttpsRedirect: pulumi.Bool(true),
/// 							StripQuery:    pulumi.Bool(true),
/// 							PortRedirect:  pulumi.Int(8081),
/// 						},
/// 						UrlRewrite: &networkservices.HttpRouteRuleActionUrlRewriteArgs{
/// 							PathPrefixRewrite: pulumi.String("new-prefix"),
/// 							HostRewrite:       pulumi.String("new-host"),
/// 						},
/// 						RetryPolicy: &networkservices.HttpRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("server_error"),
/// 							},
/// 							NumRetries:    pulumi.Int(1),
/// 							PerTryTimeout: pulumi.String("1s"),
/// 						},
/// 						RequestMirrorPolicy: &networkservices.HttpRouteRuleActionRequestMirrorPolicyArgs{
/// 							Destination: &networkservices.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs{
/// 								ServiceName: pulumi.String("new"),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						CorsPolicy: &networkservices.HttpRouteRuleActionCorsPolicyArgs{
/// 							AllowOrigins: pulumi.StringArray{
/// 								pulumi.String("example"),
/// 							},
/// 							AllowMethods: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 								pulumi.String("PUT"),
/// 							},
/// 							AllowHeaders: pulumi.StringArray{
/// 								pulumi.String("version"),
/// 								pulumi.String("type"),
/// 							},
/// 							ExposeHeaders: pulumi.StringArray{
/// 								pulumi.String("version"),
/// 								pulumi.String("type"),
/// 							},
/// 							MaxAge:           pulumi.String("1s"),
/// 							AllowCredentials: pulumi.Bool(true),
/// 							Disabled:         pulumi.Bool(false),
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
/// import com.pulumi.gcp.networkservices.HttpRoute;
/// import com.pulumi.gcp.networkservices.HttpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRedirectArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionUrlRewriteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRetryPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionCorsPolicyArgs;
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
///         var default_ = new HttpRoute("default", HttpRouteArgs.builder()
///             .name("my-http-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(HttpRouteRuleArgs.builder()
///                 .matches(
///                     HttpRouteRuleMatchArgs.builder()
///                         .headers(HttpRouteRuleMatchHeaderArgs.builder()
///                             .header("header")
///                             .invertMatch(false)
///                             .regexMatch("header-value")
///                             .build())
///                         .queryParameters(HttpRouteRuleMatchQueryParameterArgs.builder()
///                             .queryParameter("key")
///                             .exactMatch("value")
///                             .build())
///                         .prefixMatch("example")
///                         .ignoreCase(false)
///                         .build(),
///                     HttpRouteRuleMatchArgs.builder()
///                         .headers(HttpRouteRuleMatchHeaderArgs.builder()
///                             .header("header")
///                             .invertMatch(false)
///                             .presentMatch(true)
///                             .build())
///                         .queryParameters(HttpRouteRuleMatchQueryParameterArgs.builder()
///                             .queryParameter("key")
///                             .regexMatch("value")
///                             .build())
///                         .regexMatch("example")
///                         .ignoreCase(false)
///                         .build(),
///                     HttpRouteRuleMatchArgs.builder()
///                         .headers(HttpRouteRuleMatchHeaderArgs.builder()
///                             .header("header")
///                             .invertMatch(false)
///                             .presentMatch(true)
///                             .build())
///                         .queryParameters(HttpRouteRuleMatchQueryParameterArgs.builder()
///                             .queryParameter("key")
///                             .presentMatch(true)
///                             .build())
///                         .fullPathMatch("example")
///                         .ignoreCase(false)
///                         .build())
///                 .action(HttpRouteRuleActionArgs.builder()
///                     .redirect(HttpRouteRuleActionRedirectArgs.builder()
///                         .hostRedirect("new-host")
///                         .pathRedirect("new-path")
///                         .prefixRewrite("new-prefix")
///                         .httpsRedirect(true)
///                         .stripQuery(true)
///                         .portRedirect(8081)
///                         .build())
///                     .urlRewrite(HttpRouteRuleActionUrlRewriteArgs.builder()
///                         .pathPrefixRewrite("new-prefix")
///                         .hostRewrite("new-host")
///                         .build())
///                     .retryPolicy(HttpRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("server_error")
///                         .numRetries(1)
///                         .perTryTimeout("1s")
///                         .build())
///                     .requestMirrorPolicy(HttpRouteRuleActionRequestMirrorPolicyArgs.builder()
///                         .destination(HttpRouteRuleActionRequestMirrorPolicyDestinationArgs.builder()
///                             .serviceName("new")
///                             .weight(1)
///                             .build())
///                         .build())
///                     .corsPolicy(HttpRouteRuleActionCorsPolicyArgs.builder()
///                         .allowOrigins("example")
///                         .allowMethods(
///                             "GET",
///                             "PUT")
///                         .allowHeaders(
///                             "version",
///                             "type")
///                         .exposeHeaders(
///                             "version",
///                             "type")
///                         .maxAge("1s")
///                         .allowCredentials(true)
///                         .disabled(false)
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
///   default:
///     type: gcp:networkservices:HttpRoute
///     properties:
///       name: my-http-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - matches:
///             - headers:
///                 - header: header
///                   invertMatch: false
///                   regexMatch: header-value
///               queryParameters:
///                 - queryParameter: key
///                   exactMatch: value
///               prefixMatch: example
///               ignoreCase: false
///             - headers:
///                 - header: header
///                   invertMatch: false
///                   presentMatch: true
///               queryParameters:
///                 - queryParameter: key
///                   regexMatch: value
///               regexMatch: example
///               ignoreCase: false
///             - headers:
///                 - header: header
///                   invertMatch: false
///                   presentMatch: true
///               queryParameters:
///                 - queryParameter: key
///                   presentMatch: true
///               fullPathMatch: example
///               ignoreCase: false
///           action:
///             redirect:
///               hostRedirect: new-host
///               pathRedirect: new-path
///               prefixRewrite: new-prefix
///               httpsRedirect: true
///               stripQuery: true
///               portRedirect: 8081
///             urlRewrite:
///               pathPrefixRewrite: new-prefix
///               hostRewrite: new-host
///             retryPolicy:
///               retryConditions:
///                 - server_error
///               numRetries: 1
///               perTryTimeout: 1s
///             requestMirrorPolicy:
///               destination:
///                 serviceName: new
///                 weight: 1
///             corsPolicy:
///               allowOrigins:
///                 - example
///               allowMethods:
///                 - GET
///                 - PUT
///               allowHeaders:
///                 - version
///                 - type
///               exposeHeaders:
///                 - version
///                 - type
///               maxAge: 1s
///               allowCredentials: true
///               disabled: false
/// ```
///
/// ### Network Services Http Route Actions
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.HttpRoute("default", {
///     name: "my-http-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     rules: [{
///         action: {
///             faultInjectionPolicy: {
///                 delay: {
///                     fixedDelay: "1s",
///                     percentage: 1,
///                 },
///                 abort: {
///                     httpStatus: 500,
///                     percentage: 1,
///                 },
///             },
///             urlRewrite: {
///                 pathPrefixRewrite: "new-prefix",
///                 hostRewrite: "new-host",
///             },
///             retryPolicy: {
///                 retryConditions: ["server_error"],
///                 numRetries: 1,
///                 perTryTimeout: "1s",
///             },
///             requestMirrorPolicy: {
///                 destination: {
///                     serviceName: "new",
///                     weight: 1,
///                 },
///             },
///             corsPolicy: {
///                 allowOrigins: ["example"],
///                 allowMethods: [
///                     "GET",
///                     "PUT",
///                 ],
///                 allowHeaders: [
///                     "version",
///                     "type",
///                 ],
///                 exposeHeaders: [
///                     "version",
///                     "type",
///                 ],
///                 maxAge: "1s",
///                 allowCredentials: true,
///                 disabled: false,
///             },
///             requestHeaderModifier: {
///                 set: {
///                     version: "1",
///                     type: "json",
///                 },
///                 add: {
///                     "minor-version": "1",
///                 },
///                 removes: ["arg"],
///             },
///             responseHeaderModifier: {
///                 set: {
///                     version: "1",
///                     type: "json",
///                 },
///                 add: {
///                     "minor-version": "1",
///                 },
///                 removes: ["removearg"],
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.HttpRoute("default",
///     name="my-http-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     rules=[{
///         "action": {
///             "fault_injection_policy": {
///                 "delay": {
///                     "fixed_delay": "1s",
///                     "percentage": 1,
///                 },
///                 "abort": {
///                     "http_status": 500,
///                     "percentage": 1,
///                 },
///             },
///             "url_rewrite": {
///                 "path_prefix_rewrite": "new-prefix",
///                 "host_rewrite": "new-host",
///             },
///             "retry_policy": {
///                 "retry_conditions": ["server_error"],
///                 "num_retries": 1,
///                 "per_try_timeout": "1s",
///             },
///             "request_mirror_policy": {
///                 "destination": {
///                     "service_name": "new",
///                     "weight": 1,
///                 },
///             },
///             "cors_policy": {
///                 "allow_origins": ["example"],
///                 "allow_methods": [
///                     "GET",
///                     "PUT",
///                 ],
///                 "allow_headers": [
///                     "version",
///                     "type",
///                 ],
///                 "expose_headers": [
///                     "version",
///                     "type",
///                 ],
///                 "max_age": "1s",
///                 "allow_credentials": True,
///                 "disabled": False,
///             },
///             "request_header_modifier": {
///                 "set": {
///                     "version": "1",
///                     "type": "json",
///                 },
///                 "add": {
///                     "minor-version": "1",
///                 },
///                 "removes": ["arg"],
///             },
///             "response_header_modifier": {
///                 "set": {
///                     "version": "1",
///                     "type": "json",
///                 },
///                 "add": {
///                     "minor-version": "1",
///                 },
///                 "removes": ["removearg"],
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
///     var @default = new Gcp.NetworkServices.HttpRoute("default", new()
///     {
///         Name = "my-http-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.HttpRouteRuleArgs
///             {
///                 Action = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionArgs
///                 {
///                     FaultInjectionPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionFaultInjectionPolicyArgs
///                     {
///                         Delay = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionFaultInjectionPolicyDelayArgs
///                         {
///                             FixedDelay = "1s",
///                             Percentage = 1,
///                         },
///                         Abort = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionFaultInjectionPolicyAbortArgs
///                         {
///                             HttpStatus = 500,
///                             Percentage = 1,
///                         },
///                     },
///                     UrlRewrite = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionUrlRewriteArgs
///                     {
///                         PathPrefixRewrite = "new-prefix",
///                         HostRewrite = "new-host",
///                     },
///                     RetryPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRetryPolicyArgs
///                     {
///                         RetryConditions = new[]
///                         {
///                             "server_error",
///                         },
///                         NumRetries = 1,
///                         PerTryTimeout = "1s",
///                     },
///                     RequestMirrorPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRequestMirrorPolicyArgs
///                     {
///                         Destination = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs
///                         {
///                             ServiceName = "new",
///                             Weight = 1,
///                         },
///                     },
///                     CorsPolicy = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionCorsPolicyArgs
///                     {
///                         AllowOrigins = new[]
///                         {
///                             "example",
///                         },
///                         AllowMethods = new[]
///                         {
///                             "GET",
///                             "PUT",
///                         },
///                         AllowHeaders = new[]
///                         {
///                             "version",
///                             "type",
///                         },
///                         ExposeHeaders = new[]
///                         {
///                             "version",
///                             "type",
///                         },
///                         MaxAge = "1s",
///                         AllowCredentials = true,
///                         Disabled = false,
///                     },
///                     RequestHeaderModifier = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionRequestHeaderModifierArgs
///                     {
///                         Set =
///                         {
///                             { "version", "1" },
///                             { "type", "json" },
///                         },
///                         Add =
///                         {
///                             { "minor-version", "1" },
///                         },
///                         Removes = new[]
///                         {
///                             "arg",
///                         },
///                     },
///                     ResponseHeaderModifier = new Gcp.NetworkServices.Inputs.HttpRouteRuleActionResponseHeaderModifierArgs
///                     {
///                         Set =
///                         {
///                             { "version", "1" },
///                             { "type", "json" },
///                         },
///                         Add =
///                         {
///                             { "minor-version", "1" },
///                         },
///                         Removes = new[]
///                         {
///                             "removearg",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkservices.NewHttpRoute(ctx, "default", &networkservices.HttpRouteArgs{
/// 			Name: pulumi.String("my-http-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Rules: networkservices.HttpRouteRuleArray{
/// 				&networkservices.HttpRouteRuleArgs{
/// 					Action: &networkservices.HttpRouteRuleActionArgs{
/// 						FaultInjectionPolicy: &networkservices.HttpRouteRuleActionFaultInjectionPolicyArgs{
/// 							Delay: &networkservices.HttpRouteRuleActionFaultInjectionPolicyDelayArgs{
/// 								FixedDelay: pulumi.String("1s"),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 							Abort: &networkservices.HttpRouteRuleActionFaultInjectionPolicyAbortArgs{
/// 								HttpStatus: pulumi.Int(500),
/// 								Percentage: pulumi.Int(1),
/// 							},
/// 						},
/// 						UrlRewrite: &networkservices.HttpRouteRuleActionUrlRewriteArgs{
/// 							PathPrefixRewrite: pulumi.String("new-prefix"),
/// 							HostRewrite:       pulumi.String("new-host"),
/// 						},
/// 						RetryPolicy: &networkservices.HttpRouteRuleActionRetryPolicyArgs{
/// 							RetryConditions: pulumi.StringArray{
/// 								pulumi.String("server_error"),
/// 							},
/// 							NumRetries:    pulumi.Int(1),
/// 							PerTryTimeout: pulumi.String("1s"),
/// 						},
/// 						RequestMirrorPolicy: &networkservices.HttpRouteRuleActionRequestMirrorPolicyArgs{
/// 							Destination: &networkservices.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs{
/// 								ServiceName: pulumi.String("new"),
/// 								Weight:      pulumi.Int(1),
/// 							},
/// 						},
/// 						CorsPolicy: &networkservices.HttpRouteRuleActionCorsPolicyArgs{
/// 							AllowOrigins: pulumi.StringArray{
/// 								pulumi.String("example"),
/// 							},
/// 							AllowMethods: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 								pulumi.String("PUT"),
/// 							},
/// 							AllowHeaders: pulumi.StringArray{
/// 								pulumi.String("version"),
/// 								pulumi.String("type"),
/// 							},
/// 							ExposeHeaders: pulumi.StringArray{
/// 								pulumi.String("version"),
/// 								pulumi.String("type"),
/// 							},
/// 							MaxAge:           pulumi.String("1s"),
/// 							AllowCredentials: pulumi.Bool(true),
/// 							Disabled:         pulumi.Bool(false),
/// 						},
/// 						RequestHeaderModifier: &networkservices.HttpRouteRuleActionRequestHeaderModifierArgs{
/// 							Set: pulumi.StringMap{
/// 								"version": pulumi.String("1"),
/// 								"type":    pulumi.String("json"),
/// 							},
/// 							Add: pulumi.StringMap{
/// 								"minor-version": pulumi.String("1"),
/// 							},
/// 							Removes: pulumi.StringArray{
/// 								pulumi.String("arg"),
/// 							},
/// 						},
/// 						ResponseHeaderModifier: &networkservices.HttpRouteRuleActionResponseHeaderModifierArgs{
/// 							Set: pulumi.StringMap{
/// 								"version": pulumi.String("1"),
/// 								"type":    pulumi.String("json"),
/// 							},
/// 							Add: pulumi.StringMap{
/// 								"minor-version": pulumi.String("1"),
/// 							},
/// 							Removes: pulumi.StringArray{
/// 								pulumi.String("removearg"),
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
/// import com.pulumi.gcp.networkservices.HttpRoute;
/// import com.pulumi.gcp.networkservices.HttpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionFaultInjectionPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionFaultInjectionPolicyDelayArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionFaultInjectionPolicyAbortArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionUrlRewriteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRetryPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRequestMirrorPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRequestMirrorPolicyDestinationArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionCorsPolicyArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionRequestHeaderModifierArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleActionResponseHeaderModifierArgs;
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
///         var default_ = new HttpRoute("default", HttpRouteArgs.builder()
///             .name("my-http-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .rules(HttpRouteRuleArgs.builder()
///                 .action(HttpRouteRuleActionArgs.builder()
///                     .faultInjectionPolicy(HttpRouteRuleActionFaultInjectionPolicyArgs.builder()
///                         .delay(HttpRouteRuleActionFaultInjectionPolicyDelayArgs.builder()
///                             .fixedDelay("1s")
///                             .percentage(1)
///                             .build())
///                         .abort(HttpRouteRuleActionFaultInjectionPolicyAbortArgs.builder()
///                             .httpStatus(500)
///                             .percentage(1)
///                             .build())
///                         .build())
///                     .urlRewrite(HttpRouteRuleActionUrlRewriteArgs.builder()
///                         .pathPrefixRewrite("new-prefix")
///                         .hostRewrite("new-host")
///                         .build())
///                     .retryPolicy(HttpRouteRuleActionRetryPolicyArgs.builder()
///                         .retryConditions("server_error")
///                         .numRetries(1)
///                         .perTryTimeout("1s")
///                         .build())
///                     .requestMirrorPolicy(HttpRouteRuleActionRequestMirrorPolicyArgs.builder()
///                         .destination(HttpRouteRuleActionRequestMirrorPolicyDestinationArgs.builder()
///                             .serviceName("new")
///                             .weight(1)
///                             .build())
///                         .build())
///                     .corsPolicy(HttpRouteRuleActionCorsPolicyArgs.builder()
///                         .allowOrigins("example")
///                         .allowMethods(
///                             "GET",
///                             "PUT")
///                         .allowHeaders(
///                             "version",
///                             "type")
///                         .exposeHeaders(
///                             "version",
///                             "type")
///                         .maxAge("1s")
///                         .allowCredentials(true)
///                         .disabled(false)
///                         .build())
///                     .requestHeaderModifier(HttpRouteRuleActionRequestHeaderModifierArgs.builder()
///                         .set(Map.ofEntries(
///                             Map.entry("version", "1"),
///                             Map.entry("type", "json")
///                         ))
///                         .add(Map.of("minor-version", "1"))
///                         .removes("arg")
///                         .build())
///                     .responseHeaderModifier(HttpRouteRuleActionResponseHeaderModifierArgs.builder()
///                         .set(Map.ofEntries(
///                             Map.entry("version", "1"),
///                             Map.entry("type", "json")
///                         ))
///                         .add(Map.of("minor-version", "1"))
///                         .removes("removearg")
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
///   default:
///     type: gcp:networkservices:HttpRoute
///     properties:
///       name: my-http-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       rules:
///         - action:
///             faultInjectionPolicy:
///               delay:
///                 fixedDelay: 1s
///                 percentage: 1
///               abort:
///                 httpStatus: 500
///                 percentage: 1
///             urlRewrite:
///               pathPrefixRewrite: new-prefix
///               hostRewrite: new-host
///             retryPolicy:
///               retryConditions:
///                 - server_error
///               numRetries: 1
///               perTryTimeout: 1s
///             requestMirrorPolicy:
///               destination:
///                 serviceName: new
///                 weight: 1
///             corsPolicy:
///               allowOrigins:
///                 - example
///               allowMethods:
///                 - GET
///                 - PUT
///               allowHeaders:
///                 - version
///                 - type
///               exposeHeaders:
///                 - version
///                 - type
///               maxAge: 1s
///               allowCredentials: true
///               disabled: false
///             requestHeaderModifier:
///               set:
///                 version: '1'
///                 type: json
///               add:
///                 minor-version: '1'
///               removes:
///                 - arg
///             responseHeaderModifier:
///               set:
///                 version: '1'
///                 type: json
///               add:
///                 minor-version: '1'
///               removes:
///                 - removearg
/// ```
///
/// ### Network Services Http Route Mesh Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networkservices.Mesh("default", {
///     name: "my-http-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
/// });
/// const defaultHttpRoute = new gcp.networkservices.HttpRoute("default", {
///     name: "my-http-route",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     hostnames: ["example"],
///     meshes: [_default.id],
///     rules: [{
///         matches: [{
///             queryParameters: [{
///                 queryParameter: "key",
///                 exactMatch: "value",
///             }],
///             fullPathMatch: "example",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networkservices.Mesh("default",
///     name="my-http-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description")
/// default_http_route = gcp.networkservices.HttpRoute("default",
///     name="my-http-route",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     hostnames=["example"],
///     meshes=[default.id],
///     rules=[{
///         "matches": [{
///             "query_parameters": [{
///                 "query_parameter": "key",
///                 "exact_match": "value",
///             }],
///             "full_path_match": "example",
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
///     var @default = new Gcp.NetworkServices.Mesh("default", new()
///     {
///         Name = "my-http-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///     });
///
///     var defaultHttpRoute = new Gcp.NetworkServices.HttpRoute("default", new()
///     {
///         Name = "my-http-route",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Hostnames = new[]
///         {
///             "example",
///         },
///         Meshes = new[]
///         {
///             @default.Id,
///         },
///         Rules = new[]
///         {
///             new Gcp.NetworkServices.Inputs.HttpRouteRuleArgs
///             {
///                 Matches = new[]
///                 {
///                     new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchArgs
///                     {
///                         QueryParameters = new[]
///                         {
///                             new Gcp.NetworkServices.Inputs.HttpRouteRuleMatchQueryParameterArgs
///                             {
///                                 QueryParameter = "key",
///                                 ExactMatch = "value",
///                             },
///                         },
///                         FullPathMatch = "example",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := networkservices.NewMesh(ctx, "default", &networkservices.MeshArgs{
/// 			Name: pulumi.String("my-http-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkservices.NewHttpRoute(ctx, "default", &networkservices.HttpRouteArgs{
/// 			Name: pulumi.String("my-http-route"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Hostnames: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			Meshes: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			Rules: networkservices.HttpRouteRuleArray{
/// 				&networkservices.HttpRouteRuleArgs{
/// 					Matches: networkservices.HttpRouteRuleMatchArray{
/// 						&networkservices.HttpRouteRuleMatchArgs{
/// 							QueryParameters: networkservices.HttpRouteRuleMatchQueryParameterArray{
/// 								&networkservices.HttpRouteRuleMatchQueryParameterArgs{
/// 									QueryParameter: pulumi.String("key"),
/// 									ExactMatch:     pulumi.String("value"),
/// 								},
/// 							},
/// 							FullPathMatch: pulumi.String("example"),
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
/// import com.pulumi.gcp.networkservices.Mesh;
/// import com.pulumi.gcp.networkservices.MeshArgs;
/// import com.pulumi.gcp.networkservices.HttpRoute;
/// import com.pulumi.gcp.networkservices.HttpRouteArgs;
/// import com.pulumi.gcp.networkservices.inputs.HttpRouteRuleArgs;
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
///         var default_ = new Mesh("default", MeshArgs.builder()
///             .name("my-http-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .build());
///
///         var defaultHttpRoute = new HttpRoute("defaultHttpRoute", HttpRouteArgs.builder()
///             .name("my-http-route")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .hostnames("example")
///             .meshes(default_.id())
///             .rules(HttpRouteRuleArgs.builder()
///                 .matches(HttpRouteRuleMatchArgs.builder()
///                     .queryParameters(HttpRouteRuleMatchQueryParameterArgs.builder()
///                         .queryParameter("key")
///                         .exactMatch("value")
///                         .build())
///                     .fullPathMatch("example")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networkservices:Mesh
///     properties:
///       name: my-http-route
///       labels:
///         foo: bar
///       description: my description
///   defaultHttpRoute:
///     type: gcp:networkservices:HttpRoute
///     name: default
///     properties:
///       name: my-http-route
///       labels:
///         foo: bar
///       description: my description
///       hostnames:
///         - example
///       meshes:
///         - ${default.id}
///       rules:
///         - matches:
///             - queryParameters:
///                 - queryParameter: key
///                   exactMatch: value
///               fullPathMatch: example
/// ```
///
///
/// ## Import
///
/// HttpRoute can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/httpRoutes/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HttpRoute can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default projects/{{project}}/locations/global/httpRoutes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkservices/httpRoute:HttpRoute default {{name}}
/// ```
class HttpRoute extends pulumi.CustomResource {
  /// Time the HttpRoute was created in UTC.
  late final pulumi.Output<String> createTime;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Gateways defines a list of gateways this HttpRoute is attached to, as one of the routing rules to route the requests served by the gateway.
  /// Each gateway reference should match the pattern: projects/*/locations/global/gateways/<gateway_name>
  late final pulumi.Output<List<String>?> gateways;
  /// Set of hosts that should match against the HTTP host header to select a HttpRoute to process the request.
  late final pulumi.Output<List<String>> hostnames;
  /// Set of label tags associated with the HttpRoute resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing rules to route the requests served by the mesh.
  /// Each mesh reference should match the pattern: projects/*/locations/global/meshes/<mesh_name>.
  /// The attached Mesh should be of a type SIDECAR.
  late final pulumi.Output<List<String>?> meshes;
  /// Name of the HttpRoute resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Rules that define how traffic is routed and handled.
  /// Structure is documented below.
  late final pulumi.Output<List<HttpRouteRule>> rules;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// Time the HttpRoute was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [HttpRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpRoute]. {@macro pulumi_networkservices_http_route_http_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpRoute(
    String name, {
    HttpRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkservices/httpRoute:HttpRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.gateways = registerOutput<List<String>?>('gateways');
    this.hostnames = registerOutput<List<String>>('hostnames');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.meshes = registerOutput<List<String>?>('meshes');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rules = registerOutput<List<HttpRouteRule>>('rules');
    this.selfLink = registerOutput<String>('selfLink');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
