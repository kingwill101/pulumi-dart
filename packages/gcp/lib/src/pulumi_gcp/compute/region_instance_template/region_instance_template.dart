import 'package:pulumi/pulumi.dart';
import '../region_instance_template_advanced_machine_features/region_instance_template_advanced_machine_features.dart';
import '../region_instance_template_confidential_instance_config/region_instance_template_confidential_instance_config.dart';
import '../region_instance_template_disk/region_instance_template_disk.dart';
import '../region_instance_template_guest_accelerator/region_instance_template_guest_accelerator.dart';
import '../region_instance_template_network_interface/region_instance_template_network_interface.dart';
import '../region_instance_template_network_performance_config/region_instance_template_network_performance_config.dart';
import '../region_instance_template_reservation_affinity/region_instance_template_reservation_affinity.dart';
import '../region_instance_template_scheduling/region_instance_template_scheduling.dart';
import '../region_instance_template_service_account/region_instance_template_service_account.dart';
import '../region_instance_template_shielded_instance_config/region_instance_template_shielded_instance_config.dart';
import 'region_instance_template_args.dart';

/// ## Import
///
/// Instance templates can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance templates can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default projects/{{project}}/regions/{{region}}/instanceTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceTemplate:RegionInstanceTemplate default {{name}}
/// ```
class RegionInstanceTemplate extends CustomResource {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading on this VM. Structure is documented below
  late final Output<RegionInstanceTemplateAdvancedMachineFeatures?>
      advancedMachineFeatures;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs. This defaults to false.
  late final Output<bool?> canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  late final Output<RegionInstanceTemplateConfidentialInstanceConfig>
      confidentialInstanceConfig;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// A brief description of this resource.
  late final Output<String?> description;

  /// Disks to attach to instances created from this template.
  /// This can be specified multiple times for multiple disks. Structure is
  /// documented below.
  late final Output<List<RegionInstanceTemplateDisk>> disks;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true in order to update this field.
  late final Output<bool?> enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  late final Output<List<RegionInstanceTemplateGuestAccelerator>?>
      guestAccelerators;

  /// A brief description to use for instances
  /// created from this template.
  late final Output<String?> instanceDescription;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  late final Output<String?> keyRevocationActionType;

  /// A set of key/value label pairs to assign to instances
  /// created from this template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The machine type to create.
  ///
  /// To create a machine with a [custom type](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) (such as extended memory), format the value like `custom-VCPUS-MEM_IN_MB` like `custom-6-20480` for 6 vCPU and 20GB of RAM.
  ///
  /// - - -
  late final Output<String> machineType;

  /// Metadata key/value pairs to make available from
  /// within instances created from this template.
  late final Output<Map<String, String>?> metadata;

  /// The unique fingerprint of the metadata.
  late final Output<String> metadataFingerprint;

  /// An alternative to using the
  /// startup-script metadata key, mostly to match the<span pulumi-lang-nodejs=" computeInstance " pulumi-lang-dotnet=" ComputeInstance " pulumi-lang-go=" computeInstance " pulumi-lang-python=" compute_instance " pulumi-lang-yaml=" computeInstance " pulumi-lang-java=" computeInstance "> compute_instance </span>resource.
  /// This replaces the startup-script metadata key on the created instance and
  /// thus the two mechanisms are not allowed to be used simultaneously.
  late final Output<String?> metadataStartupScript;

  /// Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  late final Output<String?> minCpuPlatform;
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  ///
  /// Resulting name for a <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> <= 37 characters:
  /// <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> 38 - 54 characters:
  /// <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span> + YYmmdd + 3 digit incremental counter
  late final Output<String> namePrefix;

  /// Networks to attach to instances created from
  /// this template. This can be specified multiple times for multiple networks.
  /// Structure is documented below.
  late final Output<List<RegionInstanceTemplateNetworkInterface>?>
      networkInterfaces;

  /// Configures network performance settings for the instance created from the
  /// template. Structure is documented below. **Note**: <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span>
  /// must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the <span pulumi-lang-nodejs="`image`" pulumi-lang-dotnet="`Image`" pulumi-lang-go="`image`" pulumi-lang-python="`image`" pulumi-lang-yaml="`image`" pulumi-lang-java="`image`">`image`</span> used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  late final Output<RegionInstanceTemplateNetworkPerformanceConfig?>
      networkPerformanceConfig;

  /// numeric identifier of the resource.
  late final Output<String> numericId;

  /// Beta key/value pair represents partner metadata assigned to instance template where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  late final Output<Map<String, String>?> partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The Region in which the resource belongs.
  /// If region is not provided, the provider region is used.
  late final Output<String> region;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  late final Output<RegionInstanceTemplateReservationAffinity?>
      reservationAffinity;

  /// A set of key/value resource manager tag pairs to bind to the instance. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456.
  late final Output<Map<String, String>?> resourceManagerTags;

  /// - A list of<span pulumi-lang-nodejs=" selfLinks " pulumi-lang-dotnet=" SelfLinks " pulumi-lang-go=" selfLinks " pulumi-lang-python=" self_links " pulumi-lang-yaml=" selfLinks " pulumi-lang-java=" selfLinks "> self_links </span>of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  late final Output<String?> resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  late final Output<RegionInstanceTemplateScheduling> scheduling;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Service account to attach to the instance. Structure is documented below.
  late final Output<RegionInstanceTemplateServiceAccount?> serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`shieldedInstanceConfig`" pulumi-lang-dotnet="`ShieldedInstanceConfig`" pulumi-lang-go="`shieldedInstanceConfig`" pulumi-lang-python="`shielded_instance_config`" pulumi-lang-yaml="`shieldedInstanceConfig`" pulumi-lang-java="`shieldedInstanceConfig`">`shielded_instance_config`</span> can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  late final Output<RegionInstanceTemplateShieldedInstanceConfig>
      shieldedInstanceConfig;

  /// Tags to attach to the instance.
  late final Output<List<String>?> tags;

  /// The unique fingerprint of the tags.
  late final Output<String> tagsFingerprint;

  RegionInstanceTemplate(
    String name, {
    RegionInstanceTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceTemplate:RegionInstanceTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedMachineFeatures =
        Output.createUnknown<RegionInstanceTemplateAdvancedMachineFeatures?>();
    this.canIpForward = Output.createUnknown<bool?>();
    this.confidentialInstanceConfig = Output.createUnknown<
        RegionInstanceTemplateConfidentialInstanceConfig>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.disks = Output.createUnknown<List<RegionInstanceTemplateDisk>>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.enableDisplay = Output.createUnknown<bool?>();
    this.guestAccelerators =
        Output.createUnknown<List<RegionInstanceTemplateGuestAccelerator>?>();
    this.instanceDescription = Output.createUnknown<String?>();
    this.keyRevocationActionType = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.machineType = Output.createUnknown<String>();
    this.metadata = Output.createUnknown<Map<String, String>?>();
    this.metadataFingerprint = Output.createUnknown<String>();
    this.metadataStartupScript = Output.createUnknown<String?>();
    this.minCpuPlatform = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.networkInterfaces =
        Output.createUnknown<List<RegionInstanceTemplateNetworkInterface>?>();
    this.networkPerformanceConfig =
        Output.createUnknown<RegionInstanceTemplateNetworkPerformanceConfig?>();
    this.numericId = Output.createUnknown<String>();
    this.partnerMetadata = Output.createUnknown<Map<String, String>?>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String>();
    this.reservationAffinity =
        Output.createUnknown<RegionInstanceTemplateReservationAffinity?>();
    this.resourceManagerTags = Output.createUnknown<Map<String, String>?>();
    this.resourcePolicies = Output.createUnknown<String?>();
    this.scheduling = Output.createUnknown<RegionInstanceTemplateScheduling>();
    this.selfLink = Output.createUnknown<String>();
    this.serviceAccount =
        Output.createUnknown<RegionInstanceTemplateServiceAccount?>();
    this.shieldedInstanceConfig =
        Output.createUnknown<RegionInstanceTemplateShieldedInstanceConfig>();
    this.tags = Output.createUnknown<List<String>?>();
    this.tagsFingerprint = Output.createUnknown<String>();
  }
}
