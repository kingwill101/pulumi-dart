import 'package:pulumi/pulumi.dart';
import '../data_exchange_sharing_environment_config/data_exchange_sharing_environment_config.dart';
import 'data_exchange_args.dart';

/// A Bigquery Analytics Hub data exchange
///
///
/// To get more information about DataExchange, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.dataExchanges)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// ## Example Usage
///
/// ### Bigquery Analyticshub Data Exchange Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataExchange = new gcp.bigqueryanalyticshub.DataExchange("data_exchange", {
/// location: "US",
/// dataExchangeId: "my_data_exchange",
/// displayName: "my_data_exchange",
/// description: "example data exchange",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_exchange = gcp.bigqueryanalyticshub.DataExchange("data_exchange",
/// location="US",
/// data_exchange_id="my_data_exchange",
/// display_name="my_data_exchange",
/// description="example data exchange")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataExchange = new Gcp.BigQueryAnalyticsHub.DataExchange("data_exchange", new()
/// {
/// Location = "US",
/// DataExchangeId = "my_data_exchange",
/// DisplayName = "my_data_exchange",
/// Description = "example data exchange",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchange(ctx, "data_exchange", &bigqueryanalyticshub.DataExchangeArgs{
/// Location:       pulumi.String("US"),
/// DataExchangeId: pulumi.String("my_data_exchange"),
/// DisplayName:    pulumi.String("my_data_exchange"),
/// Description:    pulumi.String("example data exchange"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var dataExchange = new DataExchange("dataExchange", DataExchangeArgs.builder()
/// .location("US")
/// .dataExchangeId("my_data_exchange")
/// .displayName("my_data_exchange")
/// .description("example data exchange")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataExchange:
/// type: gcp:bigqueryanalyticshub:DataExchange
/// name: data_exchange
/// properties:
/// location: US
/// dataExchangeId: my_data_exchange
/// displayName: my_data_exchange
/// description: example data exchange
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Bigquery Analyticshub Data Exchange Dcr
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataExchange = new gcp.bigqueryanalyticshub.DataExchange("data_exchange", {
/// location: "US",
/// dataExchangeId: "dcr_data_exchange",
/// displayName: "dcr_data_exchange",
/// description: "example dcr data exchange",
/// sharingEnvironmentConfig: {
/// dcrExchangeConfig: {},
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_exchange = gcp.bigqueryanalyticshub.DataExchange("data_exchange",
/// location="US",
/// data_exchange_id="dcr_data_exchange",
/// display_name="dcr_data_exchange",
/// description="example dcr data exchange",
/// sharing_environment_config={
/// "dcr_exchange_config": {},
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataExchange = new Gcp.BigQueryAnalyticsHub.DataExchange("data_exchange", new()
/// {
/// Location = "US",
/// DataExchangeId = "dcr_data_exchange",
/// DisplayName = "dcr_data_exchange",
/// Description = "example dcr data exchange",
/// SharingEnvironmentConfig = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSharingEnvironmentConfigArgs
/// {
/// DcrExchangeConfig = null,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchange(ctx, "data_exchange", &bigqueryanalyticshub.DataExchangeArgs{
/// Location:       pulumi.String("US"),
/// DataExchangeId: pulumi.String("dcr_data_exchange"),
/// DisplayName:    pulumi.String("dcr_data_exchange"),
/// Description:    pulumi.String("example dcr data exchange"),
/// SharingEnvironmentConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigArgs{
/// DcrExchangeConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs{},
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var dataExchange = new DataExchange("dataExchange", DataExchangeArgs.builder()
/// .location("US")
/// .dataExchangeId("dcr_data_exchange")
/// .displayName("dcr_data_exchange")
/// .description("example dcr data exchange")
/// .sharingEnvironmentConfig(DataExchangeSharingEnvironmentConfigArgs.builder()
/// .dcrExchangeConfig(DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataExchange:
/// type: gcp:bigqueryanalyticshub:DataExchange
/// name: data_exchange
/// properties:
/// location: US
/// dataExchangeId: dcr_data_exchange
/// displayName: dcr_data_exchange
/// description: example dcr data exchange
/// sharingEnvironmentConfig:
/// dcrExchangeConfig: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Bigquery Analyticshub Data Exchange Log Linked Dataset Query User
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataExchange = new gcp.bigqueryanalyticshub.DataExchange("data_exchange", {
/// location: "US",
/// dataExchangeId: "tf_test_log_email_data_exchange",
/// displayName: "tf_test_log_email_data_exchange",
/// description: "Example for log email test for data exchange",
/// logLinkedDatasetQueryUserEmail: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_exchange = gcp.bigqueryanalyticshub.DataExchange("data_exchange",
/// location="US",
/// data_exchange_id="tf_test_log_email_data_exchange",
/// display_name="tf_test_log_email_data_exchange",
/// description="Example for log email test for data exchange",
/// log_linked_dataset_query_user_email=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataExchange = new Gcp.BigQueryAnalyticsHub.DataExchange("data_exchange", new()
/// {
/// Location = "US",
/// DataExchangeId = "tf_test_log_email_data_exchange",
/// DisplayName = "tf_test_log_email_data_exchange",
/// Description = "Example for log email test for data exchange",
/// LogLinkedDatasetQueryUserEmail = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchange(ctx, "data_exchange", &bigqueryanalyticshub.DataExchangeArgs{
/// Location:                       pulumi.String("US"),
/// DataExchangeId:                 pulumi.String("tf_test_log_email_data_exchange"),
/// DisplayName:                    pulumi.String("tf_test_log_email_data_exchange"),
/// Description:                    pulumi.String("Example for log email test for data exchange"),
/// LogLinkedDatasetQueryUserEmail: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var dataExchange = new DataExchange("dataExchange", DataExchangeArgs.builder()
/// .location("US")
/// .dataExchangeId("tf_test_log_email_data_exchange")
/// .displayName("tf_test_log_email_data_exchange")
/// .description("Example for log email test for data exchange")
/// .logLinkedDatasetQueryUserEmail(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataExchange:
/// type: gcp:bigqueryanalyticshub:DataExchange
/// name: data_exchange
/// properties:
/// location: US
/// dataExchangeId: tf_test_log_email_data_exchange
/// displayName: tf_test_log_email_data_exchange
/// description: Example for log email test for data exchange
/// logLinkedDatasetQueryUserEmail: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Bigquery Analyticshub Public Data Exchange
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dataExchange = new gcp.bigqueryanalyticshub.DataExchange("data_exchange", {
/// location: "US",
/// dataExchangeId: "public_data_exchange",
/// displayName: "public_data_exchange",
/// description: "Example for public data exchange",
/// discoveryType: "DISCOVERY_TYPE_PUBLIC",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// data_exchange = gcp.bigqueryanalyticshub.DataExchange("data_exchange",
/// location="US",
/// data_exchange_id="public_data_exchange",
/// display_name="public_data_exchange",
/// description="Example for public data exchange",
/// discovery_type="DISCOVERY_TYPE_PUBLIC")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var dataExchange = new Gcp.BigQueryAnalyticsHub.DataExchange("data_exchange", new()
/// {
/// Location = "US",
/// DataExchangeId = "public_data_exchange",
/// DisplayName = "public_data_exchange",
/// Description = "Example for public data exchange",
/// DiscoveryType = "DISCOVERY_TYPE_PUBLIC",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewDataExchange(ctx, "data_exchange", &bigqueryanalyticshub.DataExchangeArgs{
/// Location:       pulumi.String("US"),
/// DataExchangeId: pulumi.String("public_data_exchange"),
/// DisplayName:    pulumi.String("public_data_exchange"),
/// Description:    pulumi.String("Example for public data exchange"),
/// DiscoveryType:  pulumi.String("DISCOVERY_TYPE_PUBLIC"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var dataExchange = new DataExchange("dataExchange", DataExchangeArgs.builder()
/// .location("US")
/// .dataExchangeId("public_data_exchange")
/// .displayName("public_data_exchange")
/// .description("Example for public data exchange")
/// .discoveryType("DISCOVERY_TYPE_PUBLIC")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// dataExchange:
/// type: gcp:bigqueryanalyticshub:DataExchange
/// name: data_exchange
/// properties:
/// location: US
/// dataExchangeId: public_data_exchange
/// displayName: public_data_exchange
/// description: Example for public data exchange
/// discoveryType: DISCOVERY_TYPE_PUBLIC
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DataExchange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}`
///
/// * `{{project}}/{{location}}/{{data_exchange_id}}`
///
/// * `{{location}}/{{data_exchange_id}}`
///
/// * `{{data_exchange_id}}`
///
/// When using the `pulumi import` command, DataExchange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{project}}/{{location}}/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{location}}/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{data_exchange_id}}
/// ```
class DataExchange extends CustomResource {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final Output<String> dataExchangeId;

  /// Description of the data exchange.
  late final Output<String?> description;

  /// Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  late final Output<String> discoveryType;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  late final Output<String> displayName;

  /// Documentation describing the data exchange.
  late final Output<String?> documentation;

  /// Base64 encoded image representing the data exchange.
  late final Output<String?> icon;

  /// Number of listings contained in the data exchange.
  late final Output<int> listingCount;

  /// The name of the location this data exchange.
  late final Output<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  late final Output<bool?> logLinkedDatasetQueryUserEmail;

  /// The resource name of the data exchange, for example:
  /// "projects/myproject/locations/US/dataExchanges/123"
  late final Output<String> name;

  /// Email or URL of the primary point of contact of the data exchange.
  late final Output<String?> primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configurable data sharing environment option for a data exchange.
  /// This field is required for data clean room exchanges.
  /// Structure is documented below.
  late final Output<DataExchangeSharingEnvironmentConfig>
      sharingEnvironmentConfig;

  DataExchange(
    String name, {
    DataExchangeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchange:DataExchange',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.description = registerOutput<String?>('description');
    this.discoveryType = registerOutput<String>('discoveryType');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<String?>('documentation');
    this.icon = registerOutput<String?>('icon');
    this.listingCount = registerOutput<int>('listingCount');
    this.location = registerOutput<String>('location');
    this.logLinkedDatasetQueryUserEmail =
        registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    this.primaryContact = registerOutput<String?>('primaryContact');
    this.project = registerOutput<String>('project');
    this.sharingEnvironmentConfig =
        registerOutput<DataExchangeSharingEnvironmentConfig>(
            'sharingEnvironmentConfig');
  }
}
