import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_check_monitor_args.dart';
import 'cert_check_monitor_tag.dart';

/// Use this resource to create, update, and delete a Synthetics Certificate Check monitor in New Relic.
///
/// > **IMPORTANT:**  The **Synthetics Legacy Runtime** has reached its <b style="color:red;">end-of-life</b> on <b style="color:red;">October 22, 2024</b>. As a consequence, using the legacy runtime or blank runtime values with Synthetic monitor requests from the New Relic Terraform Provider will result in API errors. Starting with **v3.51.0** of the New Relic Terraform Provider, configurations of Synthetic monitors without runtime attributes or comprising legacy runtime values will be deemed invalid.
/// <br><br>
/// If your Synthetic monitors' configuration is not updated already with new runtime values, upgrade as soon as possible to avoid these consequences. For more details and instructions, please see the detailed warning against `runtime_type` and `runtime_type_version` in the **Argument Reference** section.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.CertCheckMonitor("foo", {
///     name: "Sample Cert Check Monitor",
///     domain: "www.example.com",
///     locationsPublics: ["AP_SOUTH_1"],
///     certificateExpiration: 10,
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     runtimeType: "NODE_API",
///     runtimeTypeVersion: "16.10",
///     tags: [{
///         key: "some_key",
///         values: ["some_value"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.CertCheckMonitor("foo",
///     name="Sample Cert Check Monitor",
///     domain="www.example.com",
///     locations_publics=["AP_SOUTH_1"],
///     certificate_expiration=10,
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     runtime_type="NODE_API",
///     runtime_type_version="16.10",
///     tags=[{
///         "key": "some_key",
///         "values": ["some_value"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.CertCheckMonitor("foo", new()
///     {
///         Name = "Sample Cert Check Monitor",
///         Domain = "www.example.com",
///         LocationsPublics = new[]
///         {
///             "AP_SOUTH_1",
///         },
///         CertificateExpiration = 10,
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         RuntimeType = "NODE_API",
///         RuntimeTypeVersion = "16.10",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.CertCheckMonitorTagArgs
///             {
///                 Key = "some_key",
///                 Values = new[]
///                 {
///                     "some_value",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewCertCheckMonitor(ctx, "foo", &synthetics.CertCheckMonitorArgs{
/// 			Name:   pulumi.String("Sample Cert Check Monitor"),
/// 			Domain: pulumi.String("www.example.com"),
/// 			LocationsPublics: pulumi.StringArray{
/// 				pulumi.String("AP_SOUTH_1"),
/// 			},
/// 			CertificateExpiration: pulumi.Int(10),
/// 			Period:                pulumi.String("EVERY_6_HOURS"),
/// 			Status:                pulumi.String("ENABLED"),
/// 			RuntimeType:           pulumi.String("NODE_API"),
/// 			RuntimeTypeVersion:    pulumi.String("16.10"),
/// 			Tags: synthetics.CertCheckMonitorTagArray{
/// 				&synthetics.CertCheckMonitorTagArgs{
/// 					Key: pulumi.String("some_key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("some_value"),
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
/// import com.pulumi.newrelic.synthetics.CertCheckMonitor;
/// import com.pulumi.newrelic.synthetics.CertCheckMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.CertCheckMonitorTagArgs;
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
///         var foo = new CertCheckMonitor("foo", CertCheckMonitorArgs.builder()
///             .name("Sample Cert Check Monitor")
///             .domain("www.example.com")
///             .locationsPublics("AP_SOUTH_1")
///             .certificateExpiration(10)
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .runtimeType("NODE_API")
///             .runtimeTypeVersion("16.10")
///             .tags(CertCheckMonitorTagArgs.builder()
///                 .key("some_key")
///                 .values("some_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:CertCheckMonitor
///     properties:
///       name: Sample Cert Check Monitor
///       domain: www.example.com
///       locationsPublics:
///         - AP_SOUTH_1
///       certificateExpiration: '10'
///       period: EVERY_6_HOURS
///       status: ENABLED
///       runtimeType: NODE_API
///       runtimeTypeVersion: '16.10'
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// ### Create a monitor with a private location
///
/// The below example shows how you can define a private location and attach it to a monitor.
///
/// > **NOTE:** It can take up to 10 minutes for a private location to become available.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.PrivateLocation("foo", {
///     name: "Sample Private Location",
///     description: "Sample Private Location Description",
///     verifiedScriptExecution: false,
/// });
/// const fooCertCheckMonitor = new newrelic.synthetics.CertCheckMonitor("foo", {
///     name: "Sample Cert Check Monitor",
///     domain: "www.one.example.com",
///     locationsPrivates: [foo.id],
///     certificateExpiration: 10,
///     period: "EVERY_6_HOURS",
///     status: "ENABLED",
///     tags: [{
///         key: "some_key",
///         values: ["some_value"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.PrivateLocation("foo",
///     name="Sample Private Location",
///     description="Sample Private Location Description",
///     verified_script_execution=False)
/// foo_cert_check_monitor = newrelic.synthetics.CertCheckMonitor("foo",
///     name="Sample Cert Check Monitor",
///     domain="www.one.example.com",
///     locations_privates=[foo.id],
///     certificate_expiration=10,
///     period="EVERY_6_HOURS",
///     status="ENABLED",
///     tags=[{
///         "key": "some_key",
///         "values": ["some_value"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.PrivateLocation("foo", new()
///     {
///         Name = "Sample Private Location",
///         Description = "Sample Private Location Description",
///         VerifiedScriptExecution = false,
///     });
///
///     var fooCertCheckMonitor = new NewRelic.Synthetics.CertCheckMonitor("foo", new()
///     {
///         Name = "Sample Cert Check Monitor",
///         Domain = "www.one.example.com",
///         LocationsPrivates = new[]
///         {
///             foo.Id,
///         },
///         CertificateExpiration = 10,
///         Period = "EVERY_6_HOURS",
///         Status = "ENABLED",
///         Tags = new[]
///         {
///             new NewRelic.Synthetics.Inputs.CertCheckMonitorTagArgs
///             {
///                 Key = "some_key",
///                 Values = new[]
///                 {
///                     "some_value",
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := synthetics.NewPrivateLocation(ctx, "foo", &synthetics.PrivateLocationArgs{
/// 			Name:                    pulumi.String("Sample Private Location"),
/// 			Description:             pulumi.String("Sample Private Location Description"),
/// 			VerifiedScriptExecution: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = synthetics.NewCertCheckMonitor(ctx, "foo", &synthetics.CertCheckMonitorArgs{
/// 			Name:   pulumi.String("Sample Cert Check Monitor"),
/// 			Domain: pulumi.String("www.one.example.com"),
/// 			LocationsPrivates: pulumi.StringArray{
/// 				foo.ID(),
/// 			},
/// 			CertificateExpiration: pulumi.Int(10),
/// 			Period:                pulumi.String("EVERY_6_HOURS"),
/// 			Status:                pulumi.String("ENABLED"),
/// 			Tags: synthetics.CertCheckMonitorTagArray{
/// 				&synthetics.CertCheckMonitorTagArgs{
/// 					Key: pulumi.String("some_key"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("some_value"),
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
/// import com.pulumi.newrelic.synthetics.PrivateLocation;
/// import com.pulumi.newrelic.synthetics.PrivateLocationArgs;
/// import com.pulumi.newrelic.synthetics.CertCheckMonitor;
/// import com.pulumi.newrelic.synthetics.CertCheckMonitorArgs;
/// import com.pulumi.newrelic.synthetics.inputs.CertCheckMonitorTagArgs;
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
///         var foo = new PrivateLocation("foo", PrivateLocationArgs.builder()
///             .name("Sample Private Location")
///             .description("Sample Private Location Description")
///             .verifiedScriptExecution(false)
///             .build());
///
///         var fooCertCheckMonitor = new CertCheckMonitor("fooCertCheckMonitor", CertCheckMonitorArgs.builder()
///             .name("Sample Cert Check Monitor")
///             .domain("www.one.example.com")
///             .locationsPrivates(foo.id())
///             .certificateExpiration(10)
///             .period("EVERY_6_HOURS")
///             .status("ENABLED")
///             .tags(CertCheckMonitorTagArgs.builder()
///                 .key("some_key")
///                 .values("some_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:PrivateLocation
///     properties:
///       name: Sample Private Location
///       description: Sample Private Location Description
///       verifiedScriptExecution: false
///   fooCertCheckMonitor:
///     type: newrelic:synthetics:CertCheckMonitor
///     name: foo
///     properties:
///       name: Sample Cert Check Monitor
///       domain: www.one.example.com
///       locationsPrivates:
///         - ${foo.id}
///       certificateExpiration: '10'
///       period: EVERY_6_HOURS
///       status: ENABLED
///       tags:
///         - key: some_key
///           values:
///             - some_value
/// ```
///
///
/// ## Import
///
/// A cert check monitor can be imported using its GUID, using the following command.
///
/// ```bash
/// $ terraform import newrelic_synthetics_cert_check_monitor.monitor <guid>
/// ```
class CertCheckMonitor extends pulumi.CustomResource {
  /// The account in which the Synthetics monitor will be created.
  late final pulumi.Output<String> accountId;
  /// The desired number of remaining days until the certificate expires to trigger a monitor failure.
  late final pulumi.Output<int> certificateExpiration;
  /// The domain of the host that will have its certificate checked.
  late final pulumi.Output<String> domain;
  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  late final pulumi.Output<List<String>?> locationsPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  late final pulumi.Output<List<String>?> locationsPublics;
  /// The monitor id of the certificate check synthetics monitor (not to be confused with the GUID of the monitor).
  late final pulumi.Output<String> monitorId;
  /// The name for the monitor.
  late final pulumi.Output<String> name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  late final pulumi.Output<String> period;
  /// The interval in minutes at which Synthetic monitor should run.
  late final pulumi.Output<int> periodInMinutes;
  /// The runtime that the monitor will use to run jobs (`NODE_API`).
  late final pulumi.Output<String?> runtimeType_;
  /// The specific version of the runtime type selected (`16.10`).
  ///
  /// > **WARNING:**  The <b style="color:red;">end-of-life</b> of the **Synthetics Legacy Runtime** took effect on <b style="color:red;">October 22, 2024</b>, implying that support for using the deprecated Synthetics Legacy Runtime with **new and existing** Synthetic monitors <b style="color:maroon;">officially ended as of October 22, 2024</b>. As a consequence of this API change, all requests associated with Synthetic Monitors (except Ping Monitors) going out of the New Relic Terraform Provider will be blocked by an API error if they include values corresponding to the legacy runtime or blank runtime values.
  /// <br><br>
  /// Following these changes, starting with <b style="color:red;">v3.51.0</b> of the New Relic Terraform Provider, configuration of **new and existing** Synthetic monitors without runtime attributes (or) comprising runtime attributes signifying the legacy runtime will be deemed invalid (this applies to all Synthetic monitor resources, except `newrelic.synthetics.Monitor` with type `SIMPLE`). If your monitors' configuration is not updated with new runtime values, you will see the consequences stated here. New Synthetic monitors created after August 26, 2024 already adhere to these restrictions, as part of the first phase of the EOL.
  /// <br><br>
  /// We kindly recommend that you upgrade your Synthetic Monitors to the new runtime as soon as possible if they are still using the legacy runtime, to avoid seeing the aforementioned consequences. Please check out this guide in the documentation of the Terraform Provider (specifically, the table at the bottom of the guide, if you're looking for updates to be made to the configuration of Synthetic monitors) and [this announcement](https://forum.newrelic.com/s/hubtopic/aAXPh0000001brxOAA/upcoming-endoflife-legacy-synthetics-runtimes-and-cpm) for more details on the EOL, actions needed, relevant resources, and more.
  /// <br><br>
  /// You would not be affected by the EOL if your Synthetic monitors' Terraform configuration comprises new runtime values.
  late final pulumi.Output<String?> runtimeTypeVersion;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  late final pulumi.Output<String> status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details
  late final pulumi.Output<List<CertCheckMonitorTag>?> tags;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  late final pulumi.Output<bool?> useUnsupportedLegacyRuntime;

  /// Creates a new [CertCheckMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertCheckMonitor]. {@macro pulumi_synthetics_cert_check_monitor_cert_check_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertCheckMonitor(
    String name, {
    CertCheckMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/certCheckMonitor:CertCheckMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.certificateExpiration = registerOutput<int>('certificateExpiration');
    this.domain = registerOutput<String>('domain');
    this.locationsPrivates = registerOutput<List<String>?>('locationsPrivates');
    this.locationsPublics = registerOutput<List<String>?>('locationsPublics');
    this.monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
    this.period = registerOutput<String>('period');
    this.periodInMinutes = registerOutput<int>('periodInMinutes');
    this.runtimeType_ = registerOutput<String?>('runtimeType');
    this.runtimeTypeVersion = registerOutput<String?>('runtimeTypeVersion');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<CertCheckMonitorTag>?>('tags');
    this.useUnsupportedLegacyRuntime = registerOutput<bool?>('useUnsupportedLegacyRuntime');
  }
}
