import 'package:pulumi/pulumi.dart';
import '../instance_from_template_advanced_machine_features/instance_from_template_advanced_machine_features.dart';
import '../instance_from_template_attached_disk/instance_from_template_attached_disk.dart';
import '../instance_from_template_boot_disk/instance_from_template_boot_disk.dart';
import '../instance_from_template_confidential_instance_config/instance_from_template_confidential_instance_config.dart';
import '../instance_from_template_guest_accelerator/instance_from_template_guest_accelerator.dart';
import '../instance_from_template_instance_encryption_key/instance_from_template_instance_encryption_key.dart';
import '../instance_from_template_network_interface/instance_from_template_network_interface.dart';
import '../instance_from_template_network_performance_config/instance_from_template_network_performance_config.dart';
import '../instance_from_template_params/instance_from_template_params.dart';
import '../instance_from_template_reservation_affinity/instance_from_template_reservation_affinity.dart';
import '../instance_from_template_scheduling/instance_from_template_scheduling.dart';
import '../instance_from_template_scratch_disk/instance_from_template_scratch_disk.dart';
import '../instance_from_template_service_account/instance_from_template_service_account.dart';
import '../instance_from_template_shielded_instance_config/instance_from_template_shielded_instance_config.dart';
import 'instance_from_template_args.dart';

/// Manages a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// This resource is specifically to create a compute instance from a given
/// <span pulumi-lang-nodejs="`sourceInstanceTemplate`" pulumi-lang-dotnet="`SourceInstanceTemplate`" pulumi-lang-go="`sourceInstanceTemplate`" pulumi-lang-python="`source_instance_template`" pulumi-lang-yaml="`sourceInstanceTemplate`" pulumi-lang-java="`sourceInstanceTemplate`">`source_instance_template`</span>. To create an instance without a template, use the
/// <span pulumi-lang-nodejs="`gcp.compute.Instance`" pulumi-lang-dotnet="`gcp.compute.Instance`" pulumi-lang-go="`compute.Instance`" pulumi-lang-python="`compute.Instance`" pulumi-lang-yaml="`gcp.compute.Instance`" pulumi-lang-java="`gcp.compute.Instance`">`gcp.compute.Instance`</span> resource.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const tpl = new gcp.compute.InstanceTemplate("tpl", {
/// name: "template",
/// machineType: "e2-medium",
/// disks: [{
/// sourceImage: "debian-cloud/debian-11",
/// autoDelete: true,
/// diskSizeGb: 100,
/// boot: true,
/// }],
/// networkInterfaces: [{
/// network: "default",
/// }],
/// metadata: {
/// foo: "bar",
/// },
/// canIpForward: true,
/// });
/// const tplInstanceFromTemplate = new gcp.compute.InstanceFromTemplate("tpl", {
/// name: "instance-from-template",
/// zone: "us-central1-a",
/// sourceInstanceTemplate: tpl.selfLinkUnique,
/// canIpForward: false,
/// labels: {
/// my_key: "my_value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// tpl = gcp.compute.InstanceTemplate("tpl",
/// name="template",
/// machine_type="e2-medium",
/// disks=[{
/// "source_image": "debian-cloud/debian-11",
/// "auto_delete": True,
/// "disk_size_gb": 100,
/// "boot": True,
/// }],
/// network_interfaces=[{
/// "network": "default",
/// }],
/// metadata={
/// "foo": "bar",
/// },
/// can_ip_forward=True)
/// tpl_instance_from_template = gcp.compute.InstanceFromTemplate("tpl",
/// name="instance-from-template",
/// zone="us-central1-a",
/// source_instance_template=tpl.self_link_unique,
/// can_ip_forward=False,
/// labels={
/// "my_key": "my_value",
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
/// var tpl = new Gcp.Compute.InstanceTemplate("tpl", new()
/// {
/// Name = "template",
/// MachineType = "e2-medium",
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = "debian-cloud/debian-11",
/// AutoDelete = true,
/// DiskSizeGb = 100,
/// Boot = true,
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = "default",
/// },
/// },
/// Metadata =
/// {
/// { "foo", "bar" },
/// },
/// CanIpForward = true,
/// });
///
/// var tplInstanceFromTemplate = new Gcp.Compute.InstanceFromTemplate("tpl", new()
/// {
/// Name = "instance-from-template",
/// Zone = "us-central1-a",
/// SourceInstanceTemplate = tpl.SelfLinkUnique,
/// CanIpForward = false,
/// Labels =
/// {
/// { "my_key", "my_value" },
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
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tpl, err := compute.NewInstanceTemplate(ctx, "tpl", &compute.InstanceTemplateArgs{
/// Name:        pulumi.String("template"),
/// MachineType: pulumi.String("e2-medium"),
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String("debian-cloud/debian-11"),
/// AutoDelete:  pulumi.Bool(true),
/// DiskSizeGb:  pulumi.Int(100),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network: pulumi.String("default"),
/// },
/// },
/// Metadata: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// CanIpForward: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewInstanceFromTemplate(ctx, "tpl", &compute.InstanceFromTemplateArgs{
/// Name:                   pulumi.String("instance-from-template"),
/// Zone:                   pulumi.String("us-central1-a"),
/// SourceInstanceTemplate: tpl.SelfLinkUnique,
/// CanIpForward:           pulumi.Bool(false),
/// Labels: pulumi.StringMap{
/// "my_key": pulumi.String("my_value"),
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
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.InstanceFromTemplate;
/// import com.pulumi.gcp.compute.InstanceFromTemplateArgs;
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
/// var tpl = new InstanceTemplate("tpl", InstanceTemplateArgs.builder()
/// .name("template")
/// .machineType("e2-medium")
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage("debian-cloud/debian-11")
/// .autoDelete(true)
/// .diskSizeGb(100)
/// .boot(true)
/// .build())
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network("default")
/// .build())
/// .metadata(Map.of("foo", "bar"))
/// .canIpForward(true)
/// .build());
///
/// var tplInstanceFromTemplate = new InstanceFromTemplate("tplInstanceFromTemplate", InstanceFromTemplateArgs.builder()
/// .name("instance-from-template")
/// .zone("us-central1-a")
/// .sourceInstanceTemplate(tpl.selfLinkUnique())
/// .canIpForward(false)
/// .labels(Map.of("my_key", "my_value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tpl:
/// type: gcp:compute:InstanceTemplate
/// properties:
/// name: template
/// machineType: e2-medium
/// disks:
/// - sourceImage: debian-cloud/debian-11
/// autoDelete: true
/// diskSizeGb: 100
/// boot: true
/// networkInterfaces:
/// - network: default
/// metadata:
/// foo: bar
/// canIpForward: true
/// tplInstanceFromTemplate:
/// type: gcp:compute:InstanceFromTemplate
/// name: tpl
/// properties:
/// name: instance-from-template
/// zone: us-central1-a
/// sourceInstanceTemplate: ${tpl.selfLinkUnique}
/// canIpForward: false
/// labels:
/// my_key: my_value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class InstanceFromTemplate extends CustomResource {
  /// Controls for advanced machine-related behavior features.
  late final Output<InstanceFromTemplateAdvancedMachineFeatures>
      advancedMachineFeatures;
  late final Output<bool> allowStoppingForUpdate;

  /// List of disks attached to the instance
  late final Output<List<InstanceFromTemplateAttachedDisk>> attachedDisks;

  /// The boot disk for the instance.
  late final Output<InstanceFromTemplateBootDisk> bootDisk;

  /// Whether sending and receiving of packets with non-matching source or destination IPs is allowed.
  late final Output<bool> canIpForward;

  /// The Confidential VM config being used by the instance. <span pulumi-lang-nodejs=" onHostMaintenance " pulumi-lang-dotnet=" OnHostMaintenance " pulumi-lang-go=" onHostMaintenance " pulumi-lang-python=" on_host_maintenance " pulumi-lang-yaml=" onHostMaintenance " pulumi-lang-java=" onHostMaintenance "> on_host_maintenance </span>has to be set to TERMINATE or this will fail to create.
  late final Output<InstanceFromTemplateConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// The CPU platform used by this instance.
  late final Output<String> cpuPlatform;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Current status of the instance.
  /// This could be one of the following values: PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED.
  /// For more information about the status of the instance, see [Instance life cycle](https://cloud.google.com/compute/docs/instances/instance-life-cycle).
  late final Output<String> currentStatus;

  /// Whether deletion protection is enabled on this instance.
  late final Output<bool> deletionProtection;

  /// A brief description of the resource.
  late final Output<String> description;

  /// Desired status of the instance. Either "RUNNING", "SUSPENDED" or "TERMINATED".
  late final Output<String> desiredStatus;
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether the instance has virtual displays enabled.
  late final Output<bool> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance.
  late final Output<List<InstanceFromTemplateGuestAccelerator>>
      guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression a-z, concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  late final Output<String> hostname;

  /// Encryption key used to provide data encryption on the given instance.
  late final Output<InstanceFromTemplateInstanceEncryptionKey>
      instanceEncryptionKey;

  /// The server-assigned unique identifier of this instance.
  late final Output<String> instanceId;

  /// Action to be taken when a customer's encryption key is revoked. Supports "STOP" and "NONE", with "NONE" being the default.
  late final Output<String> keyRevocationActionType;

  /// The unique fingerprint of the labels.
  late final Output<String> labelFingerprint;

  /// A set of key/value label pairs assigned to the instance.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>> labels;

  /// The machine type to create.
  late final Output<String> machineType;

  /// Metadata key/value pairs made available within the instance.
  late final Output<Map<String, String>> metadata;

  /// The unique fingerprint of the metadata.
  late final Output<String> metadataFingerprint;

  /// Metadata startup scripts made available within the instance.
  late final Output<String> metadataStartupScript;

  /// The minimum CPU platform specified for the VM instance.
  late final Output<String> minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  late final Output<String> name;

  /// The networks attached to the instance.
  late final Output<List<InstanceFromTemplateNetworkInterface>>
      networkInterfaces;

  /// Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration.
  late final Output<InstanceFromTemplateNetworkPerformanceConfig>
      networkPerformanceConfig;

  /// Stores additional params passed with the request, but not persisted as part of resource payload.
  late final Output<InstanceFromTemplateParams> params;

  /// Partner Metadata Map made available within the instance.
  late final Output<Map<String, String>> partnerMetadata;

  /// The ID of the project in which the resource belongs. If<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>is provided, this value is ignored. If neither<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>nor project are provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies the reservations that this instance can consume from.
  late final Output<InstanceFromTemplateReservationAffinity>
      reservationAffinity;

  /// A list of<span pulumi-lang-nodejs=" selfLinks " pulumi-lang-dotnet=" SelfLinks " pulumi-lang-go=" selfLinks " pulumi-lang-python=" self_links " pulumi-lang-yaml=" selfLinks " pulumi-lang-java=" selfLinks "> self_links </span>of resource policies to attach to the instance. Currently a max of 1 resource policy is supported.
  late final Output<String> resourcePolicies;

  /// The scheduling strategy being used by the instance.
  late final Output<InstanceFromTemplateScheduling> scheduling;

  /// The scratch disks attached to the instance.
  late final Output<List<InstanceFromTemplateScratchDisk>> scratchDisks;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The service account to attach to the instance.
  late final Output<InstanceFromTemplateServiceAccount> serviceAccount;

  /// The shielded vm config being used by the instance.
  late final Output<InstanceFromTemplateShieldedInstanceConfig>
      shieldedInstanceConfig;

  /// Name or self link of an instance
  /// template to create the instance based on. It is recommended to reference
  /// instance templates through their unique id (<span pulumi-lang-nodejs="`selfLinkUnique`" pulumi-lang-dotnet="`SelfLinkUnique`" pulumi-lang-go="`selfLinkUnique`" pulumi-lang-python="`self_link_unique`" pulumi-lang-yaml="`selfLinkUnique`" pulumi-lang-java="`selfLinkUnique`">`self_link_unique`</span> attribute).
  ///
  /// - - -
  late final Output<String> sourceInstanceTemplate;

  /// The list of tags attached to the instance.
  late final Output<List<String>> tags;

  /// The unique fingerprint of the tags.
  late final Output<String> tagsFingerprint;

  /// The zone that the machine should be created in. If not
  /// set, the provider zone is used.
  ///
  /// In addition to these, all arguments from <span pulumi-lang-nodejs="`gcp.compute.Instance`" pulumi-lang-dotnet="`gcp.compute.Instance`" pulumi-lang-go="`compute.Instance`" pulumi-lang-python="`compute.Instance`" pulumi-lang-yaml="`gcp.compute.Instance`" pulumi-lang-java="`gcp.compute.Instance`">`gcp.compute.Instance`</span> are supported
  /// as a way to override the properties in the template. All exported attributes
  /// from <span pulumi-lang-nodejs="`gcp.compute.Instance`" pulumi-lang-dotnet="`gcp.compute.Instance`" pulumi-lang-go="`compute.Instance`" pulumi-lang-python="`compute.Instance`" pulumi-lang-yaml="`gcp.compute.Instance`" pulumi-lang-java="`gcp.compute.Instance`">`gcp.compute.Instance`</span> are likewise exported here.
  late final Output<String> zone;

  InstanceFromTemplate(
    String name, {
    InstanceFromTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceFromTemplate:InstanceFromTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        Output.createUnknown<InstanceFromTemplateAdvancedMachineFeatures>();
    this.allowStoppingForUpdate = Output.createUnknown<bool>();
    this.attachedDisks =
        Output.createUnknown<List<InstanceFromTemplateAttachedDisk>>();
    this.bootDisk = Output.createUnknown<InstanceFromTemplateBootDisk>();
    this.canIpForward = Output.createUnknown<bool>();
    this.confidentialInstanceConfig =
        Output.createUnknown<InstanceFromTemplateConfidentialInstanceConfig>();
    this.cpuPlatform = Output.createUnknown<String>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.currentStatus = Output.createUnknown<String>();
    this.deletionProtection = Output.createUnknown<bool>();
    this.description = Output.createUnknown<String>();
    this.desiredStatus = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enableDisplay = Output.createUnknown<bool>();
    this.guestAccelerators =
        Output.createUnknown<List<InstanceFromTemplateGuestAccelerator>>();
    this.hostname = Output.createUnknown<String>();
    this.instanceEncryptionKey =
        Output.createUnknown<InstanceFromTemplateInstanceEncryptionKey>();
    this.instanceId = Output.createUnknown<String>();
    this.keyRevocationActionType = Output.createUnknown<String>();
    this.labelFingerprint = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.machineType = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>>();
    this.metadataFingerprint = Output.createUnknown<String>();
    this.metadataStartupScript = Output.createUnknown<String>();
    this.minCpuPlatform = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkInterfaces =
        Output.createUnknown<List<InstanceFromTemplateNetworkInterface>>();
    this.networkPerformanceConfig =
        Output.createUnknown<InstanceFromTemplateNetworkPerformanceConfig>();
    this.params = Output.createUnknown<InstanceFromTemplateParams>();
    this.partnerMetadata = Output.createUnknown<Map<String, String>>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.reservationAffinity =
        Output.createUnknown<InstanceFromTemplateReservationAffinity>();
    this.resourcePolicies = Output.createUnknown<String>();
    this.scheduling = Output.createUnknown<InstanceFromTemplateScheduling>();
    this.scratchDisks =
        Output.createUnknown<List<InstanceFromTemplateScratchDisk>>();
    this.selfLink = Output.createUnknown<String>();
    this.serviceAccount =
        Output.createUnknown<InstanceFromTemplateServiceAccount>();
    this.shieldedInstanceConfig =
        Output.createUnknown<InstanceFromTemplateShieldedInstanceConfig>();
    this.sourceInstanceTemplate = Output.createUnknown<String>();
    this.tags = Output.createUnknown<List<String>>();
    this.tagsFingerprint = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
