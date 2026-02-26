import 'package:pulumi/pulumi.dart';
import '../instance_admin_settings/instance_admin_settings.dart';
import '../instance_controlled_egress_config/instance_controlled_egress_config.dart';
import '../instance_custom_domain/instance_custom_domain.dart';
import '../instance_deny_maintenance_period/instance_deny_maintenance_period.dart';
import '../instance_encryption_config/instance_encryption_config.dart';
import '../instance_maintenance_window/instance_maintenance_window.dart';
import '../instance_oauth_config/instance_oauth_config.dart';
import '../instance_periodic_export_config/instance_periodic_export_config.dart';
import '../instance_psc_config/instance_psc_config.dart';
import '../instance_user_metadata/instance_user_metadata.dart';
import 'instance_args7.dart';

/// A Google Cloud Looker instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/looker/docs/reference/rest/v1/projects.locations.instances)
/// * How-to Guides
/// * [Configure a Looker (Google Cloud core) instance](https://cloud.google.com/looker/docs/looker-core-instance-setup)
/// * [Create a Looker (Google Cloud core) instance](https://cloud.google.com/looker/docs/looker-core-instance-create)
///
/// ## Example Usage
///
/// ### Looker Instance Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_STANDARD_ANNUAL",
/// region: "us-central1",
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// deletionPolicy: "DEFAULT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_STANDARD_ANNUAL",
/// region="us-central1",
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
/// },
/// deletion_policy="DEFAULT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_STANDARD_ANNUAL",
/// Region = "us-central1",
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// DeletionPolicy = "DEFAULT",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// PlatformEdition: pulumi.String("LOOKER_CORE_STANDARD_ANNUAL"),
/// Region:          pulumi.String("us-central1"),
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
/// },
/// DeletionPolicy: pulumi.String("DEFAULT"),
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_STANDARD_ANNUAL")
/// .region("us-central1")
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .deletionPolicy("DEFAULT")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_STANDARD_ANNUAL
/// region: us-central1
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// deletionPolicy: DEFAULT
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_STANDARD_ANNUAL",
/// region: "us-central1",
/// publicIpEnabled: true,
/// geminiEnabled: true,
/// adminSettings: {
/// allowedEmailDomains: ["google.com"],
/// },
/// maintenanceWindow: {
/// dayOfWeek: "THURSDAY",
/// startTime: {
/// hours: 22,
/// minutes: 0,
/// seconds: 0,
/// nanos: 0,
/// },
/// },
/// denyMaintenancePeriod: {
/// startDate: {
/// year: 2050,
/// month: 1,
/// day: 1,
/// },
/// endDate: {
/// year: 2050,
/// month: 2,
/// day: 1,
/// },
/// time: {
/// hours: 10,
/// minutes: 0,
/// seconds: 0,
/// nanos: 0,
/// },
/// },
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_STANDARD_ANNUAL",
/// region="us-central1",
/// public_ip_enabled=True,
/// gemini_enabled=True,
/// admin_settings={
/// "allowed_email_domains": ["google.com"],
/// },
/// maintenance_window={
/// "day_of_week": "THURSDAY",
/// "start_time": {
/// "hours": 22,
/// "minutes": 0,
/// "seconds": 0,
/// "nanos": 0,
/// },
/// },
/// deny_maintenance_period={
/// "start_date": {
/// "year": 2050,
/// "month": 1,
/// "day": 1,
/// },
/// "end_date": {
/// "year": 2050,
/// "month": 2,
/// "day": 1,
/// },
/// "time": {
/// "hours": 10,
/// "minutes": 0,
/// "seconds": 0,
/// "nanos": 0,
/// },
/// },
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
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
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_STANDARD_ANNUAL",
/// Region = "us-central1",
/// PublicIpEnabled = true,
/// GeminiEnabled = true,
/// AdminSettings = new Gcp.Looker.Inputs.InstanceAdminSettingsArgs
/// {
/// AllowedEmailDomains = new[]
/// {
/// "google.com",
/// },
/// },
/// MaintenanceWindow = new Gcp.Looker.Inputs.InstanceMaintenanceWindowArgs
/// {
/// DayOfWeek = "THURSDAY",
/// StartTime = new Gcp.Looker.Inputs.InstanceMaintenanceWindowStartTimeArgs
/// {
/// Hours = 22,
/// Minutes = 0,
/// Seconds = 0,
/// Nanos = 0,
/// },
/// },
/// DenyMaintenancePeriod = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodArgs
/// {
/// StartDate = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodStartDateArgs
/// {
/// Year = 2050,
/// Month = 1,
/// Day = 1,
/// },
/// EndDate = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodEndDateArgs
/// {
/// Year = 2050,
/// Month = 2,
/// Day = 1,
/// },
/// Time = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodTimeArgs
/// {
/// Hours = 10,
/// Minutes = 0,
/// Seconds = 0,
/// Nanos = 0,
/// },
/// },
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// PlatformEdition: pulumi.String("LOOKER_CORE_STANDARD_ANNUAL"),
/// Region:          pulumi.String("us-central1"),
/// PublicIpEnabled: pulumi.Bool(true),
/// GeminiEnabled:   pulumi.Bool(true),
/// AdminSettings: &looker.InstanceAdminSettingsArgs{
/// AllowedEmailDomains: pulumi.StringArray{
/// pulumi.String("google.com"),
/// },
/// },
/// MaintenanceWindow: &looker.InstanceMaintenanceWindowArgs{
/// DayOfWeek: pulumi.String("THURSDAY"),
/// StartTime: &looker.InstanceMaintenanceWindowStartTimeArgs{
/// Hours:   pulumi.Int(22),
/// Minutes: pulumi.Int(0),
/// Seconds: pulumi.Int(0),
/// Nanos:   pulumi.Int(0),
/// },
/// },
/// DenyMaintenancePeriod: &looker.InstanceDenyMaintenancePeriodArgs{
/// StartDate: &looker.InstanceDenyMaintenancePeriodStartDateArgs{
/// Year:  pulumi.Int(2050),
/// Month: pulumi.Int(1),
/// Day:   pulumi.Int(1),
/// },
/// EndDate: &looker.InstanceDenyMaintenancePeriodEndDateArgs{
/// Year:  pulumi.Int(2050),
/// Month: pulumi.Int(2),
/// Day:   pulumi.Int(1),
/// },
/// Time: &looker.InstanceDenyMaintenancePeriodTimeArgs{
/// Hours:   pulumi.Int(10),
/// Minutes: pulumi.Int(0),
/// Seconds: pulumi.Int(0),
/// Nanos:   pulumi.Int(0),
/// },
/// },
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceAdminSettingsArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceMaintenanceWindowArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceMaintenanceWindowStartTimeArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodStartDateArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodEndDateArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodTimeArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_STANDARD_ANNUAL")
/// .region("us-central1")
/// .publicIpEnabled(true)
/// .geminiEnabled(true)
/// .adminSettings(InstanceAdminSettingsArgs.builder()
/// .allowedEmailDomains("google.com")
/// .build())
/// .maintenanceWindow(InstanceMaintenanceWindowArgs.builder()
/// .dayOfWeek("THURSDAY")
/// .startTime(InstanceMaintenanceWindowStartTimeArgs.builder()
/// .hours(22)
/// .minutes(0)
/// .seconds(0)
/// .nanos(0)
/// .build())
/// .build())
/// .denyMaintenancePeriod(InstanceDenyMaintenancePeriodArgs.builder()
/// .startDate(InstanceDenyMaintenancePeriodStartDateArgs.builder()
/// .year(2050)
/// .month(1)
/// .day(1)
/// .build())
/// .endDate(InstanceDenyMaintenancePeriodEndDateArgs.builder()
/// .year(2050)
/// .month(2)
/// .day(1)
/// .build())
/// .time(InstanceDenyMaintenancePeriodTimeArgs.builder()
/// .hours(10)
/// .minutes(0)
/// .seconds(0)
/// .nanos(0)
/// .build())
/// .build())
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_STANDARD_ANNUAL
/// region: us-central1
/// publicIpEnabled: true
/// geminiEnabled: true
/// adminSettings:
/// allowedEmailDomains:
/// - google.com
/// maintenanceWindow:
/// dayOfWeek: THURSDAY
/// startTime:
/// hours: 22
/// minutes: 0
/// seconds: 0
/// nanos: 0
/// denyMaintenancePeriod:
/// startDate:
/// year: 2050
/// month: 1
/// day: 1
/// endDate:
/// year: 2050
/// month: 2
/// day: 1
/// time:
/// hours: 10
/// minutes: 0
/// seconds: 0
/// nanos: 0
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Fips
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance-fips",
/// platformEdition: "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region: "us-central1",
/// publicIpEnabled: true,
/// fipsEnabled: true,
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance-fips",
/// platform_edition="LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region="us-central1",
/// public_ip_enabled=True,
/// fips_enabled=True,
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
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
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance-fips",
/// PlatformEdition = "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// Region = "us-central1",
/// PublicIpEnabled = true,
/// FipsEnabled = true,
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:            pulumi.String("my-instance-fips"),
/// PlatformEdition: pulumi.String("LOOKER_CORE_ENTERPRISE_ANNUAL"),
/// Region:          pulumi.String("us-central1"),
/// PublicIpEnabled: pulumi.Bool(true),
/// FipsEnabled:     pulumi.Bool(true),
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance-fips")
/// .platformEdition("LOOKER_CORE_ENTERPRISE_ANNUAL")
/// .region("us-central1")
/// .publicIpEnabled(true)
/// .fipsEnabled(true)
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance-fips
/// platformEdition: LOOKER_CORE_ENTERPRISE_ANNUAL
/// region: us-central1
/// publicIpEnabled: true
/// fipsEnabled: true
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Enterprise Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const lookerNetwork = new gcp.compute.Network("looker_network", {name: "looker-network"});
/// const lookerRange = new gcp.compute.GlobalAddress("looker_range", {
/// name: "looker-range",
/// purpose: "VPC_PEERING",
/// addressType: "INTERNAL",
/// prefixLength: 20,
/// network: lookerNetwork.id,
/// });
/// const lookerVpcConnection = new gcp.servicenetworking.Connection("looker_vpc_connection", {
/// network: lookerNetwork.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [lookerRange.name],
/// });
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region: "us-central1",
/// privateIpEnabled: true,
/// publicIpEnabled: false,
/// geminiEnabled: true,
/// reservedRange: lookerRange.name,
/// consumerNetwork: lookerNetwork.id,
/// adminSettings: {
/// allowedEmailDomains: ["google.com"],
/// },
/// encryptionConfig: {
/// kmsKeyName: "looker-kms-key",
/// },
/// maintenanceWindow: {
/// dayOfWeek: "THURSDAY",
/// startTime: {
/// hours: 22,
/// minutes: 0,
/// seconds: 0,
/// nanos: 0,
/// },
/// },
/// denyMaintenancePeriod: {
/// startDate: {
/// year: 2050,
/// month: 1,
/// day: 1,
/// },
/// endDate: {
/// year: 2050,
/// month: 2,
/// day: 1,
/// },
/// time: {
/// hours: 10,
/// minutes: 0,
/// seconds: 0,
/// nanos: 0,
/// },
/// },
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// }, {
/// dependsOn: [lookerVpcConnection],
/// });
/// const project = gcp.organizations.getProject({});
/// const cryptoKey = new gcp.kms.CryptoKeyIAMMember("crypto_key", {
/// cryptoKeyId: "looker-kms-key",
/// role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-looker.iam.gserviceaccount.com`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_network = gcp.compute.Network("looker_network", name="looker-network")
/// looker_range = gcp.compute.GlobalAddress("looker_range",
/// name="looker-range",
/// purpose="VPC_PEERING",
/// address_type="INTERNAL",
/// prefix_length=20,
/// network=looker_network.id)
/// looker_vpc_connection = gcp.servicenetworking.Connection("looker_vpc_connection",
/// network=looker_network.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[looker_range.name])
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region="us-central1",
/// private_ip_enabled=True,
/// public_ip_enabled=False,
/// gemini_enabled=True,
/// reserved_range=looker_range.name,
/// consumer_network=looker_network.id,
/// admin_settings={
/// "allowed_email_domains": ["google.com"],
/// },
/// encryption_config={
/// "kms_key_name": "looker-kms-key",
/// },
/// maintenance_window={
/// "day_of_week": "THURSDAY",
/// "start_time": {
/// "hours": 22,
/// "minutes": 0,
/// "seconds": 0,
/// "nanos": 0,
/// },
/// },
/// deny_maintenance_period={
/// "start_date": {
/// "year": 2050,
/// "month": 1,
/// "day": 1,
/// },
/// "end_date": {
/// "year": 2050,
/// "month": 2,
/// "day": 1,
/// },
/// "time": {
/// "hours": 10,
/// "minutes": 0,
/// "seconds": 0,
/// "nanos": 0,
/// },
/// },
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
/// },
/// opts = pulumi.ResourceOptions(depends_on=[looker_vpc_connection]))
/// project = gcp.organizations.get_project()
/// crypto_key = gcp.kms.CryptoKeyIAMMember("crypto_key",
/// crypto_key_id="looker-kms-key",
/// role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// member=f"serviceAccount:service-{project.number}@gcp-sa-looker.iam.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lookerNetwork = new Gcp.Compute.Network("looker_network", new()
/// {
/// Name = "looker-network",
/// });
///
/// var lookerRange = new Gcp.Compute.GlobalAddress("looker_range", new()
/// {
/// Name = "looker-range",
/// Purpose = "VPC_PEERING",
/// AddressType = "INTERNAL",
/// PrefixLength = 20,
/// Network = lookerNetwork.Id,
/// });
///
/// var lookerVpcConnection = new Gcp.ServiceNetworking.Connection("looker_vpc_connection", new()
/// {
/// Network = lookerNetwork.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// lookerRange.Name,
/// },
/// });
///
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// Region = "us-central1",
/// PrivateIpEnabled = true,
/// PublicIpEnabled = false,
/// GeminiEnabled = true,
/// ReservedRange = lookerRange.Name,
/// ConsumerNetwork = lookerNetwork.Id,
/// AdminSettings = new Gcp.Looker.Inputs.InstanceAdminSettingsArgs
/// {
/// AllowedEmailDomains = new[]
/// {
/// "google.com",
/// },
/// },
/// EncryptionConfig = new Gcp.Looker.Inputs.InstanceEncryptionConfigArgs
/// {
/// KmsKeyName = "looker-kms-key",
/// },
/// MaintenanceWindow = new Gcp.Looker.Inputs.InstanceMaintenanceWindowArgs
/// {
/// DayOfWeek = "THURSDAY",
/// StartTime = new Gcp.Looker.Inputs.InstanceMaintenanceWindowStartTimeArgs
/// {
/// Hours = 22,
/// Minutes = 0,
/// Seconds = 0,
/// Nanos = 0,
/// },
/// },
/// DenyMaintenancePeriod = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodArgs
/// {
/// StartDate = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodStartDateArgs
/// {
/// Year = 2050,
/// Month = 1,
/// Day = 1,
/// },
/// EndDate = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodEndDateArgs
/// {
/// Year = 2050,
/// Month = 2,
/// Day = 1,
/// },
/// Time = new Gcp.Looker.Inputs.InstanceDenyMaintenancePeriodTimeArgs
/// {
/// Hours = 10,
/// Minutes = 0,
/// Seconds = 0,
/// Nanos = 0,
/// },
/// },
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// lookerVpcConnection,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var cryptoKey = new Gcp.Kms.CryptoKeyIAMMember("crypto_key", new()
/// {
/// CryptoKeyId = "looker-kms-key",
/// Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
/// Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-looker.iam.gserviceaccount.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// lookerNetwork, err := compute.NewNetwork(ctx, "looker_network", &compute.NetworkArgs{
/// Name: pulumi.String("looker-network"),
/// })
/// if err != nil {
/// return err
/// }
/// lookerRange, err := compute.NewGlobalAddress(ctx, "looker_range", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("looker-range"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// AddressType:  pulumi.String("INTERNAL"),
/// PrefixLength: pulumi.Int(20),
/// Network:      lookerNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// lookerVpcConnection, err := servicenetworking.NewConnection(ctx, "looker_vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: lookerNetwork.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// lookerRange.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:             pulumi.String("my-instance"),
/// PlatformEdition:  pulumi.String("LOOKER_CORE_ENTERPRISE_ANNUAL"),
/// Region:           pulumi.String("us-central1"),
/// PrivateIpEnabled: pulumi.Bool(true),
/// PublicIpEnabled:  pulumi.Bool(false),
/// GeminiEnabled:    pulumi.Bool(true),
/// ReservedRange:    lookerRange.Name,
/// ConsumerNetwork:  lookerNetwork.ID(),
/// AdminSettings: &looker.InstanceAdminSettingsArgs{
/// AllowedEmailDomains: pulumi.StringArray{
/// pulumi.String("google.com"),
/// },
/// },
/// EncryptionConfig: &looker.InstanceEncryptionConfigArgs{
/// KmsKeyName: pulumi.String("looker-kms-key"),
/// },
/// MaintenanceWindow: &looker.InstanceMaintenanceWindowArgs{
/// DayOfWeek: pulumi.String("THURSDAY"),
/// StartTime: &looker.InstanceMaintenanceWindowStartTimeArgs{
/// Hours:   pulumi.Int(22),
/// Minutes: pulumi.Int(0),
/// Seconds: pulumi.Int(0),
/// Nanos:   pulumi.Int(0),
/// },
/// },
/// DenyMaintenancePeriod: &looker.InstanceDenyMaintenancePeriodArgs{
/// StartDate: &looker.InstanceDenyMaintenancePeriodStartDateArgs{
/// Year:  pulumi.Int(2050),
/// Month: pulumi.Int(1),
/// Day:   pulumi.Int(1),
/// },
/// EndDate: &looker.InstanceDenyMaintenancePeriodEndDateArgs{
/// Year:  pulumi.Int(2050),
/// Month: pulumi.Int(2),
/// Day:   pulumi.Int(1),
/// },
/// Time: &looker.InstanceDenyMaintenancePeriodTimeArgs{
/// Hours:   pulumi.Int(10),
/// Minutes: pulumi.Int(0),
/// Seconds: pulumi.Int(0),
/// Nanos:   pulumi.Int(0),
/// },
/// },
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// lookerVpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = kms.NewCryptoKeyIAMMember(ctx, "crypto_key", &kms.CryptoKeyIAMMemberArgs{
/// CryptoKeyId: pulumi.String("looker-kms-key"),
/// Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// Member:      pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-looker.iam.gserviceaccount.com", project.Number),
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceAdminSettingsArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceEncryptionConfigArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceMaintenanceWindowArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceMaintenanceWindowStartTimeArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodStartDateArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodEndDateArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceDenyMaintenancePeriodTimeArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var lookerNetwork = new Network("lookerNetwork", NetworkArgs.builder()
/// .name("looker-network")
/// .build());
///
/// var lookerRange = new GlobalAddress("lookerRange", GlobalAddressArgs.builder()
/// .name("looker-range")
/// .purpose("VPC_PEERING")
/// .addressType("INTERNAL")
/// .prefixLength(20)
/// .network(lookerNetwork.id())
/// .build());
///
/// var lookerVpcConnection = new Connection("lookerVpcConnection", ConnectionArgs.builder()
/// .network(lookerNetwork.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(lookerRange.name())
/// .build());
///
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_ENTERPRISE_ANNUAL")
/// .region("us-central1")
/// .privateIpEnabled(true)
/// .publicIpEnabled(false)
/// .geminiEnabled(true)
/// .reservedRange(lookerRange.name())
/// .consumerNetwork(lookerNetwork.id())
/// .adminSettings(InstanceAdminSettingsArgs.builder()
/// .allowedEmailDomains("google.com")
/// .build())
/// .encryptionConfig(InstanceEncryptionConfigArgs.builder()
/// .kmsKeyName("looker-kms-key")
/// .build())
/// .maintenanceWindow(InstanceMaintenanceWindowArgs.builder()
/// .dayOfWeek("THURSDAY")
/// .startTime(InstanceMaintenanceWindowStartTimeArgs.builder()
/// .hours(22)
/// .minutes(0)
/// .seconds(0)
/// .nanos(0)
/// .build())
/// .build())
/// .denyMaintenancePeriod(InstanceDenyMaintenancePeriodArgs.builder()
/// .startDate(InstanceDenyMaintenancePeriodStartDateArgs.builder()
/// .year(2050)
/// .month(1)
/// .day(1)
/// .build())
/// .endDate(InstanceDenyMaintenancePeriodEndDateArgs.builder()
/// .year(2050)
/// .month(2)
/// .day(1)
/// .build())
/// .time(InstanceDenyMaintenancePeriodTimeArgs.builder()
/// .hours(10)
/// .minutes(0)
/// .seconds(0)
/// .nanos(0)
/// .build())
/// .build())
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(lookerVpcConnection)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var cryptoKey = new CryptoKeyIAMMember("cryptoKey", CryptoKeyIAMMemberArgs.builder()
/// .cryptoKeyId("looker-kms-key")
/// .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
/// .member(String.format("serviceAccount:service-%s@gcp-sa-looker.iam.gserviceaccount.com", project.number()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_ENTERPRISE_ANNUAL
/// region: us-central1
/// privateIpEnabled: true
/// publicIpEnabled: false
/// geminiEnabled: true
/// reservedRange: ${lookerRange.name}
/// consumerNetwork: ${lookerNetwork.id}
/// adminSettings:
/// allowedEmailDomains:
/// - google.com
/// encryptionConfig:
/// kmsKeyName: looker-kms-key
/// maintenanceWindow:
/// dayOfWeek: THURSDAY
/// startTime:
/// hours: 22
/// minutes: 0
/// seconds: 0
/// nanos: 0
/// denyMaintenancePeriod:
/// startDate:
/// year: 2050
/// month: 1
/// day: 1
/// endDate:
/// year: 2050
/// month: 2
/// day: 1
/// time:
/// hours: 10
/// minutes: 0
/// seconds: 0
/// nanos: 0
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// options:
/// dependsOn:
/// - ${lookerVpcConnection}
/// lookerVpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: looker_vpc_connection
/// properties:
/// network: ${lookerNetwork.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${lookerRange.name}
/// lookerRange:
/// type: gcp:compute:GlobalAddress
/// name: looker_range
/// properties:
/// name: looker-range
/// purpose: VPC_PEERING
/// addressType: INTERNAL
/// prefixLength: 20
/// network: ${lookerNetwork.id}
/// lookerNetwork:
/// type: gcp:compute:Network
/// name: looker_network
/// properties:
/// name: looker-network
/// cryptoKey:
/// type: gcp:kms:CryptoKeyIAMMember
/// name: crypto_key
/// properties:
/// cryptoKeyId: looker-kms-key
/// role: roles/cloudkms.cryptoKeyEncrypterDecrypter
/// member: serviceAccount:service-${project.number}@gcp-sa-looker.iam.gserviceaccount.com
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Custom Domain
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_STANDARD_ANNUAL",
/// region: "us-central1",
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// customDomain: {
/// domain: "my-custom-domain.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_STANDARD_ANNUAL",
/// region="us-central1",
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
/// },
/// custom_domain={
/// "domain": "my-custom-domain.com",
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
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_STANDARD_ANNUAL",
/// Region = "us-central1",
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// CustomDomain = new Gcp.Looker.Inputs.InstanceCustomDomainArgs
/// {
/// Domain = "my-custom-domain.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// PlatformEdition: pulumi.String("LOOKER_CORE_STANDARD_ANNUAL"),
/// Region:          pulumi.String("us-central1"),
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
/// },
/// CustomDomain: &looker.InstanceCustomDomainArgs{
/// Domain: pulumi.String("my-custom-domain.com"),
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceCustomDomainArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_STANDARD_ANNUAL")
/// .region("us-central1")
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .customDomain(InstanceCustomDomainArgs.builder()
/// .domain("my-custom-domain.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_STANDARD_ANNUAL
/// region: us-central1
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// customDomain:
/// domain: my-custom-domain.com
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Psc
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region: "us-central1",
/// privateIpEnabled: false,
/// publicIpEnabled: false,
/// pscEnabled: true,
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// pscConfig: {
/// allowedVpcs: ["projects/test-project/global/networks/test"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_ENTERPRISE_ANNUAL",
/// region="us-central1",
/// private_ip_enabled=False,
/// public_ip_enabled=False,
/// psc_enabled=True,
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
/// },
/// psc_config={
/// "allowed_vpcs": ["projects/test-project/global/networks/test"],
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
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_ENTERPRISE_ANNUAL",
/// Region = "us-central1",
/// PrivateIpEnabled = false,
/// PublicIpEnabled = false,
/// PscEnabled = true,
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// PscConfig = new Gcp.Looker.Inputs.InstancePscConfigArgs
/// {
/// AllowedVpcs = new[]
/// {
/// "projects/test-project/global/networks/test",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:             pulumi.String("my-instance"),
/// PlatformEdition:  pulumi.String("LOOKER_CORE_ENTERPRISE_ANNUAL"),
/// Region:           pulumi.String("us-central1"),
/// PrivateIpEnabled: pulumi.Bool(false),
/// PublicIpEnabled:  pulumi.Bool(false),
/// PscEnabled:       pulumi.Bool(true),
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
/// },
/// PscConfig: &looker.InstancePscConfigArgs{
/// AllowedVpcs: pulumi.StringArray{
/// pulumi.String("projects/test-project/global/networks/test"),
/// },
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
/// import com.pulumi.gcp.looker.inputs.InstancePscConfigArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_ENTERPRISE_ANNUAL")
/// .region("us-central1")
/// .privateIpEnabled(false)
/// .publicIpEnabled(false)
/// .pscEnabled(true)
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .pscConfig(InstancePscConfigArgs.builder()
/// .allowedVpcs("projects/test-project/global/networks/test")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_ENTERPRISE_ANNUAL
/// region: us-central1
/// privateIpEnabled: false
/// publicIpEnabled: false
/// pscEnabled: true
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// pscConfig:
/// allowedVpcs:
/// - projects/test-project/global/networks/test
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Looker Instance Force Delete
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const looker_instance = new gcp.looker.Instance("looker-instance", {
/// name: "my-instance",
/// platformEdition: "LOOKER_CORE_STANDARD_ANNUAL",
/// region: "us-central1",
/// oauthConfig: {
/// clientId: "my-client-id",
/// clientSecret: "my-client-secret",
/// },
/// deletionPolicy: "FORCE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// looker_instance = gcp.looker.Instance("looker-instance",
/// name="my-instance",
/// platform_edition="LOOKER_CORE_STANDARD_ANNUAL",
/// region="us-central1",
/// oauth_config={
/// "client_id": "my-client-id",
/// "client_secret": "my-client-secret",
/// },
/// deletion_policy="FORCE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var looker_instance = new Gcp.Looker.Instance("looker-instance", new()
/// {
/// Name = "my-instance",
/// PlatformEdition = "LOOKER_CORE_STANDARD_ANNUAL",
/// Region = "us-central1",
/// OauthConfig = new Gcp.Looker.Inputs.InstanceOauthConfigArgs
/// {
/// ClientId = "my-client-id",
/// ClientSecret = "my-client-secret",
/// },
/// DeletionPolicy = "FORCE",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/looker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := looker.NewInstance(ctx, "looker-instance", &looker.InstanceArgs{
/// Name:            pulumi.String("my-instance"),
/// PlatformEdition: pulumi.String("LOOKER_CORE_STANDARD_ANNUAL"),
/// Region:          pulumi.String("us-central1"),
/// OauthConfig: &looker.InstanceOauthConfigArgs{
/// ClientId:     pulumi.String("my-client-id"),
/// ClientSecret: pulumi.String("my-client-secret"),
/// },
/// DeletionPolicy: pulumi.String("FORCE"),
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
/// import com.pulumi.gcp.looker.Instance;
/// import com.pulumi.gcp.looker.InstanceArgs;
/// import com.pulumi.gcp.looker.inputs.InstanceOauthConfigArgs;
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
/// var looker_instance = new Instance("looker-instance", InstanceArgs.builder()
/// .name("my-instance")
/// .platformEdition("LOOKER_CORE_STANDARD_ANNUAL")
/// .region("us-central1")
/// .oauthConfig(InstanceOauthConfigArgs.builder()
/// .clientId("my-client-id")
/// .clientSecret("my-client-secret")
/// .build())
/// .deletionPolicy("FORCE")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// looker-instance:
/// type: gcp:looker:Instance
/// properties:
/// name: my-instance
/// platformEdition: LOOKER_CORE_STANDARD_ANNUAL
/// region: us-central1
/// oauthConfig:
/// clientId: my-client-id
/// clientSecret: my-client-secret
/// deletionPolicy: FORCE
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/instances/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default projects/{{project}}/locations/{{region}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:looker/instance:Instance default {{name}}
/// ```
class Instance7 extends CustomResource {
  /// Looker instance Admin settings.
  /// Structure is documented below.
  late final Output<InstanceAdminSettings?> adminSettings;

  /// Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
  /// Note that the consumer network may be in a different GCP project than the consumer
  /// project that is hosting the Looker Instance.
  late final Output<String?> consumerNetwork;

  /// Controlled egress configuration.
  /// Structure is documented below.
  late final Output<InstanceControlledEgressConfig?> controlledEgressConfig;

  /// Whether controlled egress is enabled on the Looker instance.
  late final Output<bool?> controlledEgressEnabled;

  /// The time the instance was created in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  late final Output<String> createTime;

  /// Custom domain settings for a Looker instance.
  /// Structure is documented below.
  late final Output<InstanceCustomDomain?> customDomain;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// If setting<span pulumi-lang-nodejs=" deletionPolicy " pulumi-lang-dotnet=" DeletionPolicy " pulumi-lang-go=" deletionPolicy " pulumi-lang-python=" deletion_policy " pulumi-lang-yaml=" deletionPolicy " pulumi-lang-java=" deletionPolicy "> deletion_policy </span>= "FORCE", the Looker instance will be deleted regardless
  /// of its nested resources. If set to "DEFAULT", Looker instances that still have
  /// nested resources will return an error. Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;

  /// Maintenance denial period for this instance.
  /// You must allow at least 14 days of maintenance availability
  /// between any two deny maintenance periods.
  /// Structure is documented below.
  late final Output<InstanceDenyMaintenancePeriod?> denyMaintenancePeriod;

  /// Public Egress IP (IPv4).
  late final Output<String> egressPublicIp;

  /// Looker instance encryption settings.
  /// Structure is documented below.
  late final Output<InstanceEncryptionConfig> encryptionConfig;

  /// FIPS 140-2 Encryption enablement for Looker (Google Cloud Core).
  late final Output<bool?> fipsEnabled;

  /// Gemini enablement for Looker (Google Cloud Core).
  late final Output<bool?> geminiEnabled;

  /// Private Ingress IP (IPv4).
  late final Output<String> ingressPrivateIp;

  /// Public Ingress IP (IPv4).
  late final Output<String> ingressPublicIp;

  /// Looker instance URI which can be used to access the Looker Instance UI.
  late final Output<String> lookerUri;

  /// The Looker version that the instance is using.
  late final Output<String> lookerVersion;

  /// Maintenance window for an instance.
  /// Maintenance of your instance takes place once a month, and will require
  /// your instance to be restarted during updates, which will temporarily
  /// disrupt service.
  /// Structure is documented below.
  late final Output<InstanceMaintenanceWindow?> maintenanceWindow;

  /// The ID of the instance or a fully qualified identifier for the instance.
  late final Output<String> name;

  /// Looker Instance OAuth login settings.
  /// Structure is documented below.
  late final Output<InstanceOauthConfig> oauthConfig;

  /// Configuration for periodic export.
  /// Structure is documented below.
  late final Output<InstancePeriodicExportConfig?> periodicExportConfig;

  /// Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
  /// - LOOKER_CORE_TRIAL: trial instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD: pay as you go standard instance (Currently Unavailable)
  /// - LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
  /// - LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
  /// - LOOKER_CORE_EMBED_ANNUAL: subscription embed instance
  /// - LOOKER_CORE_NONPROD_STANDARD_ANNUAL: nonprod subscription standard instance
  /// - LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL: nonprod subscription enterprise instance
  /// - LOOKER_CORE_NONPROD_EMBED_ANNUAL: nonprod subscription embed instance
  /// - LOOKER_CORE_TRIAL_STANDARD: A standard trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_ENTERPRISE: An enterprise trial edition of Looker (Google Cloud core) product.
  /// - LOOKER_CORE_TRIAL_EMBED: An embed trial edition of Looker (Google Cloud core) product.
  /// Default value is `LOOKER_CORE_TRIAL`.
  /// Possible values are: `LOOKER_CORE_TRIAL`, `LOOKER_CORE_STANDARD`, `LOOKER_CORE_STANDARD_ANNUAL`, `LOOKER_CORE_ENTERPRISE_ANNUAL`, `LOOKER_CORE_EMBED_ANNUAL`, `LOOKER_CORE_NONPROD_STANDARD_ANNUAL`, `LOOKER_CORE_NONPROD_ENTERPRISE_ANNUAL`, `LOOKER_CORE_NONPROD_EMBED_ANNUAL`, `LOOKER_CORE_TRIAL_STANDARD`, `LOOKER_CORE_TRIAL_ENTERPRISE`, `LOOKER_CORE_TRIAL_EMBED`.
  late final Output<String?> platformEdition;

  /// Whether private IP is enabled on the Looker instance.
  late final Output<bool?> privateIpEnabled;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Information for Private Service Connect (PSC) setup for a Looker instance.
  /// Structure is documented below.
  late final Output<InstancePscConfig> pscConfig;

  /// Whether Public Service Connect (PSC) is enabled on the Looker instance
  late final Output<bool?> pscEnabled;

  /// Whether public IP is enabled on the Looker instance.
  late final Output<bool?> publicIpEnabled;

  /// The name of the Looker region of the instance.
  late final Output<String> region;

  /// Name of a reserved IP address range within the consumer network, to be used for
  /// private service access connection. User may or may not specify this in a request.
  late final Output<String?> reservedRange;

  /// The time the instance was updated in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds.
  late final Output<String> updateTime;

  /// Metadata about users for a Looker instance.
  /// These settings are only available when platform edition LOOKER_CORE_STANDARD is set.
  /// There are ten Standard and two Developer users included in the cost of the product.
  /// You can allocate additional Standard, Viewer, and Developer users for this instance.
  /// It is an optional step and can be modified later.
  /// With the Standard edition of Looker (Google Cloud core), you can provision up to 50
  /// total users, distributed across Viewer, Standard, and Developer.
  /// Structure is documented below.
  late final Output<InstanceUserMetadata?> userMetadata;

  Instance7(
    String name, {
    InstanceArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:looker/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminSettings = Output.createUnknown<InstanceAdminSettings?>();
    this.consumerNetwork = Output.createUnknown<String?>();
    this.controlledEgressConfig =
        Output.createUnknown<InstanceControlledEgressConfig?>();
    this.controlledEgressEnabled = Output.createUnknown<bool?>();
    this.createTime = Output.createUnknown<String>();
    this.customDomain = Output.createUnknown<InstanceCustomDomain?>();
    this.deletionPolicy = Output.createUnknown<String?>();
    this.denyMaintenancePeriod =
        Output.createUnknown<InstanceDenyMaintenancePeriod?>();
    this.egressPublicIp = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<InstanceEncryptionConfig>();
    this.fipsEnabled = Output.createUnknown<bool?>();
    this.geminiEnabled = Output.createUnknown<bool?>();
    this.ingressPrivateIp = Output.createUnknown<String>();
    this.ingressPublicIp = Output.createUnknown<String>();
    this.lookerUri = Output.createUnknown<String>();
    this.lookerVersion = Output.createUnknown<String>();
    this.maintenanceWindow = Output.createUnknown<InstanceMaintenanceWindow?>();
    this.name = Output.createUnknown<String>();
    this.oauthConfig = Output.createUnknown<InstanceOauthConfig>();
    this.periodicExportConfig =
        Output.createUnknown<InstancePeriodicExportConfig?>();
    this.platformEdition = Output.createUnknown<String?>();
    this.privateIpEnabled = Output.createUnknown<bool?>();
    this.project = Output.createUnknown<String>();
    this.pscConfig = Output.createUnknown<InstancePscConfig>();
    this.pscEnabled = Output.createUnknown<bool?>();
    this.publicIpEnabled = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.reservedRange = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
    this.userMetadata = Output.createUnknown<InstanceUserMetadata?>();
  }
}
