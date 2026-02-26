import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_properties/cloud_exadata_infrastructure_properties.dart';
import 'cloud_exadata_infrastructure_args.dart';

/// A CloudExadataInfrastructure resource.
///
///
/// To get more information about CloudExadataInfrastructure, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures)
/// * How-to Guides
/// * [Create Exadata Infrastructure instances](https://cloud.google.com/oracle/database/docs/create-instances)
///
/// ## Example Usage
///
/// ### Oracledatabase Cloud Exadata Infrastructure Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_cloud_exadata = new gcp.oracledatabase.CloudExadataInfrastructure("my-cloud-exadata", {
/// cloudExadataInfrastructureId: "my-instance",
/// displayName: "my-instance displayname",
/// location: "us-east4",
/// project: "my-project",
/// properties: {
/// shape: "Exadata.X9M",
/// computeCount: 2,
/// storageCount: 3,
/// },
/// deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cloud_exadata = gcp.oracledatabase.CloudExadataInfrastructure("my-cloud-exadata",
/// cloud_exadata_infrastructure_id="my-instance",
/// display_name="my-instance displayname",
/// location="us-east4",
/// project="my-project",
/// properties={
/// "shape": "Exadata.X9M",
/// "compute_count": 2,
/// "storage_count": 3,
/// },
/// deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_cloud_exadata = new Gcp.OracleDatabase.CloudExadataInfrastructure("my-cloud-exadata", new()
/// {
/// CloudExadataInfrastructureId = "my-instance",
/// DisplayName = "my-instance displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
/// {
/// Shape = "Exadata.X9M",
/// ComputeCount = 2,
/// StorageCount = 3,
/// },
/// DeletionProtection = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "my-cloud-exadata", &oracledatabase.CloudExadataInfrastructureArgs{
/// CloudExadataInfrastructureId: pulumi.String("my-instance"),
/// DisplayName:                  pulumi.String("my-instance displayname"),
/// Location:                     pulumi.String("us-east4"),
/// Project:                      pulumi.String("my-project"),
/// Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// Shape:        pulumi.String("Exadata.X9M"),
/// ComputeCount: pulumi.Int(2),
/// StorageCount: pulumi.Int(3),
/// },
/// DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
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
/// var my_cloud_exadata = new CloudExadataInfrastructure("my-cloud-exadata", CloudExadataInfrastructureArgs.builder()
/// .cloudExadataInfrastructureId("my-instance")
/// .displayName("my-instance displayname")
/// .location("us-east4")
/// .project("my-project")
/// .properties(CloudExadataInfrastructurePropertiesArgs.builder()
/// .shape("Exadata.X9M")
/// .computeCount(2)
/// .storageCount(3)
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-cloud-exadata:
/// type: gcp:oracledatabase:CloudExadataInfrastructure
/// properties:
/// cloudExadataInfrastructureId: my-instance
/// displayName: my-instance displayname
/// location: us-east4
/// project: my-project
/// properties:
/// shape: Exadata.X9M
/// computeCount: '2'
/// storageCount: '3'
/// deletionProtection: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Oracledatabase Cloud Exadata Infrastructure Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_cloud_exadata = new gcp.oracledatabase.CloudExadataInfrastructure("my-cloud-exadata", {
/// cloudExadataInfrastructureId: "my-instance",
/// displayName: "my-instance displayname",
/// location: "us-east4",
/// project: "my-project",
/// gcpOracleZone: "us-east4-b-r1",
/// properties: {
/// shape: "Exadata.X9M",
/// computeCount: 2,
/// storageCount: 3,
/// customerContacts: [{
/// email: "xyz@example.com",
/// }],
/// maintenanceWindow: {
/// customActionTimeoutMins: 20,
/// daysOfWeeks: ["SUNDAY"],
/// hoursOfDays: [4],
/// isCustomActionTimeoutEnabled: false,
/// leadTimeWeek: 1,
/// months: [
/// "JANUARY",
/// "APRIL",
/// "MAY",
/// "OCTOBER",
/// ],
/// patchingMode: "ROLLING",
/// preference: "CUSTOM_PREFERENCE",
/// weeksOfMonths: [4],
/// },
/// totalStorageSizeGb: 196608,
/// },
/// labels: {
/// "label-one": "value-one",
/// },
/// deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_cloud_exadata = gcp.oracledatabase.CloudExadataInfrastructure("my-cloud-exadata",
/// cloud_exadata_infrastructure_id="my-instance",
/// display_name="my-instance displayname",
/// location="us-east4",
/// project="my-project",
/// gcp_oracle_zone="us-east4-b-r1",
/// properties={
/// "shape": "Exadata.X9M",
/// "compute_count": 2,
/// "storage_count": 3,
/// "customer_contacts": [{
/// "email": "xyz@example.com",
/// }],
/// "maintenance_window": {
/// "custom_action_timeout_mins": 20,
/// "days_of_weeks": ["SUNDAY"],
/// "hours_of_days": [4],
/// "is_custom_action_timeout_enabled": False,
/// "lead_time_week": 1,
/// "months": [
/// "JANUARY",
/// "APRIL",
/// "MAY",
/// "OCTOBER",
/// ],
/// "patching_mode": "ROLLING",
/// "preference": "CUSTOM_PREFERENCE",
/// "weeks_of_months": [4],
/// },
/// "total_storage_size_gb": 196608,
/// },
/// labels={
/// "label-one": "value-one",
/// },
/// deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_cloud_exadata = new Gcp.OracleDatabase.CloudExadataInfrastructure("my-cloud-exadata", new()
/// {
/// CloudExadataInfrastructureId = "my-instance",
/// DisplayName = "my-instance displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// GcpOracleZone = "us-east4-b-r1",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
/// {
/// Shape = "Exadata.X9M",
/// ComputeCount = 2,
/// StorageCount = 3,
/// CustomerContacts = new[]
/// {
/// new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesCustomerContactArgs
/// {
/// Email = "xyz@example.com",
/// },
/// },
/// MaintenanceWindow = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesMaintenanceWindowArgs
/// {
/// CustomActionTimeoutMins = 20,
/// DaysOfWeeks = new[]
/// {
/// "SUNDAY",
/// },
/// HoursOfDays = new[]
/// {
/// 4,
/// },
/// IsCustomActionTimeoutEnabled = false,
/// LeadTimeWeek = 1,
/// Months = new[]
/// {
/// "JANUARY",
/// "APRIL",
/// "MAY",
/// "OCTOBER",
/// },
/// PatchingMode = "ROLLING",
/// Preference = "CUSTOM_PREFERENCE",
/// WeeksOfMonths = new[]
/// {
/// 4,
/// },
/// },
/// TotalStorageSizeGb = 196608,
/// },
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// DeletionProtection = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "my-cloud-exadata", &oracledatabase.CloudExadataInfrastructureArgs{
/// CloudExadataInfrastructureId: pulumi.String("my-instance"),
/// DisplayName:                  pulumi.String("my-instance displayname"),
/// Location:                     pulumi.String("us-east4"),
/// Project:                      pulumi.String("my-project"),
/// GcpOracleZone:                pulumi.String("us-east4-b-r1"),
/// Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// Shape:        pulumi.String("Exadata.X9M"),
/// ComputeCount: pulumi.Int(2),
/// StorageCount: pulumi.Int(3),
/// CustomerContacts: oracledatabase.CloudExadataInfrastructurePropertiesCustomerContactArray{
/// &oracledatabase.CloudExadataInfrastructurePropertiesCustomerContactArgs{
/// Email: pulumi.String("xyz@example.com"),
/// },
/// },
/// MaintenanceWindow: &oracledatabase.CloudExadataInfrastructurePropertiesMaintenanceWindowArgs{
/// CustomActionTimeoutMins: pulumi.Int(20),
/// DaysOfWeeks: pulumi.StringArray{
/// pulumi.String("SUNDAY"),
/// },
/// HoursOfDays: pulumi.IntArray{
/// pulumi.Int(4),
/// },
/// IsCustomActionTimeoutEnabled: pulumi.Bool(false),
/// LeadTimeWeek:                 pulumi.Int(1),
/// Months: pulumi.StringArray{
/// pulumi.String("JANUARY"),
/// pulumi.String("APRIL"),
/// pulumi.String("MAY"),
/// pulumi.String("OCTOBER"),
/// },
/// PatchingMode: pulumi.String("ROLLING"),
/// Preference:   pulumi.String("CUSTOM_PREFERENCE"),
/// WeeksOfMonths: pulumi.IntArray{
/// pulumi.Int(4),
/// },
/// },
/// TotalStorageSizeGb: pulumi.Int(196608),
/// },
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesMaintenanceWindowArgs;
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
/// var my_cloud_exadata = new CloudExadataInfrastructure("my-cloud-exadata", CloudExadataInfrastructureArgs.builder()
/// .cloudExadataInfrastructureId("my-instance")
/// .displayName("my-instance displayname")
/// .location("us-east4")
/// .project("my-project")
/// .gcpOracleZone("us-east4-b-r1")
/// .properties(CloudExadataInfrastructurePropertiesArgs.builder()
/// .shape("Exadata.X9M")
/// .computeCount(2)
/// .storageCount(3)
/// .customerContacts(CloudExadataInfrastructurePropertiesCustomerContactArgs.builder()
/// .email("xyz@example.com")
/// .build())
/// .maintenanceWindow(CloudExadataInfrastructurePropertiesMaintenanceWindowArgs.builder()
/// .customActionTimeoutMins(20)
/// .daysOfWeeks("SUNDAY")
/// .hoursOfDays(4)
/// .isCustomActionTimeoutEnabled(false)
/// .leadTimeWeek(1)
/// .months(
/// "JANUARY",
/// "APRIL",
/// "MAY",
/// "OCTOBER")
/// .patchingMode("ROLLING")
/// .preference("CUSTOM_PREFERENCE")
/// .weeksOfMonths(4)
/// .build())
/// .totalStorageSizeGb(196608)
/// .build())
/// .labels(Map.of("label-one", "value-one"))
/// .deletionProtection(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-cloud-exadata:
/// type: gcp:oracledatabase:CloudExadataInfrastructure
/// properties:
/// cloudExadataInfrastructureId: my-instance
/// displayName: my-instance displayname
/// location: us-east4
/// project: my-project
/// gcpOracleZone: us-east4-b-r1
/// properties:
/// shape: Exadata.X9M
/// computeCount: '2'
/// storageCount: '3'
/// customerContacts:
/// - email: xyz@example.com
/// maintenanceWindow:
/// customActionTimeoutMins: '20'
/// daysOfWeeks:
/// - SUNDAY
/// hoursOfDays:
/// - 4
/// isCustomActionTimeoutEnabled: '0'
/// leadTimeWeek: '1'
/// months:
/// - JANUARY
/// - APRIL
/// - MAY
/// - OCTOBER
/// patchingMode: ROLLING
/// preference: CUSTOM_PREFERENCE
/// weeksOfMonths:
/// - 4
/// totalStorageSizeGb: '196608'
/// labels:
/// label-one: value-one
/// deletionProtection: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CloudExadataInfrastructure can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure_id}}`
///
/// * `{{project}}/{{location}}/{{cloud_exadata_infrastructure_id}}`
///
/// * `{{location}}/{{cloud_exadata_infrastructure_id}}`
///
/// When using the `pulumi import` command, CloudExadataInfrastructure can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default projects/{{project}}/locations/{{location}}/cloudExadataInfrastructures/{{cloud_exadata_infrastructure_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default {{project}}/{{location}}/{{cloud_exadata_infrastructure_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure default {{location}}/{{cloud_exadata_infrastructure_id}}
/// ```
class CloudExadataInfrastructure extends CustomResource {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final Output<String> cloudExadataInfrastructureId;

  /// The date and time that the Exadata Infrastructure was created.
  late final Output<String> createTime;
  late final Output<bool?> deletionProtection;

  /// User friendly name for this resource.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Entitlement ID of the private offer against which this infrastructure
  /// resource is provisioned.
  late final Output<String> entitlementId;

  /// GCP location where Oracle Exadata is hosted.
  late final Output<String> gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  late final Output<String> location;

  /// Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  late final Output<CloudExadataInfrastructureProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  CloudExadataInfrastructure(
    String name, {
    CloudExadataInfrastructureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudExadataInfrastructure:CloudExadataInfrastructure',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudExadataInfrastructureId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deletionProtection = Output.createUnknown<bool?>();
    this.displayName = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.entitlementId = Output.createUnknown<String>();
    this.gcpOracleZone = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.properties =
        Output.createUnknown<CloudExadataInfrastructureProperties?>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
  }
}
