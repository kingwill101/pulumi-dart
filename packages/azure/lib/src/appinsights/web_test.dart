import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_test_args.dart';

/// Manages an Application Insights WebTest.
///
/// > **Note:** Despite the discrepancy in its name, this Terraform resource corresponds to the Azure resource 'Application Insights Classic Web Test'. Azure changed the name, but we retained the original name in Terraform to avoid disruption and ensure backward compatibility.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tf-test",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "tf-test-appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const exampleWebTest = new azure.appinsights.WebTest("example", {
///     name: "tf-test-appinsights-webtest",
///     location: exampleInsights.location,
///     resourceGroupName: example.name,
///     applicationInsightsId: exampleInsights.id,
///     kind: "ping",
///     frequency: 300,
///     timeout: 60,
///     enabled: true,
///     geoLocations: [
///         "us-tx-sn1-azr",
///         "us-il-ch1-azr",
///     ],
///     configuration: `<WebTest Name=\\"WebTest1\\" Id=\\"ABD48585-0831-40CB-9069-682EA6BB3583\\" Enabled=\\"True\\" CssProjectStructure=\\"\\" CssIteration=\\"\\" Timeout=\\"0\\" WorkItemIds=\\"\\" xmlns=\\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\\" Description=\\"\\" CredentialUserName=\\"\\" CredentialPassword=\\"\\" PreAuthenticate=\\"True\\" Proxy=\\"default\\" StopOnError=\\"False\\" RecordedResultFile=\\"\\" ResultsLocale=\\"\\">
///   <Items>
///     <Request Method=\\"GET\\" Guid=\\"a5f10126-e4cd-570d-961c-cea43999a200\\" Version=\\"1.1\\" Url=\\"http://microsoft.com\\" ThinkTime=\\"0\\" Timeout=\\"300\\" ParseDependentRequests=\\"True\\" FollowRedirects=\\"True\\" RecordResult=\\"True\\" Cache=\\"False\\" ResponseTimeGoal=\\"0\\" Encoding=\\"utf-8\\" ExpectedHttpStatusCode=\\"200\\" ExpectedResponseUrl=\\"\\" ReportingName=\\"\\" IgnoreHttpStatusCode=\\"False\\" />
///   </Items>
/// </WebTest>
/// `,
/// });
/// export const webtestId = exampleWebTest.id;
/// export const webtestsSyntheticId = exampleWebTest.syntheticMonitorId;
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tf-test",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="tf-test-appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example_web_test = azure.appinsights.WebTest("example",
///     name="tf-test-appinsights-webtest",
///     location=example_insights.location,
///     resource_group_name=example.name,
///     application_insights_id=example_insights.id,
///     kind="ping",
///     frequency=300,
///     timeout=60,
///     enabled=True,
///     geo_locations=[
///         "us-tx-sn1-azr",
///         "us-il-ch1-azr",
///     ],
///     configuration="""<WebTest Name=\"WebTest1\" Id=\"ABD48585-0831-40CB-9069-682EA6BB3583\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"0\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\">
///   <Items>
///     <Request Method=\"GET\" Guid=\"a5f10126-e4cd-570d-961c-cea43999a200\" Version=\"1.1\" Url=\"http://microsoft.com\" ThinkTime=\"0\" Timeout=\"300\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" />
///   </Items>
/// </WebTest>
/// """)
/// pulumi.export("webtestId", example_web_test.id)
/// pulumi.export("webtestsSyntheticId", example_web_test.synthetic_monitor_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tf-test",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "tf-test-appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var exampleWebTest = new Azure.AppInsights.WebTest("example", new()
///     {
///         Name = "tf-test-appinsights-webtest",
///         Location = exampleInsights.Location,
///         ResourceGroupName = example.Name,
///         ApplicationInsightsId = exampleInsights.Id,
///         Kind = "ping",
///         Frequency = 300,
///         Timeout = 60,
///         Enabled = true,
///         GeoLocations = new[]
///         {
///             "us-tx-sn1-azr",
///             "us-il-ch1-azr",
///         },
///         Configuration = @"<WebTest Name=\""WebTest1\"" Id=\""ABD48585-0831-40CB-9069-682EA6BB3583\"" Enabled=\""True\"" CssProjectStructure=\""\"" CssIteration=\""\"" Timeout=\""0\"" WorkItemIds=\""\"" xmlns=\""http://microsoft.com/schemas/VisualStudio/TeamTest/2010\"" Description=\""\"" CredentialUserName=\""\"" CredentialPassword=\""\"" PreAuthenticate=\""True\"" Proxy=\""default\"" StopOnError=\""False\"" RecordedResultFile=\""\"" ResultsLocale=\""\"">
///   <Items>
///     <Request Method=\""GET\"" Guid=\""a5f10126-e4cd-570d-961c-cea43999a200\"" Version=\""1.1\"" Url=\""http://microsoft.com\"" ThinkTime=\""0\"" Timeout=\""300\"" ParseDependentRequests=\""True\"" FollowRedirects=\""True\"" RecordResult=\""True\"" Cache=\""False\"" ResponseTimeGoal=\""0\"" Encoding=\""utf-8\"" ExpectedHttpStatusCode=\""200\"" ExpectedResponseUrl=\""\"" ReportingName=\""\"" IgnoreHttpStatusCode=\""False\"" />
///   </Items>
/// </WebTest>
/// ",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["webtestId"] = exampleWebTest.Id,
///         ["webtestsSyntheticId"] = exampleWebTest.SyntheticMonitorId,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tf-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("tf-test-appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWebTest, err := appinsights.NewWebTest(ctx, "example", &appinsights.WebTestArgs{
/// 			Name:                  pulumi.String("tf-test-appinsights-webtest"),
/// 			Location:              exampleInsights.Location,
/// 			ResourceGroupName:     example.Name,
/// 			ApplicationInsightsId: exampleInsights.ID(),
/// 			Kind:                  pulumi.String("ping"),
/// 			Frequency:             pulumi.Int(300),
/// 			Timeout:               pulumi.Int(60),
/// 			Enabled:               pulumi.Bool(true),
/// 			GeoLocations: pulumi.StringArray{
/// 				pulumi.String("us-tx-sn1-azr"),
/// 				pulumi.String("us-il-ch1-azr"),
/// 			},
/// 			Configuration: pulumi.String(`<WebTest Name=\"WebTest1\" Id=\"ABD48585-0831-40CB-9069-682EA6BB3583\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"0\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\">
///   <Items>
///     <Request Method=\"GET\" Guid=\"a5f10126-e4cd-570d-961c-cea43999a200\" Version=\"1.1\" Url=\"http://microsoft.com\" ThinkTime=\"0\" Timeout=\"300\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" />
///   </Items>
/// </WebTest>
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("webtestId", exampleWebTest.ID())
/// 		ctx.Export("webtestsSyntheticId", exampleWebTest.SyntheticMonitorId)
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.appinsights.WebTest;
/// import com.pulumi.azure.appinsights.WebTestArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tf-test")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("tf-test-appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var exampleWebTest = new WebTest("exampleWebTest", WebTestArgs.builder()
///             .name("tf-test-appinsights-webtest")
///             .location(exampleInsights.location())
///             .resourceGroupName(example.name())
///             .applicationInsightsId(exampleInsights.id())
///             .kind("ping")
///             .frequency(300)
///             .timeout(60)
///             .enabled(true)
///             .geoLocations(
///                 "us-tx-sn1-azr",
///                 "us-il-ch1-azr")
///             .configuration("""
/// <WebTest Name=\"WebTest1\" Id=\"ABD48585-0831-40CB-9069-682EA6BB3583\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"0\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\">
///   <Items>
///     <Request Method=\"GET\" Guid=\"a5f10126-e4cd-570d-961c-cea43999a200\" Version=\"1.1\" Url=\"http://microsoft.com\" ThinkTime=\"0\" Timeout=\"300\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" />
///   </Items>
/// </WebTest>
///             """)
///             .build());
///
///         ctx.export("webtestId", exampleWebTest.id());
///         ctx.export("webtestsSyntheticId", exampleWebTest.syntheticMonitorId());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tf-test
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: tf-test-appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   exampleWebTest:
///     type: azure:appinsights:WebTest
///     name: example
///     properties:
///       name: tf-test-appinsights-webtest
///       location: ${exampleInsights.location}
///       resourceGroupName: ${example.name}
///       applicationInsightsId: ${exampleInsights.id}
///       kind: ping
///       frequency: 300
///       timeout: 60
///       enabled: true
///       geoLocations:
///         - us-tx-sn1-azr
///         - us-il-ch1-azr
///       configuration: |
///         <WebTest Name=\"WebTest1\" Id=\"ABD48585-0831-40CB-9069-682EA6BB3583\" Enabled=\"True\" CssProjectStructure=\"\" CssIteration=\"\" Timeout=\"0\" WorkItemIds=\"\" xmlns=\"http://microsoft.com/schemas/VisualStudio/TeamTest/2010\" Description=\"\" CredentialUserName=\"\" CredentialPassword=\"\" PreAuthenticate=\"True\" Proxy=\"default\" StopOnError=\"False\" RecordedResultFile=\"\" ResultsLocale=\"\">
///           <Items>
///             <Request Method=\"GET\" Guid=\"a5f10126-e4cd-570d-961c-cea43999a200\" Version=\"1.1\" Url=\"http://microsoft.com\" ThinkTime=\"0\" Timeout=\"300\" ParseDependentRequests=\"True\" FollowRedirects=\"True\" RecordResult=\"True\" Cache=\"False\" ResponseTimeGoal=\"0\" Encoding=\"utf-8\" ExpectedHttpStatusCode=\"200\" ExpectedResponseUrl=\"\" ReportingName=\"\" IgnoreHttpStatusCode=\"False\" />
///           </Items>
///         </WebTest>
/// outputs:
///   webtestId: ${exampleWebTest.id}
///   webtestsSyntheticId: ${exampleWebTest.syntheticMonitorId}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2022-06-15
///
/// ## Import
///
/// Application Insights Web Tests can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appinsights/webTest:WebTest my_test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Insights/webTests/my_test
/// ```
class WebTest extends pulumi.CustomResource {
  /// The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationInsightsId;
  /// An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)).
  late final pulumi.Output<String> configuration;
  /// Purpose/user defined descriptive test for this WebTest.
  late final pulumi.Output<String?> description;
  /// Is the test actively being monitored.
  late final pulumi.Output<bool?> enabled;
  /// Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  late final pulumi.Output<int?> frequency;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  ///
  /// > **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
  late final pulumi.Output<List<String>> geoLocations;
  /// The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights).
  late final pulumi.Output<String> location;
  /// Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource
  late final pulumi.Output<String> resourceGroupName;
  /// Allow for retries should this WebTest fail.
  late final pulumi.Output<bool?> retryEnabled;
  late final pulumi.Output<String> syntheticMonitorId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Seconds until this WebTest will timeout and fail. Default is `30`.
  late final pulumi.Output<int?> timeout;

  /// Creates a new [WebTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebTest]. {@macro pulumi_appinsights_web_test_web_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebTest(
    String name, {
    WebTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appinsights/webTest:WebTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationInsightsId = registerOutput<String>('applicationInsightsId');
    this.configuration = registerOutput<String>('configuration');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool?>('enabled');
    this.frequency = registerOutput<int?>('frequency');
    this.geoLocations = registerOutput<List<String>>('geoLocations');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retryEnabled = registerOutput<bool?>('retryEnabled');
    this.syntheticMonitorId = registerOutput<String>('syntheticMonitorId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<int?>('timeout');
  }
}
