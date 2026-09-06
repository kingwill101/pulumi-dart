import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_resiliency_policy_args.dart';
import 'dapr_component_resiliency_policy_configuration_response.dart';
import 'system_data_response.dart';

/// Dapr Component Resiliency Policy.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update dapr component resiliency policy with all options
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprComponentResiliencyPolicy = new AzureNative.App.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", new()
///     {
///         ComponentName = "mydaprcomponent",
///         EnvironmentName = "myenvironment",
///         InboundPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyConfigurationArgs
///         {
///             CircuitBreakerPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs
///             {
///                 ConsecutiveErrors = 5,
///                 IntervalInSeconds = 4,
///                 TimeoutInSeconds = 10,
///             },
///             HttpRetryPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs
///             {
///                 MaxRetries = 15,
///                 RetryBackOff = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs
///                 {
///                     InitialDelayInMilliseconds = 2000,
///                     MaxIntervalInMilliseconds = 5500,
///                 },
///             },
///             TimeoutPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs
///             {
///                 ResponseTimeoutInSeconds = 30,
///             },
///         },
///         Name = "myresiliencypolicy",
///         OutboundPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyConfigurationArgs
///         {
///             CircuitBreakerPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs
///             {
///                 ConsecutiveErrors = 3,
///                 IntervalInSeconds = 60,
///                 TimeoutInSeconds = 20,
///             },
///             HttpRetryPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs
///             {
///                 MaxRetries = 5,
///                 RetryBackOff = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs
///                 {
///                     InitialDelayInMilliseconds = 100,
///                     MaxIntervalInMilliseconds = 30000,
///                 },
///             },
///             TimeoutPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs
///             {
///                 ResponseTimeoutInSeconds = 12,
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewDaprComponentResiliencyPolicy(ctx, "daprComponentResiliencyPolicy", &app.DaprComponentResiliencyPolicyArgs{
/// 			ComponentName:   pulumi.String("mydaprcomponent"),
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			InboundPolicy: &app.DaprComponentResiliencyPolicyConfigurationArgs{
/// 				CircuitBreakerPolicy: &app.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs{
/// 					ConsecutiveErrors: pulumi.Int(5),
/// 					IntervalInSeconds: pulumi.Int(4),
/// 					TimeoutInSeconds:  pulumi.Int(10),
/// 				},
/// 				HttpRetryPolicy: &app.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs{
/// 					MaxRetries: pulumi.Int(15),
/// 					RetryBackOff: &app.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs{
/// 						InitialDelayInMilliseconds: pulumi.Int(2000),
/// 						MaxIntervalInMilliseconds:  pulumi.Int(5500),
/// 					},
/// 				},
/// 				TimeoutPolicy: &app.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs{
/// 					ResponseTimeoutInSeconds: pulumi.Int(30),
/// 				},
/// 			},
/// 			Name: pulumi.String("myresiliencypolicy"),
/// 			OutboundPolicy: &app.DaprComponentResiliencyPolicyConfigurationArgs{
/// 				CircuitBreakerPolicy: &app.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs{
/// 					ConsecutiveErrors: pulumi.Int(3),
/// 					IntervalInSeconds: pulumi.Int(60),
/// 					TimeoutInSeconds:  pulumi.Int(20),
/// 				},
/// 				HttpRetryPolicy: &app.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs{
/// 					MaxRetries: pulumi.Int(5),
/// 					RetryBackOff: &app.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs{
/// 						InitialDelayInMilliseconds: pulumi.Int(100),
/// 						MaxIntervalInMilliseconds:  pulumi.Int(30000),
/// 					},
/// 				},
/// 				TimeoutPolicy: &app.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs{
/// 					ResponseTimeoutInSeconds: pulumi.Int(12),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_app_daprcomponentresiliencypolicy" "daprComponentResiliencyPolicy" {
///   component_name   = "mydaprcomponent"
///   environment_name = "myenvironment"
///   inbound_policy = {
///     circuit_breaker_policy = {
///       consecutive_errors  = 5
///       interval_in_seconds = 4
///       timeout_in_seconds  = 10
///     }
///     http_retry_policy = {
///       max_retries = 15
///       retry_back_off = {
///         initial_delay_in_milliseconds = 2000
///         max_interval_in_milliseconds  = 5500
///       }
///     }
///     timeout_policy = {
///       response_timeout_in_seconds = 30
///     }
///   }
///   name = "myresiliencypolicy"
///   outbound_policy = {
///     circuit_breaker_policy = {
///       consecutive_errors  = 3
///       interval_in_seconds = 60
///       timeout_in_seconds  = 20
///     }
///     http_retry_policy = {
///       max_retries = 5
///       retry_back_off = {
///         initial_delay_in_milliseconds = 100
///         max_interval_in_milliseconds  = 30000
///       }
///     }
///     timeout_policy = {
///       response_timeout_in_seconds = 12
///     }
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicy;
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var daprComponentResiliencyPolicy = new DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", DaprComponentResiliencyPolicyArgs.builder()
///             .componentName("mydaprcomponent")
///             .environmentName("myenvironment")
///             .inboundPolicy(DaprComponentResiliencyPolicyConfigurationArgs.builder()
///                 .circuitBreakerPolicy(DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs.builder()
///                     .consecutiveErrors(5)
///                     .intervalInSeconds(4)
///                     .timeoutInSeconds(10)
///                     .build())
///                 .httpRetryPolicy(DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs.builder()
///                     .maxRetries(15)
///                     .retryBackOff(DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs.builder()
///                         .initialDelayInMilliseconds(2000)
///                         .maxIntervalInMilliseconds(5500)
///                         .build())
///                     .build())
///                 .timeoutPolicy(DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs.builder()
///                     .responseTimeoutInSeconds(30)
///                     .build())
///                 .build())
///             .name("myresiliencypolicy")
///             .outboundPolicy(DaprComponentResiliencyPolicyConfigurationArgs.builder()
///                 .circuitBreakerPolicy(DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs.builder()
///                     .consecutiveErrors(3)
///                     .intervalInSeconds(60)
///                     .timeoutInSeconds(20)
///                     .build())
///                 .httpRetryPolicy(DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs.builder()
///                     .maxRetries(5)
///                     .retryBackOff(DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs.builder()
///                         .initialDelayInMilliseconds(100)
///                         .maxIntervalInMilliseconds(30000)
///                         .build())
///                     .build())
///                 .timeoutPolicy(DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs.builder()
///                     .responseTimeoutInSeconds(12)
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const daprComponentResiliencyPolicy = new azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", {
///     componentName: "mydaprcomponent",
///     environmentName: "myenvironment",
///     inboundPolicy: {
///         circuitBreakerPolicy: {
///             consecutiveErrors: 5,
///             intervalInSeconds: 4,
///             timeoutInSeconds: 10,
///         },
///         httpRetryPolicy: {
///             maxRetries: 15,
///             retryBackOff: {
///                 initialDelayInMilliseconds: 2000,
///                 maxIntervalInMilliseconds: 5500,
///             },
///         },
///         timeoutPolicy: {
///             responseTimeoutInSeconds: 30,
///         },
///     },
///     name: "myresiliencypolicy",
///     outboundPolicy: {
///         circuitBreakerPolicy: {
///             consecutiveErrors: 3,
///             intervalInSeconds: 60,
///             timeoutInSeconds: 20,
///         },
///         httpRetryPolicy: {
///             maxRetries: 5,
///             retryBackOff: {
///                 initialDelayInMilliseconds: 100,
///                 maxIntervalInMilliseconds: 30000,
///             },
///         },
///         timeoutPolicy: {
///             responseTimeoutInSeconds: 12,
///         },
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_component_resiliency_policy = azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy",
///     component_name="mydaprcomponent",
///     environment_name="myenvironment",
///     inbound_policy={
///         "circuit_breaker_policy": {
///             "consecutive_errors": 5,
///             "interval_in_seconds": 4,
///             "timeout_in_seconds": 10,
///         },
///         "http_retry_policy": {
///             "max_retries": 15,
///             "retry_back_off": {
///                 "initial_delay_in_milliseconds": 2000,
///                 "max_interval_in_milliseconds": 5500,
///             },
///         },
///         "timeout_policy": {
///             "response_timeout_in_seconds": 30,
///         },
///     },
///     name="myresiliencypolicy",
///     outbound_policy={
///         "circuit_breaker_policy": {
///             "consecutive_errors": 3,
///             "interval_in_seconds": 60,
///             "timeout_in_seconds": 20,
///         },
///         "http_retry_policy": {
///             "max_retries": 5,
///             "retry_back_off": {
///                 "initial_delay_in_milliseconds": 100,
///                 "max_interval_in_milliseconds": 30000,
///             },
///         },
///         "timeout_policy": {
///             "response_timeout_in_seconds": 12,
///         },
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   daprComponentResiliencyPolicy:
///     type: azure-native:app:DaprComponentResiliencyPolicy
///     properties:
///       componentName: mydaprcomponent
///       environmentName: myenvironment
///       inboundPolicy:
///         circuitBreakerPolicy:
///           consecutiveErrors: 5
///           intervalInSeconds: 4
///           timeoutInSeconds: 10
///         httpRetryPolicy:
///           maxRetries: 15
///           retryBackOff:
///             initialDelayInMilliseconds: 2000
///             maxIntervalInMilliseconds: 5500
///         timeoutPolicy:
///           responseTimeoutInSeconds: 30
///       name: myresiliencypolicy
///       outboundPolicy:
///         circuitBreakerPolicy:
///           consecutiveErrors: 3
///           intervalInSeconds: 60
///           timeoutInSeconds: 20
///         httpRetryPolicy:
///           maxRetries: 5
///           retryBackOff:
///             initialDelayInMilliseconds: 100
///             maxIntervalInMilliseconds: 30000
///         timeoutPolicy:
///           responseTimeoutInSeconds: 12
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update dapr component resiliency policy with outbound policy only
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprComponentResiliencyPolicy = new AzureNative.App.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", new()
///     {
///         ComponentName = "mydaprcomponent",
///         EnvironmentName = "myenvironment",
///         Name = "myresiliencypolicy",
///         OutboundPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyConfigurationArgs
///         {
///             CircuitBreakerPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs
///             {
///                 ConsecutiveErrors = 3,
///                 IntervalInSeconds = 60,
///                 TimeoutInSeconds = 20,
///             },
///             HttpRetryPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs
///             {
///                 MaxRetries = 5,
///                 RetryBackOff = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs
///                 {
///                     InitialDelayInMilliseconds = 100,
///                     MaxIntervalInMilliseconds = 30000,
///                 },
///             },
///             TimeoutPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs
///             {
///                 ResponseTimeoutInSeconds = 12,
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewDaprComponentResiliencyPolicy(ctx, "daprComponentResiliencyPolicy", &app.DaprComponentResiliencyPolicyArgs{
/// 			ComponentName:   pulumi.String("mydaprcomponent"),
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			Name:            pulumi.String("myresiliencypolicy"),
/// 			OutboundPolicy: &app.DaprComponentResiliencyPolicyConfigurationArgs{
/// 				CircuitBreakerPolicy: &app.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs{
/// 					ConsecutiveErrors: pulumi.Int(3),
/// 					IntervalInSeconds: pulumi.Int(60),
/// 					TimeoutInSeconds:  pulumi.Int(20),
/// 				},
/// 				HttpRetryPolicy: &app.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs{
/// 					MaxRetries: pulumi.Int(5),
/// 					RetryBackOff: &app.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs{
/// 						InitialDelayInMilliseconds: pulumi.Int(100),
/// 						MaxIntervalInMilliseconds:  pulumi.Int(30000),
/// 					},
/// 				},
/// 				TimeoutPolicy: &app.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs{
/// 					ResponseTimeoutInSeconds: pulumi.Int(12),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_app_daprcomponentresiliencypolicy" "daprComponentResiliencyPolicy" {
///   component_name   = "mydaprcomponent"
///   environment_name = "myenvironment"
///   name             = "myresiliencypolicy"
///   outbound_policy = {
///     circuit_breaker_policy = {
///       consecutive_errors  = 3
///       interval_in_seconds = 60
///       timeout_in_seconds  = 20
///     }
///     http_retry_policy = {
///       max_retries = 5
///       retry_back_off = {
///         initial_delay_in_milliseconds = 100
///         max_interval_in_milliseconds  = 30000
///       }
///     }
///     timeout_policy = {
///       response_timeout_in_seconds = 12
///     }
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicy;
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var daprComponentResiliencyPolicy = new DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", DaprComponentResiliencyPolicyArgs.builder()
///             .componentName("mydaprcomponent")
///             .environmentName("myenvironment")
///             .name("myresiliencypolicy")
///             .outboundPolicy(DaprComponentResiliencyPolicyConfigurationArgs.builder()
///                 .circuitBreakerPolicy(DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs.builder()
///                     .consecutiveErrors(3)
///                     .intervalInSeconds(60)
///                     .timeoutInSeconds(20)
///                     .build())
///                 .httpRetryPolicy(DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs.builder()
///                     .maxRetries(5)
///                     .retryBackOff(DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs.builder()
///                         .initialDelayInMilliseconds(100)
///                         .maxIntervalInMilliseconds(30000)
///                         .build())
///                     .build())
///                 .timeoutPolicy(DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs.builder()
///                     .responseTimeoutInSeconds(12)
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const daprComponentResiliencyPolicy = new azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", {
///     componentName: "mydaprcomponent",
///     environmentName: "myenvironment",
///     name: "myresiliencypolicy",
///     outboundPolicy: {
///         circuitBreakerPolicy: {
///             consecutiveErrors: 3,
///             intervalInSeconds: 60,
///             timeoutInSeconds: 20,
///         },
///         httpRetryPolicy: {
///             maxRetries: 5,
///             retryBackOff: {
///                 initialDelayInMilliseconds: 100,
///                 maxIntervalInMilliseconds: 30000,
///             },
///         },
///         timeoutPolicy: {
///             responseTimeoutInSeconds: 12,
///         },
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_component_resiliency_policy = azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy",
///     component_name="mydaprcomponent",
///     environment_name="myenvironment",
///     name="myresiliencypolicy",
///     outbound_policy={
///         "circuit_breaker_policy": {
///             "consecutive_errors": 3,
///             "interval_in_seconds": 60,
///             "timeout_in_seconds": 20,
///         },
///         "http_retry_policy": {
///             "max_retries": 5,
///             "retry_back_off": {
///                 "initial_delay_in_milliseconds": 100,
///                 "max_interval_in_milliseconds": 30000,
///             },
///         },
///         "timeout_policy": {
///             "response_timeout_in_seconds": 12,
///         },
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   daprComponentResiliencyPolicy:
///     type: azure-native:app:DaprComponentResiliencyPolicy
///     properties:
///       componentName: mydaprcomponent
///       environmentName: myenvironment
///       name: myresiliencypolicy
///       outboundPolicy:
///         circuitBreakerPolicy:
///           consecutiveErrors: 3
///           intervalInSeconds: 60
///           timeoutInSeconds: 20
///         httpRetryPolicy:
///           maxRetries: 5
///           retryBackOff:
///             initialDelayInMilliseconds: 100
///             maxIntervalInMilliseconds: 30000
///         timeoutPolicy:
///           responseTimeoutInSeconds: 12
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update dapr component resiliency policy with sparse options
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprComponentResiliencyPolicy = new AzureNative.App.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", new()
///     {
///         ComponentName = "mydaprcomponent",
///         EnvironmentName = "myenvironment",
///         InboundPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyConfigurationArgs
///         {
///             CircuitBreakerPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs
///             {
///                 ConsecutiveErrors = 3,
///                 TimeoutInSeconds = 20,
///             },
///             HttpRetryPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs
///             {
///                 MaxRetries = 5,
///                 RetryBackOff = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs
///                 {
///                     InitialDelayInMilliseconds = 2000,
///                     MaxIntervalInMilliseconds = 5500,
///                 },
///             },
///         },
///         Name = "myresiliencypolicy",
///         OutboundPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyConfigurationArgs
///         {
///             TimeoutPolicy = new AzureNative.App.Inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs
///             {
///                 ResponseTimeoutInSeconds = 12,
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewDaprComponentResiliencyPolicy(ctx, "daprComponentResiliencyPolicy", &app.DaprComponentResiliencyPolicyArgs{
/// 			ComponentName:   pulumi.String("mydaprcomponent"),
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			InboundPolicy: &app.DaprComponentResiliencyPolicyConfigurationArgs{
/// 				CircuitBreakerPolicy: &app.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs{
/// 					ConsecutiveErrors: pulumi.Int(3),
/// 					TimeoutInSeconds:  pulumi.Int(20),
/// 				},
/// 				HttpRetryPolicy: &app.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs{
/// 					MaxRetries: pulumi.Int(5),
/// 					RetryBackOff: &app.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs{
/// 						InitialDelayInMilliseconds: pulumi.Int(2000),
/// 						MaxIntervalInMilliseconds:  pulumi.Int(5500),
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("myresiliencypolicy"),
/// 			OutboundPolicy: &app.DaprComponentResiliencyPolicyConfigurationArgs{
/// 				TimeoutPolicy: &app.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs{
/// 					ResponseTimeoutInSeconds: pulumi.Int(12),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_app_daprcomponentresiliencypolicy" "daprComponentResiliencyPolicy" {
///   component_name   = "mydaprcomponent"
///   environment_name = "myenvironment"
///   inbound_policy = {
///     circuit_breaker_policy = {
///       consecutive_errors = 3
///       timeout_in_seconds = 20
///     }
///     http_retry_policy = {
///       max_retries = 5
///       retry_back_off = {
///         initial_delay_in_milliseconds = 2000
///         max_interval_in_milliseconds  = 5500
///       }
///     }
///   }
///   name = "myresiliencypolicy"
///   outbound_policy = {
///     timeout_policy = {
///       response_timeout_in_seconds = 12
///     }
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicy;
/// import com.pulumi.azurenative.app.DaprComponentResiliencyPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var daprComponentResiliencyPolicy = new DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", DaprComponentResiliencyPolicyArgs.builder()
///             .componentName("mydaprcomponent")
///             .environmentName("myenvironment")
///             .inboundPolicy(DaprComponentResiliencyPolicyConfigurationArgs.builder()
///                 .circuitBreakerPolicy(DaprComponentResiliencyPolicyCircuitBreakerPolicyConfigurationArgs.builder()
///                     .consecutiveErrors(3)
///                     .timeoutInSeconds(20)
///                     .build())
///                 .httpRetryPolicy(DaprComponentResiliencyPolicyHttpRetryPolicyConfigurationArgs.builder()
///                     .maxRetries(5)
///                     .retryBackOff(DaprComponentResiliencyPolicyHttpRetryBackOffConfigurationArgs.builder()
///                         .initialDelayInMilliseconds(2000)
///                         .maxIntervalInMilliseconds(5500)
///                         .build())
///                     .build())
///                 .build())
///             .name("myresiliencypolicy")
///             .outboundPolicy(DaprComponentResiliencyPolicyConfigurationArgs.builder()
///                 .timeoutPolicy(DaprComponentResiliencyPolicyTimeoutPolicyConfigurationArgs.builder()
///                     .responseTimeoutInSeconds(12)
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const daprComponentResiliencyPolicy = new azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy", {
///     componentName: "mydaprcomponent",
///     environmentName: "myenvironment",
///     inboundPolicy: {
///         circuitBreakerPolicy: {
///             consecutiveErrors: 3,
///             timeoutInSeconds: 20,
///         },
///         httpRetryPolicy: {
///             maxRetries: 5,
///             retryBackOff: {
///                 initialDelayInMilliseconds: 2000,
///                 maxIntervalInMilliseconds: 5500,
///             },
///         },
///     },
///     name: "myresiliencypolicy",
///     outboundPolicy: {
///         timeoutPolicy: {
///             responseTimeoutInSeconds: 12,
///         },
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_component_resiliency_policy = azure_native.app.DaprComponentResiliencyPolicy("daprComponentResiliencyPolicy",
///     component_name="mydaprcomponent",
///     environment_name="myenvironment",
///     inbound_policy={
///         "circuit_breaker_policy": {
///             "consecutive_errors": 3,
///             "timeout_in_seconds": 20,
///         },
///         "http_retry_policy": {
///             "max_retries": 5,
///             "retry_back_off": {
///                 "initial_delay_in_milliseconds": 2000,
///                 "max_interval_in_milliseconds": 5500,
///             },
///         },
///     },
///     name="myresiliencypolicy",
///     outbound_policy={
///         "timeout_policy": {
///             "response_timeout_in_seconds": 12,
///         },
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   daprComponentResiliencyPolicy:
///     type: azure-native:app:DaprComponentResiliencyPolicy
///     properties:
///       componentName: mydaprcomponent
///       environmentName: myenvironment
///       inboundPolicy:
///         circuitBreakerPolicy:
///           consecutiveErrors: 3
///           timeoutInSeconds: 20
///         httpRetryPolicy:
///           maxRetries: 5
///           retryBackOff:
///             initialDelayInMilliseconds: 2000
///             maxIntervalInMilliseconds: 5500
///       name: myresiliencypolicy
///       outboundPolicy:
///         timeoutPolicy:
///           responseTimeoutInSeconds: 12
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:DaprComponentResiliencyPolicy myresiliencypolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/daprComponents/{componentName}/resiliencyPolicies/{name}
/// ```
class DaprComponentResiliencyPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The optional inbound component resiliency policy configuration
  late final pulumi.Output<DaprComponentResiliencyPolicyConfigurationResponse?> inboundPolicy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The optional outbound component resiliency policy configuration
  late final pulumi.Output<DaprComponentResiliencyPolicyConfigurationResponse?> outboundPolicy;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DaprComponentResiliencyPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaprComponentResiliencyPolicy]. {@macro pulumi_app_dapr_component_resiliency_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaprComponentResiliencyPolicy(
    String name, {
    DaprComponentResiliencyPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:DaprComponentResiliencyPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    inboundPolicy = registerOutput<DaprComponentResiliencyPolicyConfigurationResponse?>('inboundPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundPolicy = registerOutput<DaprComponentResiliencyPolicyConfigurationResponse?>('outboundPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DaprComponentResiliencyPolicy] resource.
  DaprComponentResiliencyPolicy.reference(String urn)
    : super(
        'azure-native:app:DaprComponentResiliencyPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    inboundPolicy = registerOutput<DaprComponentResiliencyPolicyConfigurationResponse?>('inboundPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    outboundPolicy = registerOutput<DaprComponentResiliencyPolicyConfigurationResponse?>('outboundPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DaprComponentResiliencyPolicyConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
