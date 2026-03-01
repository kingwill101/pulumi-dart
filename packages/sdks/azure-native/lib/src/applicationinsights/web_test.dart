import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_args.dart';
import 'web_test_geolocation_response.dart';
import 'web_test_properties_response_configuration.dart';
import 'web_test_properties_response_request.dart';
import 'web_test_properties_response_validation_rules.dart';

/// An Application Insights WebTest definition.
///
/// Uses Azure REST API version 2022-06-15.
///
/// Other available API versions: 2015-05-01, 2018-05-01-preview, 2020-10-05-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### webTestCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webTest = new AzureNative.ApplicationInsights.WebTest("webTest", new()
///     {
///         Configuration = new AzureNative.ApplicationInsights.Inputs.WebTestPropertiesConfigurationArgs
///         {
///             WebTest = "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"120\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"120\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///         },
///         Description = "Ping web test alert for mytestwebapp",
///         Enabled = true,
///         Frequency = 900,
///         Kind = AzureNative.ApplicationInsights.WebTestKind.Ping,
///         Location = "South Central US",
///         Locations = new[]
///         {
///             new AzureNative.ApplicationInsights.Inputs.WebTestGeolocationArgs
///             {
///                 Location = "us-fl-mia-edge",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///         RetryEnabled = true,
///         SyntheticMonitorId = "my-webtest-my-component",
///         Timeout = 120,
///         WebTestKind = AzureNative.ApplicationInsights.WebTestKind.Ping,
///         WebTestName = "my-webtest-my-component",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewWebTest(ctx, "webTest", &applicationinsights.WebTestArgs{
/// 			Configuration: &applicationinsights.WebTestPropertiesConfigurationArgs{
/// 				WebTest: pulumi.String("<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"120\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"120\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>"),
/// 			},
/// 			Description: pulumi.String("Ping web test alert for mytestwebapp"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Frequency:   pulumi.Int(900),
/// 			Kind:        applicationinsights.WebTestKindPing,
/// 			Location:    pulumi.String("South Central US"),
/// 			Locations: applicationinsights.WebTestGeolocationArray{
/// 				&applicationinsights.WebTestGeolocationArgs{
/// 					Location: pulumi.String("us-fl-mia-edge"),
/// 				},
/// 			},
/// 			ResourceGroupName:  pulumi.String("my-resource-group"),
/// 			RetryEnabled:       pulumi.Bool(true),
/// 			SyntheticMonitorId: pulumi.String("my-webtest-my-component"),
/// 			Timeout:            pulumi.Int(120),
/// 			WebTestKind:        applicationinsights.WebTestKindPing,
/// 			WebTestName:        pulumi.String("my-webtest-my-component"),
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
/// import com.pulumi.azurenative.applicationinsights.WebTest;
/// import com.pulumi.azurenative.applicationinsights.WebTestArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestPropertiesConfigurationArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestGeolocationArgs;
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
///         var webTest = new WebTest("webTest", WebTestArgs.builder()
///             .configuration(WebTestPropertiesConfigurationArgs.builder()
///                 .webTest("<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"120\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"120\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>")
///                 .build())
///             .description("Ping web test alert for mytestwebapp")
///             .enabled(true)
///             .frequency(900)
///             .kind("ping")
///             .location("South Central US")
///             .locations(WebTestGeolocationArgs.builder()
///                 .location("us-fl-mia-edge")
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .retryEnabled(true)
///             .syntheticMonitorId("my-webtest-my-component")
///             .timeout(120)
///             .webTestKind("ping")
///             .webTestName("my-webtest-my-component")
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
/// const webTest = new azure_native.applicationinsights.WebTest("webTest", {
///     configuration: {
///         webTest: "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"120\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"120\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///     },
///     description: "Ping web test alert for mytestwebapp",
///     enabled: true,
///     frequency: 900,
///     kind: azure_native.applicationinsights.WebTestKind.Ping,
///     location: "South Central US",
///     locations: [{
///         location: "us-fl-mia-edge",
///     }],
///     resourceGroupName: "my-resource-group",
///     retryEnabled: true,
///     syntheticMonitorId: "my-webtest-my-component",
///     timeout: 120,
///     webTestKind: azure_native.applicationinsights.WebTestKind.Ping,
///     webTestName: "my-webtest-my-component",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_test = azure_native.applicationinsights.WebTest("webTest",
///     configuration={
///         "web_test": "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"120\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"120\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///     },
///     description="Ping web test alert for mytestwebapp",
///     enabled=True,
///     frequency=900,
///     kind=azure_native.applicationinsights.WebTestKind.PING,
///     location="South Central US",
///     locations=[{
///         "location": "us-fl-mia-edge",
///     }],
///     resource_group_name="my-resource-group",
///     retry_enabled=True,
///     synthetic_monitor_id="my-webtest-my-component",
///     timeout=120,
///     web_test_kind=azure_native.applicationinsights.WebTestKind.PING,
///     web_test_name="my-webtest-my-component")
///
/// ```
///
/// ```yaml
/// resources:
///   webTest:
///     type: azure-native:applicationinsights:WebTest
///     properties:
///       configuration:
///         webTest: <WebTest Name="my-webtest" Id="678ddf96-1ab8-44c8-9274-123456789abc" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="120" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="" ><Items><Request Method="GET" Guid="a4162485-9114-fcfc-e086-123456789abc" Version="1.1" Url="http://my-component.azurewebsites.net" ThinkTime="0" Timeout="120" ParseDependentRequests="True" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" /></Items></WebTest>
///       description: Ping web test alert for mytestwebapp
///       enabled: true
///       frequency: 900
///       kind: ping
///       location: South Central US
///       locations:
///         - location: us-fl-mia-edge
///       resourceGroupName: my-resource-group
///       retryEnabled: true
///       syntheticMonitorId: my-webtest-my-component
///       timeout: 120
///       webTestKind: ping
///       webTestName: my-webtest-my-component
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### webTestCreateStandard
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webTest = new AzureNative.ApplicationInsights.WebTest("webTest", new()
///     {
///         Description = "Ping web test alert for mytestwebapp",
///         Enabled = true,
///         Frequency = 900,
///         Location = "South Central US",
///         Locations = new[]
///         {
///             new AzureNative.ApplicationInsights.Inputs.WebTestGeolocationArgs
///             {
///                 Location = "us-fl-mia-edge",
///             },
///         },
///         Request = new AzureNative.ApplicationInsights.Inputs.WebTestPropertiesRequestArgs
///         {
///             Headers = new[]
///             {
///                 new AzureNative.ApplicationInsights.Inputs.HeaderFieldArgs
///                 {
///                     HeaderFieldName = "Content-Language",
///                     HeaderFieldValue = "de-DE",
///                 },
///                 new AzureNative.ApplicationInsights.Inputs.HeaderFieldArgs
///                 {
///                     HeaderFieldName = "Accept-Language",
///                     HeaderFieldValue = "de-DE",
///                 },
///             },
///             HttpVerb = "POST",
///             RequestBody = "SGVsbG8gd29ybGQ=",
///             RequestUrl = "https://bing.com",
///         },
///         ResourceGroupName = "my-resource-group",
///         RetryEnabled = true,
///         SyntheticMonitorId = "my-webtest-my-component",
///         Timeout = 120,
///         ValidationRules = new AzureNative.ApplicationInsights.Inputs.WebTestPropertiesValidationRulesArgs
///         {
///             SSLCertRemainingLifetimeCheck = 100,
///             SSLCheck = true,
///         },
///         WebTestKind = AzureNative.ApplicationInsights.WebTestKind.Standard,
///         WebTestName = "my-webtest-my-component",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewWebTest(ctx, "webTest", &applicationinsights.WebTestArgs{
/// 			Description: pulumi.String("Ping web test alert for mytestwebapp"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Frequency:   pulumi.Int(900),
/// 			Location:    pulumi.String("South Central US"),
/// 			Locations: applicationinsights.WebTestGeolocationArray{
/// 				&applicationinsights.WebTestGeolocationArgs{
/// 					Location: pulumi.String("us-fl-mia-edge"),
/// 				},
/// 			},
/// 			Request: &applicationinsights.WebTestPropertiesRequestArgs{
/// 				Headers: applicationinsights.HeaderFieldArray{
/// 					&applicationinsights.HeaderFieldArgs{
/// 						HeaderFieldName:  pulumi.String("Content-Language"),
/// 						HeaderFieldValue: pulumi.String("de-DE"),
/// 					},
/// 					&applicationinsights.HeaderFieldArgs{
/// 						HeaderFieldName:  pulumi.String("Accept-Language"),
/// 						HeaderFieldValue: pulumi.String("de-DE"),
/// 					},
/// 				},
/// 				HttpVerb:    pulumi.String("POST"),
/// 				RequestBody: pulumi.String("SGVsbG8gd29ybGQ="),
/// 				RequestUrl:  pulumi.String("https://bing.com"),
/// 			},
/// 			ResourceGroupName:  pulumi.String("my-resource-group"),
/// 			RetryEnabled:       pulumi.Bool(true),
/// 			SyntheticMonitorId: pulumi.String("my-webtest-my-component"),
/// 			Timeout:            pulumi.Int(120),
/// 			ValidationRules: &applicationinsights.WebTestPropertiesValidationRulesArgs{
/// 				SSLCertRemainingLifetimeCheck: pulumi.Int(100),
/// 				SSLCheck:                      pulumi.Bool(true),
/// 			},
/// 			WebTestKind: applicationinsights.WebTestKindStandard,
/// 			WebTestName: pulumi.String("my-webtest-my-component"),
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
/// import com.pulumi.azurenative.applicationinsights.WebTest;
/// import com.pulumi.azurenative.applicationinsights.WebTestArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestGeolocationArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestPropertiesRequestArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestPropertiesValidationRulesArgs;
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
///         var webTest = new WebTest("webTest", WebTestArgs.builder()
///             .description("Ping web test alert for mytestwebapp")
///             .enabled(true)
///             .frequency(900)
///             .location("South Central US")
///             .locations(WebTestGeolocationArgs.builder()
///                 .location("us-fl-mia-edge")
///                 .build())
///             .request(WebTestPropertiesRequestArgs.builder()
///                 .headers(
///                     HeaderFieldArgs.builder()
///                         .headerFieldName("Content-Language")
///                         .headerFieldValue("de-DE")
///                         .build(),
///                     HeaderFieldArgs.builder()
///                         .headerFieldName("Accept-Language")
///                         .headerFieldValue("de-DE")
///                         .build())
///                 .httpVerb("POST")
///                 .requestBody("SGVsbG8gd29ybGQ=")
///                 .requestUrl("https://bing.com")
///                 .build())
///             .resourceGroupName("my-resource-group")
///             .retryEnabled(true)
///             .syntheticMonitorId("my-webtest-my-component")
///             .timeout(120)
///             .validationRules(WebTestPropertiesValidationRulesArgs.builder()
///                 .sSLCertRemainingLifetimeCheck(100)
///                 .sSLCheck(true)
///                 .build())
///             .webTestKind("standard")
///             .webTestName("my-webtest-my-component")
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
/// const webTest = new azure_native.applicationinsights.WebTest("webTest", {
///     description: "Ping web test alert for mytestwebapp",
///     enabled: true,
///     frequency: 900,
///     location: "South Central US",
///     locations: [{
///         location: "us-fl-mia-edge",
///     }],
///     request: {
///         headers: [
///             {
///                 headerFieldName: "Content-Language",
///                 headerFieldValue: "de-DE",
///             },
///             {
///                 headerFieldName: "Accept-Language",
///                 headerFieldValue: "de-DE",
///             },
///         ],
///         httpVerb: "POST",
///         requestBody: "SGVsbG8gd29ybGQ=",
///         requestUrl: "https://bing.com",
///     },
///     resourceGroupName: "my-resource-group",
///     retryEnabled: true,
///     syntheticMonitorId: "my-webtest-my-component",
///     timeout: 120,
///     validationRules: {
///         sSLCertRemainingLifetimeCheck: 100,
///         sSLCheck: true,
///     },
///     webTestKind: azure_native.applicationinsights.WebTestKind.Standard,
///     webTestName: "my-webtest-my-component",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_test = azure_native.applicationinsights.WebTest("webTest",
///     description="Ping web test alert for mytestwebapp",
///     enabled=True,
///     frequency=900,
///     location="South Central US",
///     locations=[{
///         "location": "us-fl-mia-edge",
///     }],
///     request={
///         "headers": [
///             {
///                 "header_field_name": "Content-Language",
///                 "header_field_value": "de-DE",
///             },
///             {
///                 "header_field_name": "Accept-Language",
///                 "header_field_value": "de-DE",
///             },
///         ],
///         "http_verb": "POST",
///         "request_body": "SGVsbG8gd29ybGQ=",
///         "request_url": "https://bing.com",
///     },
///     resource_group_name="my-resource-group",
///     retry_enabled=True,
///     synthetic_monitor_id="my-webtest-my-component",
///     timeout=120,
///     validation_rules={
///         "s_sl_cert_remaining_lifetime_check": 100,
///         "s_sl_check": True,
///     },
///     web_test_kind=azure_native.applicationinsights.WebTestKind.STANDARD,
///     web_test_name="my-webtest-my-component")
///
/// ```
///
/// ```yaml
/// resources:
///   webTest:
///     type: azure-native:applicationinsights:WebTest
///     properties:
///       description: Ping web test alert for mytestwebapp
///       enabled: true
///       frequency: 900
///       location: South Central US
///       locations:
///         - location: us-fl-mia-edge
///       request:
///         headers:
///           - headerFieldName: Content-Language
///             headerFieldValue: de-DE
///           - headerFieldName: Accept-Language
///             headerFieldValue: de-DE
///         httpVerb: POST
///         requestBody: SGVsbG8gd29ybGQ=
///         requestUrl: https://bing.com
///       resourceGroupName: my-resource-group
///       retryEnabled: true
///       syntheticMonitorId: my-webtest-my-component
///       timeout: 120
///       validationRules:
///         sSLCertRemainingLifetimeCheck: 100
///         sSLCheck: true
///       webTestKind: standard
///       webTestName: my-webtest-my-component
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### webTestUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webTest = new AzureNative.ApplicationInsights.WebTest("webTest", new()
///     {
///         Configuration = new AzureNative.ApplicationInsights.Inputs.WebTestPropertiesConfigurationArgs
///         {
///             WebTest = "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"30\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"30\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///         },
///         Frequency = 600,
///         Kind = AzureNative.ApplicationInsights.WebTestKind.Ping,
///         Location = "South Central US",
///         Locations = new[]
///         {
///             new AzureNative.ApplicationInsights.Inputs.WebTestGeolocationArgs
///             {
///                 Location = "us-fl-mia-edge",
///             },
///             new AzureNative.ApplicationInsights.Inputs.WebTestGeolocationArgs
///             {
///                 Location = "apac-hk-hkn-azr",
///             },
///         },
///         ResourceGroupName = "my-resource-group",
///         SyntheticMonitorId = "my-webtest-my-component",
///         Timeout = 30,
///         WebTestKind = AzureNative.ApplicationInsights.WebTestKind.Ping,
///         WebTestName = "my-webtest-my-component",
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
/// 	applicationinsights "github.com/pulumi/pulumi-azure-native-sdk/applicationinsights/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := applicationinsights.NewWebTest(ctx, "webTest", &applicationinsights.WebTestArgs{
/// 			Configuration: &applicationinsights.WebTestPropertiesConfigurationArgs{
/// 				WebTest: pulumi.String("<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"30\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"30\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>"),
/// 			},
/// 			Frequency: pulumi.Int(600),
/// 			Kind:      applicationinsights.WebTestKindPing,
/// 			Location:  pulumi.String("South Central US"),
/// 			Locations: applicationinsights.WebTestGeolocationArray{
/// 				&applicationinsights.WebTestGeolocationArgs{
/// 					Location: pulumi.String("us-fl-mia-edge"),
/// 				},
/// 				&applicationinsights.WebTestGeolocationArgs{
/// 					Location: pulumi.String("apac-hk-hkn-azr"),
/// 				},
/// 			},
/// 			ResourceGroupName:  pulumi.String("my-resource-group"),
/// 			SyntheticMonitorId: pulumi.String("my-webtest-my-component"),
/// 			Timeout:            pulumi.Int(30),
/// 			WebTestKind:        applicationinsights.WebTestKindPing,
/// 			WebTestName:        pulumi.String("my-webtest-my-component"),
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
/// import com.pulumi.azurenative.applicationinsights.WebTest;
/// import com.pulumi.azurenative.applicationinsights.WebTestArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestPropertiesConfigurationArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.WebTestGeolocationArgs;
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
///         var webTest = new WebTest("webTest", WebTestArgs.builder()
///             .configuration(WebTestPropertiesConfigurationArgs.builder()
///                 .webTest("<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"30\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"30\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>")
///                 .build())
///             .frequency(600)
///             .kind("ping")
///             .location("South Central US")
///             .locations(
///                 WebTestGeolocationArgs.builder()
///                     .location("us-fl-mia-edge")
///                     .build(),
///                 WebTestGeolocationArgs.builder()
///                     .location("apac-hk-hkn-azr")
///                     .build())
///             .resourceGroupName("my-resource-group")
///             .syntheticMonitorId("my-webtest-my-component")
///             .timeout(30)
///             .webTestKind("ping")
///             .webTestName("my-webtest-my-component")
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
/// const webTest = new azure_native.applicationinsights.WebTest("webTest", {
///     configuration: {
///         webTest: "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"30\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"30\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///     },
///     frequency: 600,
///     kind: azure_native.applicationinsights.WebTestKind.Ping,
///     location: "South Central US",
///     locations: [
///         {
///             location: "us-fl-mia-edge",
///         },
///         {
///             location: "apac-hk-hkn-azr",
///         },
///     ],
///     resourceGroupName: "my-resource-group",
///     syntheticMonitorId: "my-webtest-my-component",
///     timeout: 30,
///     webTestKind: azure_native.applicationinsights.WebTestKind.Ping,
///     webTestName: "my-webtest-my-component",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_test = azure_native.applicationinsights.WebTest("webTest",
///     configuration={
///         "web_test": "<WebTest Name=\"my-webtest\" Id=\"678ddf96-1ab8-44c8-9274-123456789abc\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"30\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\" ><Items><Request Method=\"GET\" Guid=\"a4162485-9114-fcfc-e086-123456789abc\" Version=\"1.1\" Url=\"http://my-component.azurewebsites.net\" ThinkTime=\"0\" Timeout=\"30\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" /></Items></WebTest>",
///     },
///     frequency=600,
///     kind=azure_native.applicationinsights.WebTestKind.PING,
///     location="South Central US",
///     locations=[
///         {
///             "location": "us-fl-mia-edge",
///         },
///         {
///             "location": "apac-hk-hkn-azr",
///         },
///     ],
///     resource_group_name="my-resource-group",
///     synthetic_monitor_id="my-webtest-my-component",
///     timeout=30,
///     web_test_kind=azure_native.applicationinsights.WebTestKind.PING,
///     web_test_name="my-webtest-my-component")
///
/// ```
///
/// ```yaml
/// resources:
///   webTest:
///     type: azure-native:applicationinsights:WebTest
///     properties:
///       configuration:
///         webTest: <WebTest Name="my-webtest" Id="678ddf96-1ab8-44c8-9274-123456789abc" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="30" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="" ><Items><Request Method="GET" Guid="a4162485-9114-fcfc-e086-123456789abc" Version="1.1" Url="http://my-component.azurewebsites.net" ThinkTime="0" Timeout="30" ParseDependentRequests="True" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" /></Items></WebTest>
///       frequency: 600
///       kind: ping
///       location: South Central US
///       locations:
///         - location: us-fl-mia-edge
///         - location: apac-hk-hkn-azr
///       resourceGroupName: my-resource-group
///       syntheticMonitorId: my-webtest-my-component
///       timeout: 30
///       webTestKind: ping
///       webTestName: my-webtest-my-component
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
/// $ pulumi import azure-native:applicationinsights:WebTest my-webtest-my-component /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/webtests/{webTestName}
/// ```
class WebTest extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// An XML configuration specification for a WebTest.
  late final pulumi.Output<WebTestPropertiesResponseConfiguration?> configuration;
  /// User defined description for this WebTest.
  late final pulumi.Output<String?> description;
  /// Is the test actively being monitored.
  late final pulumi.Output<bool?> enabled;
  /// Interval in seconds between test runs for this WebTest. Default value is 300.
  late final pulumi.Output<int?> frequency;
  /// The kind of WebTest that this web test watches. Choices are ping, multistep and standard.
  late final pulumi.Output<String?> kind;
  /// Resource location
  late final pulumi.Output<String> location;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  late final pulumi.Output<List<WebTestGeolocationResponse>> locations;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// Current state of this component, whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed.
  late final pulumi.Output<String> provisioningState;
  /// The collection of request properties
  late final pulumi.Output<WebTestPropertiesResponseRequest?> request;
  /// Allow for retries should this WebTest fail.
  late final pulumi.Output<bool?> retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  late final pulumi.Output<String> syntheticMonitorId;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Seconds until this WebTest will timeout and fail. Default value is 30.
  late final pulumi.Output<int?> timeout;
  /// Azure resource type
  late final pulumi.Output<String> type;
  /// The collection of validation rule properties
  late final pulumi.Output<WebTestPropertiesResponseValidationRules?> validationRules;
  /// The kind of web test this is, valid choices are ping, multistep and standard.
  late final pulumi.Output<String> webTestKind;
  /// User defined name if this WebTest.
  late final pulumi.Output<String> webTestName;

  /// Creates a new [WebTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebTest]. {@macro pulumi_applicationinsights_web_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebTest(
    String name, {
    WebTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:applicationinsights:WebTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configuration = registerOutput<WebTestPropertiesResponseConfiguration?>('configuration');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.frequency = registerOutput<int?>('frequency');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String>('location');
    this.locations = registerOutput<List<WebTestGeolocationResponse>>('locations');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.request = registerOutput<WebTestPropertiesResponseRequest?>('request');
    this.retryEnabled = registerOutput<bool?>('retryEnabled');
    this.syntheticMonitorId = registerOutput<String>('syntheticMonitorId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<int?>('timeout');
    this.type = registerOutput<String>('type');
    this.validationRules = registerOutput<WebTestPropertiesResponseValidationRules?>('validationRules');
    this.webTestKind = registerOutput<String>('webTestKind');
    this.webTestName = registerOutput<String>('webTestName');
  }
}
