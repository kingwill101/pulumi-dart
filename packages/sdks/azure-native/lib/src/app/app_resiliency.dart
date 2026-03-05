import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_resiliency_args.dart';
import 'circuit_breaker_policy_response.dart';
import 'http_connection_pool_response.dart';
import 'http_retry_policy_response.dart';
import 'system_data_response.dart';
import 'tcp_connection_pool_response.dart';
import 'tcp_retry_policy_response.dart';
import 'timeout_policy_response.dart';

/// Configuration to setup App Resiliency
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update App Resiliency
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var appResiliency = new AzureNative.App.AppResiliency("appResiliency", new()
///     {
///         AppName = "testcontainerApp0",
///         CircuitBreakerPolicy = new AzureNative.App.Inputs.CircuitBreakerPolicyArgs
///         {
///             ConsecutiveErrors = 5,
///             IntervalInSeconds = 10,
///             MaxEjectionPercent = 50,
///         },
///         HttpConnectionPool = new AzureNative.App.Inputs.HttpConnectionPoolArgs
///         {
///             Http1MaxPendingRequests = 1024,
///             Http2MaxRequests = 1024,
///         },
///         HttpRetryPolicy = new AzureNative.App.Inputs.HttpRetryPolicyArgs
///         {
///             Errors = new[]
///             {
///                 "5xx",
///                 "connect-failure",
///                 "reset",
///                 "retriable-headers",
///                 "retriable-status-codes",
///             },
///             Headers = new[]
///             {
///                 new AzureNative.App.Inputs.HeaderMatchArgs
///                 {
///                     Header = "X-Content-Type",
///                     PrefixMatch = "GOATS",
///                 },
///             },
///             HttpStatusCodes = new[]
///             {
///                 502,
///                 503,
///             },
///             InitialDelayInMilliseconds = 1000,
///             MaxIntervalInMilliseconds = 10000,
///             MaxRetries = 5,
///         },
///         Name = "resiliency-policy-1",
///         ResourceGroupName = "rg",
///         TcpConnectionPool = new AzureNative.App.Inputs.TcpConnectionPoolArgs
///         {
///             MaxConnections = 100,
///         },
///         TcpRetryPolicy = new AzureNative.App.Inputs.TcpRetryPolicyArgs
///         {
///             MaxConnectAttempts = 3,
///         },
///         TimeoutPolicy = new AzureNative.App.Inputs.TimeoutPolicyArgs
///         {
///             ConnectionTimeoutInSeconds = 5,
///             ResponseTimeoutInSeconds = 15,
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewAppResiliency(ctx, "appResiliency", &app.AppResiliencyArgs{
/// 			AppName: pulumi.String("testcontainerApp0"),
/// 			CircuitBreakerPolicy: &app.CircuitBreakerPolicyArgs{
/// 				ConsecutiveErrors:  pulumi.Int(5),
/// 				IntervalInSeconds:  pulumi.Int(10),
/// 				MaxEjectionPercent: pulumi.Int(50),
/// 			},
/// 			HttpConnectionPool: &app.HttpConnectionPoolArgs{
/// 				Http1MaxPendingRequests: pulumi.Int(1024),
/// 				Http2MaxRequests:        pulumi.Int(1024),
/// 			},
/// 			HttpRetryPolicy: &app.HttpRetryPolicyArgs{
/// 				Errors: pulumi.StringArray{
/// 					pulumi.String("5xx"),
/// 					pulumi.String("connect-failure"),
/// 					pulumi.String("reset"),
/// 					pulumi.String("retriable-headers"),
/// 					pulumi.String("retriable-status-codes"),
/// 				},
/// 				Headers: app.HeaderMatchArray{
/// 					&app.HeaderMatchArgs{
/// 						Header:      pulumi.String("X-Content-Type"),
/// 						PrefixMatch: pulumi.String("GOATS"),
/// 					},
/// 				},
/// 				HttpStatusCodes: pulumi.IntArray{
/// 					pulumi.Int(502),
/// 					pulumi.Int(503),
/// 				},
/// 				InitialDelayInMilliseconds: pulumi.Float64(1000),
/// 				MaxIntervalInMilliseconds:  pulumi.Float64(10000),
/// 				MaxRetries:                 pulumi.Int(5),
/// 			},
/// 			Name:              pulumi.String("resiliency-policy-1"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			TcpConnectionPool: &app.TcpConnectionPoolArgs{
/// 				MaxConnections: pulumi.Int(100),
/// 			},
/// 			TcpRetryPolicy: &app.TcpRetryPolicyArgs{
/// 				MaxConnectAttempts: pulumi.Int(3),
/// 			},
/// 			TimeoutPolicy: &app.TimeoutPolicyArgs{
/// 				ConnectionTimeoutInSeconds: pulumi.Int(5),
/// 				ResponseTimeoutInSeconds:   pulumi.Int(15),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.app.AppResiliency;
/// import com.pulumi.azurenative.app.AppResiliencyArgs;
/// import com.pulumi.azurenative.app.inputs.CircuitBreakerPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.HttpConnectionPoolArgs;
/// import com.pulumi.azurenative.app.inputs.HttpRetryPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.TcpConnectionPoolArgs;
/// import com.pulumi.azurenative.app.inputs.TcpRetryPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.TimeoutPolicyArgs;
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
///         var appResiliency = new AppResiliency("appResiliency", AppResiliencyArgs.builder()
///             .appName("testcontainerApp0")
///             .circuitBreakerPolicy(CircuitBreakerPolicyArgs.builder()
///                 .consecutiveErrors(5)
///                 .intervalInSeconds(10)
///                 .maxEjectionPercent(50)
///                 .build())
///             .httpConnectionPool(HttpConnectionPoolArgs.builder()
///                 .http1MaxPendingRequests(1024)
///                 .http2MaxRequests(1024)
///                 .build())
///             .httpRetryPolicy(HttpRetryPolicyArgs.builder()
///                 .errors(
///                     "5xx",
///                     "connect-failure",
///                     "reset",
///                     "retriable-headers",
///                     "retriable-status-codes")
///                 .headers(HeaderMatchArgs.builder()
///                     .header("X-Content-Type")
///                     .prefixMatch("GOATS")
///                     .build())
///                 .httpStatusCodes(
///                     502,
///                     503)
///                 .initialDelayInMilliseconds(1000.0)
///                 .maxIntervalInMilliseconds(10000.0)
///                 .maxRetries(5)
///                 .build())
///             .name("resiliency-policy-1")
///             .resourceGroupName("rg")
///             .tcpConnectionPool(TcpConnectionPoolArgs.builder()
///                 .maxConnections(100)
///                 .build())
///             .tcpRetryPolicy(TcpRetryPolicyArgs.builder()
///                 .maxConnectAttempts(3)
///                 .build())
///             .timeoutPolicy(TimeoutPolicyArgs.builder()
///                 .connectionTimeoutInSeconds(5)
///                 .responseTimeoutInSeconds(15)
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const appResiliency = new azure_native.app.AppResiliency("appResiliency", {
///     appName: "testcontainerApp0",
///     circuitBreakerPolicy: {
///         consecutiveErrors: 5,
///         intervalInSeconds: 10,
///         maxEjectionPercent: 50,
///     },
///     httpConnectionPool: {
///         http1MaxPendingRequests: 1024,
///         http2MaxRequests: 1024,
///     },
///     httpRetryPolicy: {
///         errors: [
///             "5xx",
///             "connect-failure",
///             "reset",
///             "retriable-headers",
///             "retriable-status-codes",
///         ],
///         headers: [{
///             header: "X-Content-Type",
///             prefixMatch: "GOATS",
///         }],
///         httpStatusCodes: [
///             502,
///             503,
///         ],
///         initialDelayInMilliseconds: 1000,
///         maxIntervalInMilliseconds: 10000,
///         maxRetries: 5,
///     },
///     name: "resiliency-policy-1",
///     resourceGroupName: "rg",
///     tcpConnectionPool: {
///         maxConnections: 100,
///     },
///     tcpRetryPolicy: {
///         maxConnectAttempts: 3,
///     },
///     timeoutPolicy: {
///         connectionTimeoutInSeconds: 5,
///         responseTimeoutInSeconds: 15,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// app_resiliency = azure_native.app.AppResiliency("appResiliency",
///     app_name="testcontainerApp0",
///     circuit_breaker_policy={
///         "consecutive_errors": 5,
///         "interval_in_seconds": 10,
///         "max_ejection_percent": 50,
///     },
///     http_connection_pool={
///         "http1_max_pending_requests": 1024,
///         "http2_max_requests": 1024,
///     },
///     http_retry_policy={
///         "errors": [
///             "5xx",
///             "connect-failure",
///             "reset",
///             "retriable-headers",
///             "retriable-status-codes",
///         ],
///         "headers": [{
///             "header": "X-Content-Type",
///             "prefix_match": "GOATS",
///         }],
///         "http_status_codes": [
///             502,
///             503,
///         ],
///         "initial_delay_in_milliseconds": 1000,
///         "max_interval_in_milliseconds": 10000,
///         "max_retries": 5,
///     },
///     name="resiliency-policy-1",
///     resource_group_name="rg",
///     tcp_connection_pool={
///         "max_connections": 100,
///     },
///     tcp_retry_policy={
///         "max_connect_attempts": 3,
///     },
///     timeout_policy={
///         "connection_timeout_in_seconds": 5,
///         "response_timeout_in_seconds": 15,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   appResiliency:
///     type: azure-native:app:AppResiliency
///     properties:
///       appName: testcontainerApp0
///       circuitBreakerPolicy:
///         consecutiveErrors: 5
///         intervalInSeconds: 10
///         maxEjectionPercent: 50
///       httpConnectionPool:
///         http1MaxPendingRequests: 1024
///         http2MaxRequests: 1024
///       httpRetryPolicy:
///         errors:
///           - 5xx
///           - connect-failure
///           - reset
///           - retriable-headers
///           - retriable-status-codes
///         headers:
///           - header: X-Content-Type
///             prefixMatch: GOATS
///         httpStatusCodes:
///           - 502
///           - 503
///         initialDelayInMilliseconds: 1000
///         maxIntervalInMilliseconds: 10000
///         maxRetries: 5
///       name: resiliency-policy-1
///       resourceGroupName: rg
///       tcpConnectionPool:
///         maxConnections: 100
///       tcpRetryPolicy:
///         maxConnectAttempts: 3
///       timeoutPolicy:
///         connectionTimeoutInSeconds: 5
///         responseTimeoutInSeconds: 15
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:app:AppResiliency resiliency-policy-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/containerApps/{appName}/resiliencyPolicies/{name}
/// ```
class AppResiliency extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Policy that defines circuit breaker conditions
  late final pulumi.Output<CircuitBreakerPolicyResponse?> circuitBreakerPolicy;

  /// Defines parameters for http connection pooling
  late final pulumi.Output<HttpConnectionPoolResponse?> httpConnectionPool;

  /// Policy that defines http request retry conditions
  late final pulumi.Output<HttpRetryPolicyResponse?> httpRetryPolicy;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Defines parameters for tcp connection pooling
  late final pulumi.Output<TcpConnectionPoolResponse?> tcpConnectionPool;

  /// Policy that defines tcp request retry conditions
  late final pulumi.Output<TcpRetryPolicyResponse?> tcpRetryPolicy;

  /// Policy to set request timeouts
  late final pulumi.Output<TimeoutPolicyResponse?> timeoutPolicy;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [AppResiliency].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppResiliency]. {@macro pulumi_app_app_resiliency_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppResiliency(
    String name, {
    AppResiliencyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:AppResiliency',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    circuitBreakerPolicy = registerOutput<CircuitBreakerPolicyResponse?>(
      'circuitBreakerPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CircuitBreakerPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpConnectionPool = registerOutput<HttpConnectionPoolResponse?>(
      'httpConnectionPool',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HttpConnectionPoolResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    httpRetryPolicy = registerOutput<HttpRetryPolicyResponse?>(
      'httpRetryPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HttpRetryPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tcpConnectionPool = registerOutput<TcpConnectionPoolResponse?>(
      'tcpConnectionPool',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TcpConnectionPoolResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tcpRetryPolicy = registerOutput<TcpRetryPolicyResponse?>(
      'tcpRetryPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TcpRetryPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    timeoutPolicy = registerOutput<TimeoutPolicyResponse?>(
      'timeoutPolicy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TimeoutPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
