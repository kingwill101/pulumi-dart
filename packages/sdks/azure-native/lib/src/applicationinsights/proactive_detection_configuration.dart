import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_proactive_detection_configuration_properties_response.dart';
import 'proactive_detection_configuration_args.dart';

/// A ProactiveDetection configuration definition.
///
/// Uses Azure REST API version 2018-05-01-preview.
///
/// Other available API versions: 2015-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native applicationinsights [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ProactiveDetectionConfigurationUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var proactiveDetectionConfiguration = new AzureNative.ApplicationInsights.ProactiveDetectionConfiguration("proactiveDetectionConfiguration", new()
///     {
///         ConfigurationId = "slowpageloadtime",
///         CustomEmails = new[]
///         {
///             "foo@microsoft.com",
///             "foo2@microsoft.com",
///         },
///         Enabled = true,
///         Location = "South Central US",
///         Name = "slowpageloadtime",
///         ResourceGroupName = "my-resource-group",
///         ResourceName = "my-component",
///         RuleDefinitions = new AzureNative.ApplicationInsights.Inputs.ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitionsArgs
///         {
///             Description = "Smart Detection rules notify you of performance anomaly issues.",
///             DisplayName = "Slow page load time",
///             HelpUrl = "https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics",
///             IsEnabledByDefault = true,
///             IsHidden = false,
///             IsInPreview = false,
///             Name = "slowpageloadtime",
///             SupportsEmailNotifications = true,
///         },
///         SendEmailsToSubscriptionOwners = true,
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
/// 		_, err := applicationinsights.NewProactiveDetectionConfiguration(ctx, "proactiveDetectionConfiguration", &applicationinsights.ProactiveDetectionConfigurationArgs{
/// 			ConfigurationId: pulumi.String("slowpageloadtime"),
/// 			CustomEmails: pulumi.StringArray{
/// 				pulumi.String("foo@microsoft.com"),
/// 				pulumi.String("foo2@microsoft.com"),
/// 			},
/// 			Enabled:           pulumi.Bool(true),
/// 			Location:          pulumi.String("South Central US"),
/// 			Name:              pulumi.String("slowpageloadtime"),
/// 			ResourceGroupName: pulumi.String("my-resource-group"),
/// 			ResourceName:      pulumi.String("my-component"),
/// 			RuleDefinitions: &applicationinsights.ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitionsArgs{
/// 				Description:                pulumi.String("Smart Detection rules notify you of performance anomaly issues."),
/// 				DisplayName:                pulumi.String("Slow page load time"),
/// 				HelpUrl:                    pulumi.String("https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics"),
/// 				IsEnabledByDefault:         pulumi.Bool(true),
/// 				IsHidden:                   pulumi.Bool(false),
/// 				IsInPreview:                pulumi.Bool(false),
/// 				Name:                       pulumi.String("slowpageloadtime"),
/// 				SupportsEmailNotifications: pulumi.Bool(true),
/// 			},
/// 			SendEmailsToSubscriptionOwners: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.applicationinsights.ProactiveDetectionConfiguration;
/// import com.pulumi.azurenative.applicationinsights.ProactiveDetectionConfigurationArgs;
/// import com.pulumi.azurenative.applicationinsights.inputs.ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitionsArgs;
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
///         var proactiveDetectionConfiguration = new ProactiveDetectionConfiguration("proactiveDetectionConfiguration", ProactiveDetectionConfigurationArgs.builder()
///             .configurationId("slowpageloadtime")
///             .customEmails(
///                 "foo@microsoft.com",
///                 "foo2@microsoft.com")
///             .enabled(true)
///             .location("South Central US")
///             .name("slowpageloadtime")
///             .resourceGroupName("my-resource-group")
///             .resourceName("my-component")
///             .ruleDefinitions(ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesRuleDefinitionsArgs.builder()
///                 .description("Smart Detection rules notify you of performance anomaly issues.")
///                 .displayName("Slow page load time")
///                 .helpUrl("https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics")
///                 .isEnabledByDefault(true)
///                 .isHidden(false)
///                 .isInPreview(false)
///                 .name("slowpageloadtime")
///                 .supportsEmailNotifications(true)
///                 .build())
///             .sendEmailsToSubscriptionOwners(true)
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
/// const proactiveDetectionConfiguration = new azure_native.applicationinsights.ProactiveDetectionConfiguration("proactiveDetectionConfiguration", {
///     configurationId: "slowpageloadtime",
///     customEmails: [
///         "foo@microsoft.com",
///         "foo2@microsoft.com",
///     ],
///     enabled: true,
///     location: "South Central US",
///     name: "slowpageloadtime",
///     resourceGroupName: "my-resource-group",
///     resourceName: "my-component",
///     ruleDefinitions: {
///         description: "Smart Detection rules notify you of performance anomaly issues.",
///         displayName: "Slow page load time",
///         helpUrl: "https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics",
///         isEnabledByDefault: true,
///         isHidden: false,
///         isInPreview: false,
///         name: "slowpageloadtime",
///         supportsEmailNotifications: true,
///     },
///     sendEmailsToSubscriptionOwners: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// proactive_detection_configuration = azure_native.applicationinsights.ProactiveDetectionConfiguration("proactiveDetectionConfiguration",
///     configuration_id="slowpageloadtime",
///     custom_emails=[
///         "foo@microsoft.com",
///         "foo2@microsoft.com",
///     ],
///     enabled=True,
///     location="South Central US",
///     name="slowpageloadtime",
///     resource_group_name="my-resource-group",
///     resource_name_="my-component",
///     rule_definitions={
///         "description": "Smart Detection rules notify you of performance anomaly issues.",
///         "display_name": "Slow page load time",
///         "help_url": "https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics",
///         "is_enabled_by_default": True,
///         "is_hidden": False,
///         "is_in_preview": False,
///         "name": "slowpageloadtime",
///         "supports_email_notifications": True,
///     },
///     send_emails_to_subscription_owners=True)
///
/// ```
///
/// ```yaml
/// resources:
///   proactiveDetectionConfiguration:
///     type: azure-native:applicationinsights:ProactiveDetectionConfiguration
///     properties:
///       configurationId: slowpageloadtime
///       customEmails:
///         - foo@microsoft.com
///         - foo2@microsoft.com
///       enabled: true
///       location: South Central US
///       name: slowpageloadtime
///       resourceGroupName: my-resource-group
///       resourceName: my-component
///       ruleDefinitions:
///         description: Smart Detection rules notify you of performance anomaly issues.
///         displayName: Slow page load time
///         helpUrl: https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics
///         isEnabledByDefault: true
///         isHidden: false
///         isInPreview: false
///         name: slowpageloadtime
///         supportsEmailNotifications: true
///       sendEmailsToSubscriptionOwners: true
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
/// $ pulumi import azure-native:applicationinsights:ProactiveDetectionConfiguration slowpageloadtime /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/components/{resourceName}/ProactiveDetectionConfigs/{ConfigurationId}
/// ```
class ProactiveDetectionConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource location
  late final pulumi.Output<String?> location;

  /// Azure resource name
  late final pulumi.Output<String?> name;

  /// Properties that define a ProactiveDetection configuration.
  late final pulumi.Output<
    ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse
  >
  properties;

  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [ProactiveDetectionConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProactiveDetectionConfiguration]. {@macro pulumi_applicationinsights_proactive_detection_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProactiveDetectionConfiguration(
    String name, {
    ProactiveDetectionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:applicationinsights:ProactiveDetectionConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    properties =
        registerOutput<
          ApplicationInsightsComponentProactiveDetectionConfigurationPropertiesResponse
        >('properties');
    type = registerOutput<String>('type');
  }
}
