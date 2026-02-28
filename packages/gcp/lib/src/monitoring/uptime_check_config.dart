import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_args.dart';
import 'uptime_check_config_content_matcher.dart';
import 'uptime_check_config_http_check.dart';
import 'uptime_check_config_monitored_resource.dart';
import 'uptime_check_config_resource_group.dart';
import 'uptime_check_config_synthetic_monitor.dart';
import 'uptime_check_config_tcp_check.dart';

/// This message configures which resources and services to monitor for availability.
///
///
/// To get more information about UptimeCheckConfig, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.uptimeCheckConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/uptime-checks/)
///
///
///
/// ## Example Usage
///
/// ### Uptime Check Config Http
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http = new gcp.monitoring.UptimeCheckConfig("http", {
///     displayName: "http-uptime-check",
///     timeout: "60s",
///     logCheckFailures: true,
///     userLabels: {
///         "example-key": "example-value",
///     },
///     httpCheck: {
///         path: "some-path",
///         port: 8010,
///         requestMethod: "POST",
///         contentType: "USER_PROVIDED",
///         customContentType: "application/json",
///         body: "Zm9vJTI1M0RiYXI=",
///         pingConfig: {
///             pingsCount: 1,
///         },
///     },
///     monitoredResource: {
///         type: "uptime_url",
///         labels: {
///             project_id: "my-project-name",
///             host: "192.168.1.1",
///         },
///     },
///     contentMatchers: [{
///         content: "\"example\"",
///         matcher: "MATCHES_JSON_PATH",
///         jsonPathMatcher: {
///             jsonPath: "$.path",
///             jsonMatcher: "EXACT_MATCH",
///         },
///     }],
///     checkerType: "STATIC_IP_CHECKERS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http = gcp.monitoring.UptimeCheckConfig("http",
///     display_name="http-uptime-check",
///     timeout="60s",
///     log_check_failures=True,
///     user_labels={
///         "example-key": "example-value",
///     },
///     http_check={
///         "path": "some-path",
///         "port": 8010,
///         "request_method": "POST",
///         "content_type": "USER_PROVIDED",
///         "custom_content_type": "application/json",
///         "body": "Zm9vJTI1M0RiYXI=",
///         "ping_config": {
///             "pings_count": 1,
///         },
///     },
///     monitored_resource={
///         "type": "uptime_url",
///         "labels": {
///             "project_id": "my-project-name",
///             "host": "192.168.1.1",
///         },
///     },
///     content_matchers=[{
///         "content": "\"example\"",
///         "matcher": "MATCHES_JSON_PATH",
///         "json_path_matcher": {
///             "json_path": "$.path",
///             "json_matcher": "EXACT_MATCH",
///         },
///     }],
///     checker_type="STATIC_IP_CHECKERS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http = new Gcp.Monitoring.UptimeCheckConfig("http", new()
///     {
///         DisplayName = "http-uptime-check",
///         Timeout = "60s",
///         LogCheckFailures = true,
///         UserLabels =
///         {
///             { "example-key", "example-value" },
///         },
///         HttpCheck = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckArgs
///         {
///             Path = "some-path",
///             Port = 8010,
///             RequestMethod = "POST",
///             ContentType = "USER_PROVIDED",
///             CustomContentType = "application/json",
///             Body = "Zm9vJTI1M0RiYXI=",
///             PingConfig = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckPingConfigArgs
///             {
///                 PingsCount = 1,
///             },
///         },
///         MonitoredResource = new Gcp.Monitoring.Inputs.UptimeCheckConfigMonitoredResourceArgs
///         {
///             Type = "uptime_url",
///             Labels =
///             {
///                 { "project_id", "my-project-name" },
///                 { "host", "192.168.1.1" },
///             },
///         },
///         ContentMatchers = new[]
///         {
///             new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherArgs
///             {
///                 Content = "\"example\"",
///                 Matcher = "MATCHES_JSON_PATH",
///                 JsonPathMatcher = new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs
///                 {
///                     JsonPath = "$.path",
///                     JsonMatcher = "EXACT_MATCH",
///                 },
///             },
///         },
///         CheckerType = "STATIC_IP_CHECKERS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewUptimeCheckConfig(ctx, "http", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName:      pulumi.String("http-uptime-check"),
/// 			Timeout:          pulumi.String("60s"),
/// 			LogCheckFailures: pulumi.Bool(true),
/// 			UserLabels: pulumi.StringMap{
/// 				"example-key": pulumi.String("example-value"),
/// 			},
/// 			HttpCheck: &monitoring.UptimeCheckConfigHttpCheckArgs{
/// 				Path:              pulumi.String("some-path"),
/// 				Port:              pulumi.Int(8010),
/// 				RequestMethod:     pulumi.String("POST"),
/// 				ContentType:       pulumi.String("USER_PROVIDED"),
/// 				CustomContentType: pulumi.String("application/json"),
/// 				Body:              pulumi.String("Zm9vJTI1M0RiYXI="),
/// 				PingConfig: &monitoring.UptimeCheckConfigHttpCheckPingConfigArgs{
/// 					PingsCount: pulumi.Int(1),
/// 				},
/// 			},
/// 			MonitoredResource: &monitoring.UptimeCheckConfigMonitoredResourceArgs{
/// 				Type: pulumi.String("uptime_url"),
/// 				Labels: pulumi.StringMap{
/// 					"project_id": pulumi.String("my-project-name"),
/// 					"host":       pulumi.String("192.168.1.1"),
/// 				},
/// 			},
/// 			ContentMatchers: monitoring.UptimeCheckConfigContentMatcherArray{
/// 				&monitoring.UptimeCheckConfigContentMatcherArgs{
/// 					Content: pulumi.String("\"example\""),
/// 					Matcher: pulumi.String("MATCHES_JSON_PATH"),
/// 					JsonPathMatcher: &monitoring.UptimeCheckConfigContentMatcherJsonPathMatcherArgs{
/// 						JsonPath:    pulumi.String("$.path"),
/// 						JsonMatcher: pulumi.String("EXACT_MATCH"),
/// 					},
/// 				},
/// 			},
/// 			CheckerType: pulumi.String("STATIC_IP_CHECKERS"),
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
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckPingConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigMonitoredResourceArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs;
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
///         var http = new UptimeCheckConfig("http", UptimeCheckConfigArgs.builder()
///             .displayName("http-uptime-check")
///             .timeout("60s")
///             .logCheckFailures(true)
///             .userLabels(Map.of("example-key", "example-value"))
///             .httpCheck(UptimeCheckConfigHttpCheckArgs.builder()
///                 .path("some-path")
///                 .port(8010)
///                 .requestMethod("POST")
///                 .contentType("USER_PROVIDED")
///                 .customContentType("application/json")
///                 .body("Zm9vJTI1M0RiYXI=")
///                 .pingConfig(UptimeCheckConfigHttpCheckPingConfigArgs.builder()
///                     .pingsCount(1)
///                     .build())
///                 .build())
///             .monitoredResource(UptimeCheckConfigMonitoredResourceArgs.builder()
///                 .type("uptime_url")
///                 .labels(Map.ofEntries(
///                     Map.entry("project_id", "my-project-name"),
///                     Map.entry("host", "192.168.1.1")
///                 ))
///                 .build())
///             .contentMatchers(UptimeCheckConfigContentMatcherArgs.builder()
///                 .content("\"example\"")
///                 .matcher("MATCHES_JSON_PATH")
///                 .jsonPathMatcher(UptimeCheckConfigContentMatcherJsonPathMatcherArgs.builder()
///                     .jsonPath("$.path")
///                     .jsonMatcher("EXACT_MATCH")
///                     .build())
///                 .build())
///             .checkerType("STATIC_IP_CHECKERS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http:
///     type: gcp:monitoring:UptimeCheckConfig
///     properties:
///       displayName: http-uptime-check
///       timeout: 60s
///       logCheckFailures: true
///       userLabels:
///         example-key: example-value
///       httpCheck:
///         path: some-path
///         port: '8010'
///         requestMethod: POST
///         contentType: USER_PROVIDED
///         customContentType: application/json
///         body: Zm9vJTI1M0RiYXI=
///         pingConfig:
///           pingsCount: 1
///       monitoredResource:
///         type: uptime_url
///         labels:
///           project_id: my-project-name
///           host: 192.168.1.1
///       contentMatchers:
///         - content: '"example"'
///           matcher: MATCHES_JSON_PATH
///           jsonPathMatcher:
///             jsonPath: $.path
///             jsonMatcher: EXACT_MATCH
///       checkerType: STATIC_IP_CHECKERS
/// ```
///
/// ### Uptime Check Config Http Password Wo
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const http = new gcp.monitoring.UptimeCheckConfig("http", {
///     displayName: "http-uptime-check",
///     timeout: "60s",
///     userLabels: {
///         "example-key": "example-value",
///     },
///     httpCheck: {
///         path: "some-path",
///         port: 8010,
///         requestMethod: "POST",
///         contentType: "USER_PROVIDED",
///         customContentType: "application/json",
///         body: "Zm9vJTI1M0RiYXI=",
///         pingConfig: {
///             pingsCount: 1,
///         },
///         authInfo: {
///             username: "name",
///             passwordWo: "password1",
///             passwordWoVersion: "1",
///         },
///     },
///     monitoredResource: {
///         type: "uptime_url",
///         labels: {
///             project_id: "my-project-name",
///             host: "192.168.1.1",
///         },
///     },
///     contentMatchers: [{
///         content: "\"example\"",
///         matcher: "MATCHES_JSON_PATH",
///         jsonPathMatcher: {
///             jsonPath: "$.path",
///             jsonMatcher: "EXACT_MATCH",
///         },
///     }],
///     checkerType: "STATIC_IP_CHECKERS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// http = gcp.monitoring.UptimeCheckConfig("http",
///     display_name="http-uptime-check",
///     timeout="60s",
///     user_labels={
///         "example-key": "example-value",
///     },
///     http_check={
///         "path": "some-path",
///         "port": 8010,
///         "request_method": "POST",
///         "content_type": "USER_PROVIDED",
///         "custom_content_type": "application/json",
///         "body": "Zm9vJTI1M0RiYXI=",
///         "ping_config": {
///             "pings_count": 1,
///         },
///         "auth_info": {
///             "username": "name",
///             "password_wo": "password1",
///             "password_wo_version": "1",
///         },
///     },
///     monitored_resource={
///         "type": "uptime_url",
///         "labels": {
///             "project_id": "my-project-name",
///             "host": "192.168.1.1",
///         },
///     },
///     content_matchers=[{
///         "content": "\"example\"",
///         "matcher": "MATCHES_JSON_PATH",
///         "json_path_matcher": {
///             "json_path": "$.path",
///             "json_matcher": "EXACT_MATCH",
///         },
///     }],
///     checker_type="STATIC_IP_CHECKERS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var http = new Gcp.Monitoring.UptimeCheckConfig("http", new()
///     {
///         DisplayName = "http-uptime-check",
///         Timeout = "60s",
///         UserLabels =
///         {
///             { "example-key", "example-value" },
///         },
///         HttpCheck = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckArgs
///         {
///             Path = "some-path",
///             Port = 8010,
///             RequestMethod = "POST",
///             ContentType = "USER_PROVIDED",
///             CustomContentType = "application/json",
///             Body = "Zm9vJTI1M0RiYXI=",
///             PingConfig = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckPingConfigArgs
///             {
///                 PingsCount = 1,
///             },
///             AuthInfo = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckAuthInfoArgs
///             {
///                 Username = "name",
///                 PasswordWo = "password1",
///                 PasswordWoVersion = "1",
///             },
///         },
///         MonitoredResource = new Gcp.Monitoring.Inputs.UptimeCheckConfigMonitoredResourceArgs
///         {
///             Type = "uptime_url",
///             Labels =
///             {
///                 { "project_id", "my-project-name" },
///                 { "host", "192.168.1.1" },
///             },
///         },
///         ContentMatchers = new[]
///         {
///             new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherArgs
///             {
///                 Content = "\"example\"",
///                 Matcher = "MATCHES_JSON_PATH",
///                 JsonPathMatcher = new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs
///                 {
///                     JsonPath = "$.path",
///                     JsonMatcher = "EXACT_MATCH",
///                 },
///             },
///         },
///         CheckerType = "STATIC_IP_CHECKERS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewUptimeCheckConfig(ctx, "http", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName: pulumi.String("http-uptime-check"),
/// 			Timeout:     pulumi.String("60s"),
/// 			UserLabels: pulumi.StringMap{
/// 				"example-key": pulumi.String("example-value"),
/// 			},
/// 			HttpCheck: &monitoring.UptimeCheckConfigHttpCheckArgs{
/// 				Path:              pulumi.String("some-path"),
/// 				Port:              pulumi.Int(8010),
/// 				RequestMethod:     pulumi.String("POST"),
/// 				ContentType:       pulumi.String("USER_PROVIDED"),
/// 				CustomContentType: pulumi.String("application/json"),
/// 				Body:              pulumi.String("Zm9vJTI1M0RiYXI="),
/// 				PingConfig: &monitoring.UptimeCheckConfigHttpCheckPingConfigArgs{
/// 					PingsCount: pulumi.Int(1),
/// 				},
/// 				AuthInfo: &monitoring.UptimeCheckConfigHttpCheckAuthInfoArgs{
/// 					Username:          pulumi.String("name"),
/// 					PasswordWo:        pulumi.String("password1"),
/// 					PasswordWoVersion: pulumi.String("1"),
/// 				},
/// 			},
/// 			MonitoredResource: &monitoring.UptimeCheckConfigMonitoredResourceArgs{
/// 				Type: pulumi.String("uptime_url"),
/// 				Labels: pulumi.StringMap{
/// 					"project_id": pulumi.String("my-project-name"),
/// 					"host":       pulumi.String("192.168.1.1"),
/// 				},
/// 			},
/// 			ContentMatchers: monitoring.UptimeCheckConfigContentMatcherArray{
/// 				&monitoring.UptimeCheckConfigContentMatcherArgs{
/// 					Content: pulumi.String("\"example\""),
/// 					Matcher: pulumi.String("MATCHES_JSON_PATH"),
/// 					JsonPathMatcher: &monitoring.UptimeCheckConfigContentMatcherJsonPathMatcherArgs{
/// 						JsonPath:    pulumi.String("$.path"),
/// 						JsonMatcher: pulumi.String("EXACT_MATCH"),
/// 					},
/// 				},
/// 			},
/// 			CheckerType: pulumi.String("STATIC_IP_CHECKERS"),
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
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckPingConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckAuthInfoArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigMonitoredResourceArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs;
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
///         var http = new UptimeCheckConfig("http", UptimeCheckConfigArgs.builder()
///             .displayName("http-uptime-check")
///             .timeout("60s")
///             .userLabels(Map.of("example-key", "example-value"))
///             .httpCheck(UptimeCheckConfigHttpCheckArgs.builder()
///                 .path("some-path")
///                 .port(8010)
///                 .requestMethod("POST")
///                 .contentType("USER_PROVIDED")
///                 .customContentType("application/json")
///                 .body("Zm9vJTI1M0RiYXI=")
///                 .pingConfig(UptimeCheckConfigHttpCheckPingConfigArgs.builder()
///                     .pingsCount(1)
///                     .build())
///                 .authInfo(UptimeCheckConfigHttpCheckAuthInfoArgs.builder()
///                     .username("name")
///                     .passwordWo("password1")
///                     .passwordWoVersion("1")
///                     .build())
///                 .build())
///             .monitoredResource(UptimeCheckConfigMonitoredResourceArgs.builder()
///                 .type("uptime_url")
///                 .labels(Map.ofEntries(
///                     Map.entry("project_id", "my-project-name"),
///                     Map.entry("host", "192.168.1.1")
///                 ))
///                 .build())
///             .contentMatchers(UptimeCheckConfigContentMatcherArgs.builder()
///                 .content("\"example\"")
///                 .matcher("MATCHES_JSON_PATH")
///                 .jsonPathMatcher(UptimeCheckConfigContentMatcherJsonPathMatcherArgs.builder()
///                     .jsonPath("$.path")
///                     .jsonMatcher("EXACT_MATCH")
///                     .build())
///                 .build())
///             .checkerType("STATIC_IP_CHECKERS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   http:
///     type: gcp:monitoring:UptimeCheckConfig
///     properties:
///       displayName: http-uptime-check
///       timeout: 60s
///       userLabels:
///         example-key: example-value
///       httpCheck:
///         path: some-path
///         port: '8010'
///         requestMethod: POST
///         contentType: USER_PROVIDED
///         customContentType: application/json
///         body: Zm9vJTI1M0RiYXI=
///         pingConfig:
///           pingsCount: 1
///         authInfo:
///           username: name
///           passwordWo: password1
///           passwordWoVersion: '1'
///       monitoredResource:
///         type: uptime_url
///         labels:
///           project_id: my-project-name
///           host: 192.168.1.1
///       contentMatchers:
///         - content: '"example"'
///           matcher: MATCHES_JSON_PATH
///           jsonPathMatcher:
///             jsonPath: $.path
///             jsonMatcher: EXACT_MATCH
///       checkerType: STATIC_IP_CHECKERS
/// ```
///
/// ### Uptime Check Config Status Code
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const statusCode = new gcp.monitoring.UptimeCheckConfig("status_code", {
///     displayName: "http-uptime-check",
///     timeout: "60s",
///     httpCheck: {
///         path: "some-path",
///         port: 8010,
///         requestMethod: "POST",
///         contentType: "URL_ENCODED",
///         body: "Zm9vJTI1M0RiYXI=",
///         acceptedResponseStatusCodes: [
///             {
///                 statusClass: "STATUS_CLASS_2XX",
///             },
///             {
///                 statusValue: 301,
///             },
///             {
///                 statusValue: 302,
///             },
///         ],
///     },
///     monitoredResource: {
///         type: "uptime_url",
///         labels: {
///             project_id: "my-project-name",
///             host: "192.168.1.1",
///         },
///     },
///     contentMatchers: [{
///         content: "\"example\"",
///         matcher: "MATCHES_JSON_PATH",
///         jsonPathMatcher: {
///             jsonPath: "$.path",
///             jsonMatcher: "EXACT_MATCH",
///         },
///     }],
///     checkerType: "STATIC_IP_CHECKERS",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// status_code = gcp.monitoring.UptimeCheckConfig("status_code",
///     display_name="http-uptime-check",
///     timeout="60s",
///     http_check={
///         "path": "some-path",
///         "port": 8010,
///         "request_method": "POST",
///         "content_type": "URL_ENCODED",
///         "body": "Zm9vJTI1M0RiYXI=",
///         "accepted_response_status_codes": [
///             {
///                 "status_class": "STATUS_CLASS_2XX",
///             },
///             {
///                 "status_value": 301,
///             },
///             {
///                 "status_value": 302,
///             },
///         ],
///     },
///     monitored_resource={
///         "type": "uptime_url",
///         "labels": {
///             "project_id": "my-project-name",
///             "host": "192.168.1.1",
///         },
///     },
///     content_matchers=[{
///         "content": "\"example\"",
///         "matcher": "MATCHES_JSON_PATH",
///         "json_path_matcher": {
///             "json_path": "$.path",
///             "json_matcher": "EXACT_MATCH",
///         },
///     }],
///     checker_type="STATIC_IP_CHECKERS")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var statusCode = new Gcp.Monitoring.UptimeCheckConfig("status_code", new()
///     {
///         DisplayName = "http-uptime-check",
///         Timeout = "60s",
///         HttpCheck = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckArgs
///         {
///             Path = "some-path",
///             Port = 8010,
///             RequestMethod = "POST",
///             ContentType = "URL_ENCODED",
///             Body = "Zm9vJTI1M0RiYXI=",
///             AcceptedResponseStatusCodes = new[]
///             {
///                 new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs
///                 {
///                     StatusClass = "STATUS_CLASS_2XX",
///                 },
///                 new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs
///                 {
///                     StatusValue = 301,
///                 },
///                 new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs
///                 {
///                     StatusValue = 302,
///                 },
///             },
///         },
///         MonitoredResource = new Gcp.Monitoring.Inputs.UptimeCheckConfigMonitoredResourceArgs
///         {
///             Type = "uptime_url",
///             Labels =
///             {
///                 { "project_id", "my-project-name" },
///                 { "host", "192.168.1.1" },
///             },
///         },
///         ContentMatchers = new[]
///         {
///             new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherArgs
///             {
///                 Content = "\"example\"",
///                 Matcher = "MATCHES_JSON_PATH",
///                 JsonPathMatcher = new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs
///                 {
///                     JsonPath = "$.path",
///                     JsonMatcher = "EXACT_MATCH",
///                 },
///             },
///         },
///         CheckerType = "STATIC_IP_CHECKERS",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewUptimeCheckConfig(ctx, "status_code", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName: pulumi.String("http-uptime-check"),
/// 			Timeout:     pulumi.String("60s"),
/// 			HttpCheck: &monitoring.UptimeCheckConfigHttpCheckArgs{
/// 				Path:          pulumi.String("some-path"),
/// 				Port:          pulumi.Int(8010),
/// 				RequestMethod: pulumi.String("POST"),
/// 				ContentType:   pulumi.String("URL_ENCODED"),
/// 				Body:          pulumi.String("Zm9vJTI1M0RiYXI="),
/// 				AcceptedResponseStatusCodes: monitoring.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArray{
/// 					&monitoring.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs{
/// 						StatusClass: pulumi.String("STATUS_CLASS_2XX"),
/// 					},
/// 					&monitoring.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs{
/// 						StatusValue: pulumi.Int(301),
/// 					},
/// 					&monitoring.UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs{
/// 						StatusValue: pulumi.Int(302),
/// 					},
/// 				},
/// 			},
/// 			MonitoredResource: &monitoring.UptimeCheckConfigMonitoredResourceArgs{
/// 				Type: pulumi.String("uptime_url"),
/// 				Labels: pulumi.StringMap{
/// 					"project_id": pulumi.String("my-project-name"),
/// 					"host":       pulumi.String("192.168.1.1"),
/// 				},
/// 			},
/// 			ContentMatchers: monitoring.UptimeCheckConfigContentMatcherArray{
/// 				&monitoring.UptimeCheckConfigContentMatcherArgs{
/// 					Content: pulumi.String("\"example\""),
/// 					Matcher: pulumi.String("MATCHES_JSON_PATH"),
/// 					JsonPathMatcher: &monitoring.UptimeCheckConfigContentMatcherJsonPathMatcherArgs{
/// 						JsonPath:    pulumi.String("$.path"),
/// 						JsonMatcher: pulumi.String("EXACT_MATCH"),
/// 					},
/// 				},
/// 			},
/// 			CheckerType: pulumi.String("STATIC_IP_CHECKERS"),
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
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigMonitoredResourceArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs;
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
///         var statusCode = new UptimeCheckConfig("statusCode", UptimeCheckConfigArgs.builder()
///             .displayName("http-uptime-check")
///             .timeout("60s")
///             .httpCheck(UptimeCheckConfigHttpCheckArgs.builder()
///                 .path("some-path")
///                 .port(8010)
///                 .requestMethod("POST")
///                 .contentType("URL_ENCODED")
///                 .body("Zm9vJTI1M0RiYXI=")
///                 .acceptedResponseStatusCodes(
///                     UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs.builder()
///                         .statusClass("STATUS_CLASS_2XX")
///                         .build(),
///                     UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs.builder()
///                         .statusValue(301)
///                         .build(),
///                     UptimeCheckConfigHttpCheckAcceptedResponseStatusCodeArgs.builder()
///                         .statusValue(302)
///                         .build())
///                 .build())
///             .monitoredResource(UptimeCheckConfigMonitoredResourceArgs.builder()
///                 .type("uptime_url")
///                 .labels(Map.ofEntries(
///                     Map.entry("project_id", "my-project-name"),
///                     Map.entry("host", "192.168.1.1")
///                 ))
///                 .build())
///             .contentMatchers(UptimeCheckConfigContentMatcherArgs.builder()
///                 .content("\"example\"")
///                 .matcher("MATCHES_JSON_PATH")
///                 .jsonPathMatcher(UptimeCheckConfigContentMatcherJsonPathMatcherArgs.builder()
///                     .jsonPath("$.path")
///                     .jsonMatcher("EXACT_MATCH")
///                     .build())
///                 .build())
///             .checkerType("STATIC_IP_CHECKERS")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   statusCode:
///     type: gcp:monitoring:UptimeCheckConfig
///     name: status_code
///     properties:
///       displayName: http-uptime-check
///       timeout: 60s
///       httpCheck:
///         path: some-path
///         port: '8010'
///         requestMethod: POST
///         contentType: URL_ENCODED
///         body: Zm9vJTI1M0RiYXI=
///         acceptedResponseStatusCodes:
///           - statusClass: STATUS_CLASS_2XX
///           - statusValue: 301
///           - statusValue: 302
///       monitoredResource:
///         type: uptime_url
///         labels:
///           project_id: my-project-name
///           host: 192.168.1.1
///       contentMatchers:
///         - content: '"example"'
///           matcher: MATCHES_JSON_PATH
///           jsonPathMatcher:
///             jsonPath: $.path
///             jsonMatcher: EXACT_MATCH
///       checkerType: STATIC_IP_CHECKERS
/// ```
///
/// ### Uptime Check Config Https
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const https = new gcp.monitoring.UptimeCheckConfig("https", {
///     displayName: "https-uptime-check",
///     timeout: "60s",
///     httpCheck: {
///         path: "/some-path",
///         port: 443,
///         useSsl: true,
///         validateSsl: true,
///     },
///     monitoredResource: {
///         type: "uptime_url",
///         labels: {
///             project_id: "my-project-name",
///             host: "192.168.1.1",
///         },
///     },
///     contentMatchers: [{
///         content: "example",
///         matcher: "MATCHES_JSON_PATH",
///         jsonPathMatcher: {
///             jsonPath: "$.path",
///             jsonMatcher: "REGEX_MATCH",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// https = gcp.monitoring.UptimeCheckConfig("https",
///     display_name="https-uptime-check",
///     timeout="60s",
///     http_check={
///         "path": "/some-path",
///         "port": 443,
///         "use_ssl": True,
///         "validate_ssl": True,
///     },
///     monitored_resource={
///         "type": "uptime_url",
///         "labels": {
///             "project_id": "my-project-name",
///             "host": "192.168.1.1",
///         },
///     },
///     content_matchers=[{
///         "content": "example",
///         "matcher": "MATCHES_JSON_PATH",
///         "json_path_matcher": {
///             "json_path": "$.path",
///             "json_matcher": "REGEX_MATCH",
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
///     var https = new Gcp.Monitoring.UptimeCheckConfig("https", new()
///     {
///         DisplayName = "https-uptime-check",
///         Timeout = "60s",
///         HttpCheck = new Gcp.Monitoring.Inputs.UptimeCheckConfigHttpCheckArgs
///         {
///             Path = "/some-path",
///             Port = 443,
///             UseSsl = true,
///             ValidateSsl = true,
///         },
///         MonitoredResource = new Gcp.Monitoring.Inputs.UptimeCheckConfigMonitoredResourceArgs
///         {
///             Type = "uptime_url",
///             Labels =
///             {
///                 { "project_id", "my-project-name" },
///                 { "host", "192.168.1.1" },
///             },
///         },
///         ContentMatchers = new[]
///         {
///             new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherArgs
///             {
///                 Content = "example",
///                 Matcher = "MATCHES_JSON_PATH",
///                 JsonPathMatcher = new Gcp.Monitoring.Inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs
///                 {
///                     JsonPath = "$.path",
///                     JsonMatcher = "REGEX_MATCH",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitoring.NewUptimeCheckConfig(ctx, "https", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName: pulumi.String("https-uptime-check"),
/// 			Timeout:     pulumi.String("60s"),
/// 			HttpCheck: &monitoring.UptimeCheckConfigHttpCheckArgs{
/// 				Path:        pulumi.String("/some-path"),
/// 				Port:        pulumi.Int(443),
/// 				UseSsl:      pulumi.Bool(true),
/// 				ValidateSsl: pulumi.Bool(true),
/// 			},
/// 			MonitoredResource: &monitoring.UptimeCheckConfigMonitoredResourceArgs{
/// 				Type: pulumi.String("uptime_url"),
/// 				Labels: pulumi.StringMap{
/// 					"project_id": pulumi.String("my-project-name"),
/// 					"host":       pulumi.String("192.168.1.1"),
/// 				},
/// 			},
/// 			ContentMatchers: monitoring.UptimeCheckConfigContentMatcherArray{
/// 				&monitoring.UptimeCheckConfigContentMatcherArgs{
/// 					Content: pulumi.String("example"),
/// 					Matcher: pulumi.String("MATCHES_JSON_PATH"),
/// 					JsonPathMatcher: &monitoring.UptimeCheckConfigContentMatcherJsonPathMatcherArgs{
/// 						JsonPath:    pulumi.String("$.path"),
/// 						JsonMatcher: pulumi.String("REGEX_MATCH"),
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
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigHttpCheckArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigMonitoredResourceArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigContentMatcherJsonPathMatcherArgs;
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
///         var https = new UptimeCheckConfig("https", UptimeCheckConfigArgs.builder()
///             .displayName("https-uptime-check")
///             .timeout("60s")
///             .httpCheck(UptimeCheckConfigHttpCheckArgs.builder()
///                 .path("/some-path")
///                 .port(443)
///                 .useSsl(true)
///                 .validateSsl(true)
///                 .build())
///             .monitoredResource(UptimeCheckConfigMonitoredResourceArgs.builder()
///                 .type("uptime_url")
///                 .labels(Map.ofEntries(
///                     Map.entry("project_id", "my-project-name"),
///                     Map.entry("host", "192.168.1.1")
///                 ))
///                 .build())
///             .contentMatchers(UptimeCheckConfigContentMatcherArgs.builder()
///                 .content("example")
///                 .matcher("MATCHES_JSON_PATH")
///                 .jsonPathMatcher(UptimeCheckConfigContentMatcherJsonPathMatcherArgs.builder()
///                     .jsonPath("$.path")
///                     .jsonMatcher("REGEX_MATCH")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   https:
///     type: gcp:monitoring:UptimeCheckConfig
///     properties:
///       displayName: https-uptime-check
///       timeout: 60s
///       httpCheck:
///         path: /some-path
///         port: '443'
///         useSsl: true
///         validateSsl: true
///       monitoredResource:
///         type: uptime_url
///         labels:
///           project_id: my-project-name
///           host: 192.168.1.1
///       contentMatchers:
///         - content: example
///           matcher: MATCHES_JSON_PATH
///           jsonPathMatcher:
///             jsonPath: $.path
///             jsonMatcher: REGEX_MATCH
/// ```
///
/// ### Uptime Check Tcp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const check = new gcp.monitoring.Group("check", {
///     displayName: "uptime-check-group",
///     filter: "resource.metadata.name=has_substring(\"foo\")",
/// });
/// const tcpGroup = new gcp.monitoring.UptimeCheckConfig("tcp_group", {
///     displayName: "tcp-uptime-check",
///     timeout: "60s",
///     tcpCheck: {
///         port: 888,
///         pingConfig: {
///             pingsCount: 2,
///         },
///     },
///     resourceGroup: {
///         resourceType: "INSTANCE",
///         groupId: check.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// check = gcp.monitoring.Group("check",
///     display_name="uptime-check-group",
///     filter="resource.metadata.name=has_substring(\"foo\")")
/// tcp_group = gcp.monitoring.UptimeCheckConfig("tcp_group",
///     display_name="tcp-uptime-check",
///     timeout="60s",
///     tcp_check={
///         "port": 888,
///         "ping_config": {
///             "pings_count": 2,
///         },
///     },
///     resource_group={
///         "resource_type": "INSTANCE",
///         "group_id": check.name,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var check = new Gcp.Monitoring.Group("check", new()
///     {
///         DisplayName = "uptime-check-group",
///         Filter = "resource.metadata.name=has_substring(\"foo\")",
///     });
///
///     var tcpGroup = new Gcp.Monitoring.UptimeCheckConfig("tcp_group", new()
///     {
///         DisplayName = "tcp-uptime-check",
///         Timeout = "60s",
///         TcpCheck = new Gcp.Monitoring.Inputs.UptimeCheckConfigTcpCheckArgs
///         {
///             Port = 888,
///             PingConfig = new Gcp.Monitoring.Inputs.UptimeCheckConfigTcpCheckPingConfigArgs
///             {
///                 PingsCount = 2,
///             },
///         },
///         ResourceGroup = new Gcp.Monitoring.Inputs.UptimeCheckConfigResourceGroupArgs
///         {
///             ResourceType = "INSTANCE",
///             GroupId = check.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		check, err := monitoring.NewGroup(ctx, "check", &monitoring.GroupArgs{
/// 			DisplayName: pulumi.String("uptime-check-group"),
/// 			Filter:      pulumi.String("resource.metadata.name=has_substring(\"foo\")"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewUptimeCheckConfig(ctx, "tcp_group", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName: pulumi.String("tcp-uptime-check"),
/// 			Timeout:     pulumi.String("60s"),
/// 			TcpCheck: &monitoring.UptimeCheckConfigTcpCheckArgs{
/// 				Port: pulumi.Int(888),
/// 				PingConfig: &monitoring.UptimeCheckConfigTcpCheckPingConfigArgs{
/// 					PingsCount: pulumi.Int(2),
/// 				},
/// 			},
/// 			ResourceGroup: &monitoring.UptimeCheckConfigResourceGroupArgs{
/// 				ResourceType: pulumi.String("INSTANCE"),
/// 				GroupId:      check.Name,
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
/// import com.pulumi.gcp.monitoring.Group;
/// import com.pulumi.gcp.monitoring.GroupArgs;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigTcpCheckArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigTcpCheckPingConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigResourceGroupArgs;
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
///         var check = new Group("check", GroupArgs.builder()
///             .displayName("uptime-check-group")
///             .filter("resource.metadata.name=has_substring(\"foo\")")
///             .build());
///
///         var tcpGroup = new UptimeCheckConfig("tcpGroup", UptimeCheckConfigArgs.builder()
///             .displayName("tcp-uptime-check")
///             .timeout("60s")
///             .tcpCheck(UptimeCheckConfigTcpCheckArgs.builder()
///                 .port(888)
///                 .pingConfig(UptimeCheckConfigTcpCheckPingConfigArgs.builder()
///                     .pingsCount(2)
///                     .build())
///                 .build())
///             .resourceGroup(UptimeCheckConfigResourceGroupArgs.builder()
///                 .resourceType("INSTANCE")
///                 .groupId(check.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tcpGroup:
///     type: gcp:monitoring:UptimeCheckConfig
///     name: tcp_group
///     properties:
///       displayName: tcp-uptime-check
///       timeout: 60s
///       tcpCheck:
///         port: 888
///         pingConfig:
///           pingsCount: 2
///       resourceGroup:
///         resourceType: INSTANCE
///         groupId: ${check.name}
///   check:
///     type: gcp:monitoring:Group
///     properties:
///       displayName: uptime-check-group
///       filter: resource.metadata.name=has_substring("foo")
/// ```
///
/// ### Uptime Check Config Synthetic Monitor
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bucket = new gcp.storage.Bucket("bucket", {
///     name: "my-project-name-gcf-source",
///     location: "US",
///     uniformBucketLevelAccess: true,
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "function-source.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("synthetic-fn-source.zip"),
/// });
/// const _function = new gcp.cloudfunctionsv2.Function("function", {
///     name: "synthetic_function",
///     location: "us-central1",
///     buildConfig: {
///         runtime: "nodejs20",
///         entryPoint: "SyntheticFunction",
///         source: {
///             storageSource: {
///                 bucket: bucket.name,
///                 object: object.name,
///             },
///         },
///     },
///     serviceConfig: {
///         maxInstanceCount: 1,
///         availableMemory: "256M",
///         timeoutSeconds: 60,
///     },
/// });
/// const syntheticMonitor = new gcp.monitoring.UptimeCheckConfig("synthetic_monitor", {
///     displayName: "synthetic_monitor",
///     timeout: "60s",
///     syntheticMonitor: {
///         cloudFunctionV2: {
///             name: _function.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bucket = gcp.storage.Bucket("bucket",
///     name="my-project-name-gcf-source",
///     location="US",
///     uniform_bucket_level_access=True)
/// object = gcp.storage.BucketObject("object",
///     name="function-source.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("synthetic-fn-source.zip"))
/// function = gcp.cloudfunctionsv2.Function("function",
///     name="synthetic_function",
///     location="us-central1",
///     build_config={
///         "runtime": "nodejs20",
///         "entry_point": "SyntheticFunction",
///         "source": {
///             "storage_source": {
///                 "bucket": bucket.name,
///                 "object": object.name,
///             },
///         },
///     },
///     service_config={
///         "max_instance_count": 1,
///         "available_memory": "256M",
///         "timeout_seconds": 60,
///     })
/// synthetic_monitor = gcp.monitoring.UptimeCheckConfig("synthetic_monitor",
///     display_name="synthetic_monitor",
///     timeout="60s",
///     synthetic_monitor={
///         "cloud_function_v2": {
///             "name": function.id,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Name = "my-project-name-gcf-source",
///         Location = "US",
///         UniformBucketLevelAccess = true,
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "function-source.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("synthetic-fn-source.zip"),
///     });
///
///     var function = new Gcp.CloudFunctionsV2.Function("function", new()
///     {
///         Name = "synthetic_function",
///         Location = "us-central1",
///         BuildConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigArgs
///         {
///             Runtime = "nodejs20",
///             EntryPoint = "SyntheticFunction",
///             Source = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceArgs
///             {
///                 StorageSource = new Gcp.CloudFunctionsV2.Inputs.FunctionBuildConfigSourceStorageSourceArgs
///                 {
///                     Bucket = bucket.Name,
///                     Object = @object.Name,
///                 },
///             },
///         },
///         ServiceConfig = new Gcp.CloudFunctionsV2.Inputs.FunctionServiceConfigArgs
///         {
///             MaxInstanceCount = 1,
///             AvailableMemory = "256M",
///             TimeoutSeconds = 60,
///         },
///     });
///
///     var syntheticMonitor = new Gcp.Monitoring.UptimeCheckConfig("synthetic_monitor", new()
///     {
///         DisplayName = "synthetic_monitor",
///         Timeout = "60s",
///         SyntheticMonitor = new Gcp.Monitoring.Inputs.UptimeCheckConfigSyntheticMonitorArgs
///         {
///             CloudFunctionV2 = new Gcp.Monitoring.Inputs.UptimeCheckConfigSyntheticMonitorCloudFunctionV2Args
///             {
///                 Name = function.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudfunctionsv2"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Name:                     pulumi.String("my-project-name-gcf-source"),
/// 			Location:                 pulumi.String("US"),
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("function-source.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("synthetic-fn-source.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		function, err := cloudfunctionsv2.NewFunction(ctx, "function", &cloudfunctionsv2.FunctionArgs{
/// 			Name:     pulumi.String("synthetic_function"),
/// 			Location: pulumi.String("us-central1"),
/// 			BuildConfig: &cloudfunctionsv2.FunctionBuildConfigArgs{
/// 				Runtime:    pulumi.String("nodejs20"),
/// 				EntryPoint: pulumi.String("SyntheticFunction"),
/// 				Source: &cloudfunctionsv2.FunctionBuildConfigSourceArgs{
/// 					StorageSource: &cloudfunctionsv2.FunctionBuildConfigSourceStorageSourceArgs{
/// 						Bucket: bucket.Name,
/// 						Object: object.Name,
/// 					},
/// 				},
/// 			},
/// 			ServiceConfig: &cloudfunctionsv2.FunctionServiceConfigArgs{
/// 				MaxInstanceCount: pulumi.Int(1),
/// 				AvailableMemory:  pulumi.String("256M"),
/// 				TimeoutSeconds:   pulumi.Int(60),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewUptimeCheckConfig(ctx, "synthetic_monitor", &monitoring.UptimeCheckConfigArgs{
/// 			DisplayName: pulumi.String("synthetic_monitor"),
/// 			Timeout:     pulumi.String("60s"),
/// 			SyntheticMonitor: &monitoring.UptimeCheckConfigSyntheticMonitorArgs{
/// 				CloudFunctionV2: &monitoring.UptimeCheckConfigSyntheticMonitorCloudFunctionV2Args{
/// 					Name: function.ID(),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.Function;
/// import com.pulumi.gcp.cloudfunctionsv2.FunctionArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionBuildConfigSourceStorageSourceArgs;
/// import com.pulumi.gcp.cloudfunctionsv2.inputs.FunctionServiceConfigArgs;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfig;
/// import com.pulumi.gcp.monitoring.UptimeCheckConfigArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigSyntheticMonitorArgs;
/// import com.pulumi.gcp.monitoring.inputs.UptimeCheckConfigSyntheticMonitorCloudFunctionV2Args;
/// import com.pulumi.asset.FileAsset;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .name("my-project-name-gcf-source")
///             .location("US")
///             .uniformBucketLevelAccess(true)
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("function-source.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("synthetic-fn-source.zip"))
///             .build());
///
///         var function = new Function("function", FunctionArgs.builder()
///             .name("synthetic_function")
///             .location("us-central1")
///             .buildConfig(FunctionBuildConfigArgs.builder()
///                 .runtime("nodejs20")
///                 .entryPoint("SyntheticFunction")
///                 .source(FunctionBuildConfigSourceArgs.builder()
///                     .storageSource(FunctionBuildConfigSourceStorageSourceArgs.builder()
///                         .bucket(bucket.name())
///                         .object(object.name())
///                         .build())
///                     .build())
///                 .build())
///             .serviceConfig(FunctionServiceConfigArgs.builder()
///                 .maxInstanceCount(1)
///                 .availableMemory("256M")
///                 .timeoutSeconds(60)
///                 .build())
///             .build());
///
///         var syntheticMonitor = new UptimeCheckConfig("syntheticMonitor", UptimeCheckConfigArgs.builder()
///             .displayName("synthetic_monitor")
///             .timeout("60s")
///             .syntheticMonitor(UptimeCheckConfigSyntheticMonitorArgs.builder()
///                 .cloudFunctionV2(UptimeCheckConfigSyntheticMonitorCloudFunctionV2Args.builder()
///                     .name(function.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       name: my-project-name-gcf-source
///       location: US
///       uniformBucketLevelAccess: true
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: function-source.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: synthetic-fn-source.zip
///   function:
///     type: gcp:cloudfunctionsv2:Function
///     properties:
///       name: synthetic_function
///       location: us-central1
///       buildConfig:
///         runtime: nodejs20
///         entryPoint: SyntheticFunction
///         source:
///           storageSource:
///             bucket: ${bucket.name}
///             object: ${object.name}
///       serviceConfig:
///         maxInstanceCount: 1
///         availableMemory: 256M
///         timeoutSeconds: 60
///   syntheticMonitor:
///     type: gcp:monitoring:UptimeCheckConfig
///     name: synthetic_monitor
///     properties:
///       displayName: synthetic_monitor
///       timeout: 60s
///       syntheticMonitor:
///         cloudFunctionV2:
///           name: ${function.id}
/// ```
///
///
/// ## Import
///
/// UptimeCheckConfig can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, UptimeCheckConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig default {{name}}
/// ```
class UptimeCheckConfig extends pulumi.CustomResource {
  /// The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  late final pulumi.Output<String> checkerType;
  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  late final pulumi.Output<List<UptimeCheckConfigContentMatcher>?> contentMatchers;
  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  late final pulumi.Output<String> displayName;
  /// Contains information needed to make an HTTP or HTTPS check.
  /// Structure is documented below.
  late final pulumi.Output<UptimeCheckConfigHttpCheck?> httpCheck;
  /// Specifies whether to log the results of failed probes to Cloud Logging.
  late final pulumi.Output<bool?> logCheckFailures;
  /// The [monitored resource]
  /// (https://cloud.google.com/monitoring/api/resources) associated with the
  /// configuration. The following monitored resource types are supported for
  /// uptime checks:
  late final pulumi.Output<UptimeCheckConfigMonitoredResource?> monitoredResource;
  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  late final pulumi.Output<String> name;
  /// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  late final pulumi.Output<String?> period;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The group resource associated with the configuration.
  /// Structure is documented below.
  late final pulumi.Output<UptimeCheckConfigResourceGroup?> resourceGroup;
  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  late final pulumi.Output<List<String>?> selectedRegions;
  /// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// Structure is documented below.
  late final pulumi.Output<UptimeCheckConfigSyntheticMonitor?> syntheticMonitor;
  /// Contains information needed to make a TCP check.
  /// Structure is documented below.
  late final pulumi.Output<UptimeCheckConfigTcpCheck?> tcpCheck;
  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  late final pulumi.Output<String> timeout;
  /// The id of the uptime check
  late final pulumi.Output<String> uptimeCheckId;
  /// User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// Creates a new [UptimeCheckConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UptimeCheckConfig]. {@macro pulumi_monitoring_uptime_check_config_uptime_check_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UptimeCheckConfig(
    String name, {
    UptimeCheckConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/uptimeCheckConfig:UptimeCheckConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkerType = registerOutput<String>('checkerType');
    this.contentMatchers = registerOutput<List<UptimeCheckConfigContentMatcher>?>('contentMatchers');
    this.displayName = registerOutput<String>('displayName');
    this.httpCheck = registerOutput<UptimeCheckConfigHttpCheck?>('httpCheck');
    this.logCheckFailures = registerOutput<bool?>('logCheckFailures');
    this.monitoredResource = registerOutput<UptimeCheckConfigMonitoredResource?>('monitoredResource');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<String?>('period');
    this.project = registerOutput<String>('project');
    this.resourceGroup = registerOutput<UptimeCheckConfigResourceGroup?>('resourceGroup');
    this.selectedRegions = registerOutput<List<String>?>('selectedRegions');
    this.syntheticMonitor = registerOutput<UptimeCheckConfigSyntheticMonitor?>('syntheticMonitor');
    this.tcpCheck = registerOutput<UptimeCheckConfigTcpCheck?>('tcpCheck');
    this.timeout = registerOutput<String>('timeout');
    this.uptimeCheckId = registerOutput<String>('uptimeCheckId');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
