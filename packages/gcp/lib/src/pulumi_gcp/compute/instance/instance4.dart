import 'package:pulumi/pulumi.dart';
import '../instance_advanced_machine_features/instance_advanced_machine_features.dart';
import '../instance_attached_disk/instance_attached_disk.dart';
import '../instance_boot_disk/instance_boot_disk.dart';
import '../instance_confidential_instance_config/instance_confidential_instance_config.dart';
import '../instance_guest_accelerator/instance_guest_accelerator.dart';
import '../instance_instance_encryption_key/instance_instance_encryption_key.dart';
import '../instance_network_interface/instance_network_interface.dart';
import '../instance_network_performance_config/instance_network_performance_config.dart';
import '../instance_params/instance_params.dart';
import '../instance_reservation_affinity/instance_reservation_affinity.dart';
import '../instance_scheduling/instance_scheduling.dart';
import '../instance_scratch_disk/instance_scratch_disk.dart';
import '../instance_service_account/instance_service_account.dart';
import '../instance_shielded_instance_config/instance_shielded_instance_config.dart';
import 'instance_args4.dart';

/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
/// accountId: "my-custom-sa",
/// displayName: "Custom SA for VM Instance",
/// });
/// const defaultInstance = new gcp.compute.Instance("default", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: "default",
/// }],
/// name: "my-instance",
/// machineType: "n2-standard-2",
/// zone: "us-central1-a",
/// tags: [
/// "foo",
/// "bar",
/// ],
/// bootDisk: {
/// initializeParams: {
/// image: "debian-cloud/debian-11",
/// labels: {
/// my_label: "value",
/// },
/// },
/// },
/// scratchDisks: [{
/// "interface": "NVME",
/// }],
/// metadata: {
/// foo: "bar",
/// },
/// metadataStartupScript: "echo hi > /test.txt",
/// serviceAccount: {
/// email: _default.email,
/// scopes: ["cloud-platform"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
/// account_id="my-custom-sa",
/// display_name="Custom SA for VM Instance")
/// default_instance = gcp.compute.Instance("default",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": "default",
/// }],
/// name="my-instance",
/// machine_type="n2-standard-2",
/// zone="us-central1-a",
/// tags=[
/// "foo",
/// "bar",
/// ],
/// boot_disk={
/// "initialize_params": {
/// "image": "debian-cloud/debian-11",
/// "labels": {
/// "my_label": "value",
/// },
/// },
/// },
/// scratch_disks=[{
/// "interface": "NVME",
/// }],
/// metadata={
/// "foo": "bar",
/// },
/// metadata_startup_script="echo hi > /test.txt",
/// service_account={
/// "email": default.email,
/// "scopes": ["cloud-platform"],
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
/// var @default = new Gcp.ServiceAccount.Account("default", new()
/// {
/// AccountId = "my-custom-sa",
/// DisplayName = "Custom SA for VM Instance",
/// });
///
/// var defaultInstance = new Gcp.Compute.Instance("default", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = "default",
/// },
/// },
/// Name = "my-instance",
/// MachineType = "n2-standard-2",
/// Zone = "us-central1-a",
/// Tags = new[]
/// {
/// "foo",
/// "bar",
/// },
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "debian-cloud/debian-11",
/// Labels =
/// {
/// { "my_label", "value" },
/// },
/// },
/// },
/// ScratchDisks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceScratchDiskArgs
/// {
/// Interface = "NVME",
/// },
/// },
/// Metadata =
/// {
/// { "foo", "bar" },
/// },
/// MetadataStartupScript = "echo hi > /test.txt",
/// ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
/// {
/// Email = @default.Email,
/// Scopes = new[]
/// {
/// "cloud-platform",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("my-custom-sa"),
/// DisplayName: pulumi.String("Custom SA for VM Instance"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "default", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: pulumi.String("default"),
/// },
/// },
/// Name:        pulumi.String("my-instance"),
/// MachineType: pulumi.String("n2-standard-2"),
/// Zone:        pulumi.String("us-central1-a"),
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
/// },
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("debian-cloud/debian-11"),
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("value"),
/// },
/// },
/// },
/// ScratchDisks: compute.InstanceScratchDiskArray{
/// &compute.InstanceScratchDiskArgs{
/// Interface: pulumi.String("NVME"),
/// },
/// },
/// Metadata: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// MetadataStartupScript: pulumi.String("echo hi > /test.txt"),
/// ServiceAccount: &compute.InstanceServiceAccountArgs{
/// Email: _default.Email,
/// Scopes: pulumi.StringArray{
/// pulumi.String("cloud-platform"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceScratchDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
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
/// var default_ = new Account("default", AccountArgs.builder()
/// .accountId("my-custom-sa")
/// .displayName("Custom SA for VM Instance")
/// .build());
///
/// var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network("default")
/// .build())
/// .name("my-instance")
/// .machineType("n2-standard-2")
/// .zone("us-central1-a")
/// .tags(
/// "foo",
/// "bar")
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("debian-cloud/debian-11")
/// .labels(Map.of("my_label", "value"))
/// .build())
/// .build())
/// .scratchDisks(InstanceScratchDiskArgs.builder()
/// .interface_("NVME")
/// .build())
/// .metadata(Map.of("foo", "bar"))
/// .metadataStartupScript("echo hi > /test.txt")
/// .serviceAccount(InstanceServiceAccountArgs.builder()
/// .email(default_.email())
/// .scopes("cloud-platform")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: my-custom-sa
/// displayName: Custom SA for VM Instance
/// defaultInstance:
/// type: gcp:compute:Instance
/// name: default
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: default
/// name: my-instance
/// machineType: n2-standard-2
/// zone: us-central1-a
/// tags:
/// - foo
/// - bar
/// bootDisk:
/// initializeParams:
/// image: debian-cloud/debian-11
/// labels:
/// my_label: value
/// scratchDisks:
/// - interface: NVME
/// metadata:
/// foo: bar
/// metadataStartupScript: echo hi > /test.txt
/// serviceAccount:
/// email: ${default.email}
/// scopes:
/// - cloud-platform
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Confidential Computing
///
/// Example with [Confidential Mode](https://cloud.google.com/confidential-computing/confidential-vm/docs/confidential-vm-overview) activated.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
/// accountId: "my-custom-sa",
/// displayName: "Custom SA for VM Instance",
/// });
/// const confidentialInstance = new gcp.compute.Instance("confidential_instance", {
/// networkInterfaces: [{
/// accessConfigs: [{}],
/// network: "default",
/// }],
/// name: "my-confidential-instance",
/// zone: "us-central1-a",
/// machineType: "n2d-standard-2",
/// minCpuPlatform: "AMD Milan",
/// confidentialInstanceConfig: {
/// enableConfidentialCompute: true,
/// confidentialInstanceType: "SEV",
/// },
/// bootDisk: {
/// initializeParams: {
/// image: "ubuntu-os-cloud/ubuntu-2204-lts",
/// labels: {
/// my_label: "value",
/// },
/// },
/// },
/// scratchDisks: [{
/// "interface": "NVME",
/// }],
/// serviceAccount: {
/// email: _default.email,
/// scopes: ["cloud-platform"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
/// account_id="my-custom-sa",
/// display_name="Custom SA for VM Instance")
/// confidential_instance = gcp.compute.Instance("confidential_instance",
/// network_interfaces=[{
/// "access_configs": [{}],
/// "network": "default",
/// }],
/// name="my-confidential-instance",
/// zone="us-central1-a",
/// machine_type="n2d-standard-2",
/// min_cpu_platform="AMD Milan",
/// confidential_instance_config={
/// "enable_confidential_compute": True,
/// "confidential_instance_type": "SEV",
/// },
/// boot_disk={
/// "initialize_params": {
/// "image": "ubuntu-os-cloud/ubuntu-2204-lts",
/// "labels": {
/// "my_label": "value",
/// },
/// },
/// },
/// scratch_disks=[{
/// "interface": "NVME",
/// }],
/// service_account={
/// "email": default.email,
/// "scopes": ["cloud-platform"],
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
/// var @default = new Gcp.ServiceAccount.Account("default", new()
/// {
/// AccountId = "my-custom-sa",
/// DisplayName = "Custom SA for VM Instance",
/// });
///
/// var confidentialInstance = new Gcp.Compute.Instance("confidential_instance", new()
/// {
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
/// {
/// AccessConfigs = new[]
/// {
/// null,
/// },
/// Network = "default",
/// },
/// },
/// Name = "my-confidential-instance",
/// Zone = "us-central1-a",
/// MachineType = "n2d-standard-2",
/// MinCpuPlatform = "AMD Milan",
/// ConfidentialInstanceConfig = new Gcp.Compute.Inputs.InstanceConfidentialInstanceConfigArgs
/// {
/// EnableConfidentialCompute = true,
/// ConfidentialInstanceType = "SEV",
/// },
/// BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
/// {
/// InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
/// {
/// Image = "ubuntu-os-cloud/ubuntu-2204-lts",
/// Labels =
/// {
/// { "my_label", "value" },
/// },
/// },
/// },
/// ScratchDisks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceScratchDiskArgs
/// {
/// Interface = "NVME",
/// },
/// },
/// ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
/// {
/// Email = @default.Email,
/// Scopes = new[]
/// {
/// "cloud-platform",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// AccountId:   pulumi.String("my-custom-sa"),
/// DisplayName: pulumi.String("Custom SA for VM Instance"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstance(ctx, "confidential_instance", &compute.InstanceArgs{
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// &compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// },
/// Network: pulumi.String("default"),
/// },
/// },
/// Name:           pulumi.String("my-confidential-instance"),
/// Zone:           pulumi.String("us-central1-a"),
/// MachineType:    pulumi.String("n2d-standard-2"),
/// MinCpuPlatform: pulumi.String("AMD Milan"),
/// ConfidentialInstanceConfig: &compute.InstanceConfidentialInstanceConfigArgs{
/// EnableConfidentialCompute: pulumi.Bool(true),
/// ConfidentialInstanceType:  pulumi.String("SEV"),
/// },
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("ubuntu-os-cloud/ubuntu-2204-lts"),
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("value"),
/// },
/// },
/// },
/// ScratchDisks: compute.InstanceScratchDiskArray{
/// &compute.InstanceScratchDiskArgs{
/// Interface: pulumi.String("NVME"),
/// },
/// },
/// ServiceAccount: &compute.InstanceServiceAccountArgs{
/// Email: _default.Email,
/// Scopes: pulumi.StringArray{
/// pulumi.String("cloud-platform"),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceConfidentialInstanceConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceScratchDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
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
/// var default_ = new Account("default", AccountArgs.builder()
/// .accountId("my-custom-sa")
/// .displayName("Custom SA for VM Instance")
/// .build());
///
/// var confidentialInstance = new Instance("confidentialInstance", InstanceArgs.builder()
/// .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
/// .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
/// .build())
/// .network("default")
/// .build())
/// .name("my-confidential-instance")
/// .zone("us-central1-a")
/// .machineType("n2d-standard-2")
/// .minCpuPlatform("AMD Milan")
/// .confidentialInstanceConfig(InstanceConfidentialInstanceConfigArgs.builder()
/// .enableConfidentialCompute(true)
/// .confidentialInstanceType("SEV")
/// .build())
/// .bootDisk(InstanceBootDiskArgs.builder()
/// .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
/// .image("ubuntu-os-cloud/ubuntu-2204-lts")
/// .labels(Map.of("my_label", "value"))
/// .build())
/// .build())
/// .scratchDisks(InstanceScratchDiskArgs.builder()
/// .interface_("NVME")
/// .build())
/// .serviceAccount(InstanceServiceAccountArgs.builder()
/// .email(default_.email())
/// .scopes("cloud-platform")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:serviceaccount:Account
/// properties:
/// accountId: my-custom-sa
/// displayName: Custom SA for VM Instance
/// confidentialInstance:
/// type: gcp:compute:Instance
/// name: confidential_instance
/// properties:
/// networkInterfaces:
/// - accessConfigs:
/// - {}
/// network: default
/// name: my-confidential-instance
/// zone: us-central1-a
/// machineType: n2d-standard-2
/// minCpuPlatform: AMD Milan
/// confidentialInstanceConfig:
/// enableConfidentialCompute: true
/// confidentialInstanceType: SEV
/// bootDisk:
/// initializeParams:
/// image: ubuntu-os-cloud/ubuntu-2204-lts
/// labels:
/// my_label: value
/// scratchDisks:
/// - interface: NVME
/// serviceAccount:
/// email: ${default.email}
/// scopes:
/// - cloud-platform
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Instances can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instances/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instances can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default projects/{{project}}/zones/{{zone}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instance:Instance default {{name}}
/// ```
class Instance4 extends CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  late final Output<InstanceAdvancedMachineFeatures?> advancedMachineFeatures;

  /// If true, allows this prvider to stop the instance to update its properties.
  /// If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  late final Output<bool?> allowStoppingForUpdate;

  /// Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  late final Output<List<InstanceAttachedDisk>?> attachedDisks;

  /// The boot disk for the instance.
  /// Structure is documented below.
  late final Output<InstanceBootDisk> bootDisk;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs.
  /// This defaults to false.
  late final Output<bool?> canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final Output<InstanceConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// The CPU platform used by this instance.
  late final Output<String> cpuPlatform;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// The current status of the instance. This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  late final Output<String> currentStatus;

  /// Enable deletion protection on this instance. Defaults to false.
  /// **Note:** you must disable deletion protection before removing the resource (e.g., via `pulumi destroy`), or the instance cannot be deleted and the provider run will not complete successfully.
  late final Output<bool?> deletionProtection;

  /// A brief description of this resource.
  late final Output<String?> description;

  /// Desired status of the instance. Either
  /// `"RUNNING"`, `"SUSPENDED"` or `"TERMINATED"`.
  late final Output<String?> desiredStatus;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  late final Output<bool?> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// **Note:** GPU accelerators can only be used with <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> option set to TERMINATE.
  late final Output<List<InstanceGuestAccelerator>> guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// Valid format is a series of labels 1-63 characters long matching the regular expression `a-z`, concatenated with periods.
  /// The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final Output<String?> hostname;

  /// Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  late final Output<InstanceInstanceEncryptionKey?> instanceEncryptionKey;

  /// The server-assigned unique identifier of this instance.
  late final Output<String> instanceId;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final Output<String?> keyRevocationActionType;

  /// The unique fingerprint of the labels.
  late final Output<String> labelFingerprint;

  /// A map of key/value label pairs to assign to the instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The machine type to create.
  ///
  /// **Note:** If you want to update this value (resize the VM) after initial creation, you must set <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// [Custom machine types](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) can be formatted as `custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB`, e.g. `custom-6-20480` for 6 vCPU and 20GB of RAM.
  /// Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use
  /// `lifecycle.ignore_changes` on <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span> in these cases.
  ///
  /// There is a limit of 6.5 GB per CPU unless you add [extended memory](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#extendedmemory). You must do this explicitly by adding the suffix `-ext`, e.g. `custom-2-15360-ext` for 2 vCPU and 15 GB of memory.
  late final Output<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within the instance. Ssh keys attached in the Cloud Console will be removed.
  /// Add them to your config in order to keep them attached to your instance.
  /// A list of predefined metadata keys (e.g. ssh-keys) can be found [here](https://cloud.google.com/compute/docs/metadata/predefined-metadata-keys)
  ///
  /// > Depending on the OS you choose for your instance, some metadata keys have
  /// special functionality.  Most linux-based images will run the content of
  /// `metadata.startup-script` in a shell on every boot.  At a minimum,
  /// Debian, CentOS, RHEL, SLES, Container-Optimized OS, and Ubuntu images
  /// support this key.  Windows instances require other keys depending on the format
  /// of the script and the time you would like it to run - see [this table](https://cloud.google.com/compute/docs/startupscript#providing_a_startup_script_for_windows_instances).
  /// For the convenience of the users of `metadata.startup-script`,
  /// we provide a special attribute, <span pulumi-lang-nodejs="`metadataStartupScript`" pulumi-lang-dotnet="`MetadataStartupScript`" pulumi-lang-go="`metadataStartupScript`" pulumi-lang-python="`metadata_startup_script`" pulumi-lang-yaml="`metadataStartupScript`" pulumi-lang-java="`metadataStartupScript`">`metadata_startup_script`</span>, which is documented below.
  late final Output<Map<String, String>?> metadata;

  /// The unique fingerprint of the metadata.
  late final Output<String> metadataFingerprint;

  /// An alternative to using the
  /// startup-script metadata key, except this one forces the instance to be recreated
  /// (thus re-running the script) if it is changed. This replaces the startup-script
  /// metadata key on the created instance and thus the two mechanisms are not
  /// allowed to be used simultaneously.  Users are free to use either mechanism - the
  /// only distinction is that this separate attribute will cause a recreate on
  /// modification.  On import, <span pulumi-lang-nodejs="`metadataStartupScript`" pulumi-lang-dotnet="`MetadataStartupScript`" pulumi-lang-go="`metadataStartupScript`" pulumi-lang-python="`metadata_startup_script`" pulumi-lang-yaml="`metadataStartupScript`" pulumi-lang-java="`metadataStartupScript`">`metadata_startup_script`</span> will not be set - if you
  /// choose to specify it you will see a diff immediately after import causing a
  /// destroy/recreate operation. If importing an instance and specifying this value
  /// is desired, you will need to modify your state file.
  late final Output<String?> metadataStartupScript;

  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  late final Output<String> minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  late final Output<String> name;

  /// Networks to attach to the instance. This can
  /// be specified multiple times. Structure is documented below.
  ///
  /// - - -
  late final Output<List<InstanceNetworkInterface>> networkInterfaces;

  /// (Optional, Beta
  /// Configures network performance settings for the instance. Structure is
  /// documented below. **Note**: <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span> must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the <span pulumi-lang-nodejs="`image`" pulumi-lang-dotnet="`Image`" pulumi-lang-go="`image`" pulumi-lang-python="`image`" pulumi-lang-yaml="`image`" pulumi-lang-java="`image`">`image`</span> used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final Output<InstanceNetworkPerformanceConfig?> networkPerformanceConfig;

  /// Additional instance parameters.
  /// .
  late final Output<InstanceParams?> params;

  /// Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final Output<Map<String, String>?> partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final Output<InstanceReservationAffinity> reservationAffinity;

  /// - A list of<span pulumi-lang-nodejs=" selfLinks " pulumi-lang-dotnet=" SelfLinks " pulumi-lang-go=" selfLinks " pulumi-lang-python=" self_links " pulumi-lang-yaml=" selfLinks " pulumi-lang-java=" selfLinks "> self_links </span>of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final Output<String?> resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final Output<InstanceScheduling> scheduling;

  /// Scratch disks to attach to the instance. This can be
  /// specified multiple times for multiple scratch disks. Structure is documented below.
  late final Output<List<InstanceScratchDisk>?> scratchDisks;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Service account to attach to the instance.
  /// Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  late final Output<InstanceServiceAccount?> serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`shieldedInstanceConfig`" pulumi-lang-dotnet="`ShieldedInstanceConfig`" pulumi-lang-go="`shieldedInstanceConfig`" pulumi-lang-python="`shielded_instance_config`" pulumi-lang-yaml="`shieldedInstanceConfig`" pulumi-lang-java="`shieldedInstanceConfig`">`shielded_instance_config`</span> can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  late final Output<InstanceShieldedInstanceConfig> shieldedInstanceConfig;

  /// A list of network tags to attach to the instance.
  late final Output<List<String>?> tags;

  /// The unique fingerprint of the tags.
  late final Output<String> tagsFingerprint;

  /// The zone that the machine should be created in. If it is not provided, the provider zone is used.
  late final Output<String> zone;

  Instance4(
    String name, {
    InstanceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instance:Instance',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        registerOutput<InstanceAdvancedMachineFeatures?>(
            'advancedMachineFeatures');
    this.allowStoppingForUpdate =
        registerOutput<bool?>('allowStoppingForUpdate');
    this.attachedDisks =
        registerOutput<List<InstanceAttachedDisk>?>('attachedDisks');
    this.bootDisk = registerOutput<InstanceBootDisk>('bootDisk');
    this.canIpForward = registerOutput<bool?>('canIpForward');
    this.confidentialInstanceConfig =
        registerOutput<InstanceConfidentialInstanceConfig>(
            'confidentialInstanceConfig');
    this.cpuPlatform = registerOutput<String>('cpuPlatform');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.currentStatus = registerOutput<String>('currentStatus');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.description = registerOutput<String?>('description');
    this.desiredStatus = registerOutput<String?>('desiredStatus');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDisplay = registerOutput<bool?>('enableDisplay');
    this.guestAccelerators =
        registerOutput<List<InstanceGuestAccelerator>>('guestAccelerators');
    this.hostname = registerOutput<String?>('hostname');
    this.instanceEncryptionKey =
        registerOutput<InstanceInstanceEncryptionKey?>('instanceEncryptionKey');
    this.instanceId = registerOutput<String>('instanceId');
    this.keyRevocationActionType =
        registerOutput<String?>('keyRevocationActionType');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String>('machineType');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.metadataFingerprint = registerOutput<String>('metadataFingerprint');
    this.metadataStartupScript =
        registerOutput<String?>('metadataStartupScript');
    this.minCpuPlatform = registerOutput<String>('minCpuPlatform');
    this.name = registerOutput<String>('name');
    this.networkInterfaces =
        registerOutput<List<InstanceNetworkInterface>>('networkInterfaces');
    this.networkPerformanceConfig =
        registerOutput<InstanceNetworkPerformanceConfig?>(
            'networkPerformanceConfig');
    this.params = registerOutput<InstanceParams?>('params');
    this.partnerMetadata =
        registerOutput<Map<String, String>?>('partnerMetadata');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reservationAffinity =
        registerOutput<InstanceReservationAffinity>('reservationAffinity');
    this.resourcePolicies = registerOutput<String?>('resourcePolicies');
    this.scheduling = registerOutput<InstanceScheduling>('scheduling');
    this.scratchDisks =
        registerOutput<List<InstanceScratchDisk>?>('scratchDisks');
    this.selfLink = registerOutput<String>('selfLink');
    this.serviceAccount =
        registerOutput<InstanceServiceAccount?>('serviceAccount');
    this.shieldedInstanceConfig =
        registerOutput<InstanceShieldedInstanceConfig>(
            'shieldedInstanceConfig');
    this.tags = registerOutput<List<String>?>('tags');
    this.tagsFingerprint = registerOutput<String>('tagsFingerprint');
    this.zone = registerOutput<String>('zone');
  }
}
