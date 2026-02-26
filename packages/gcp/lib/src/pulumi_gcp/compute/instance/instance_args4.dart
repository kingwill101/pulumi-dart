// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Instance.
class InstanceArgs4 {
  /// Configure Nested Virtualisation and Simultaneous Hyper Threading  on this VM. Structure is documented below
  final Input<InstanceAdvancedMachineFeatures>? advancedMachineFeatures;

  /// If true, allows this prvider to stop the instance to update its properties.
  /// If you try to update a property that requires stopping the instance without setting this field, the update will fail.
  final Input<bool>? allowStoppingForUpdate;

  /// Additional disks to attach to the instance. Can be repeated multiple times for multiple disks. Structure is documented below.
  final Input<List<InstanceAttachedDisk>>? attachedDisks;

  /// The boot disk for the instance.
  /// Structure is documented below.
  final Input<InstanceBootDisk> bootDisk;

  /// Whether to allow sending and receiving of
  /// packets with non-matching source or destination IPs.
  /// This defaults to false.
  final Input<bool>? canIpForward;

  /// Enable [Confidential Mode](https://cloud.google.com/compute/confidential-vm/docs/about-cvm) on this VM. Structure is documented below
  final Input<InstanceConfidentialInstanceConfig>? confidentialInstanceConfig;

  /// Enable deletion protection on this instance. Defaults to false.
  /// **Note:** you must disable deletion protection before removing the resource (e.g., via `pulumi destroy`), or the instance cannot be deleted and the provider run will not complete successfully.
  final Input<bool>? deletionProtection;

  /// A brief description of this resource.
  final Input<String>? description;

  /// Desired status of the instance. Either
  /// `"RUNNING"`, `"SUSPENDED"` or `"TERMINATED"`.
  final Input<String>? desiredStatus;

  /// Enable [Virtual Displays](https://cloud.google.com/compute/docs/instances/enable-instance-virtual-display#verify_display_driver) on this instance.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final Input<bool>? enableDisplay;

  /// List of the type and count of accelerator cards attached to the instance. Structure documented below.
  /// **Note:** GPU accelerators can only be used with <span pulumi-lang-nodejs="`onHostMaintenance`" pulumi-lang-dotnet="`OnHostMaintenance`" pulumi-lang-go="`onHostMaintenance`" pulumi-lang-python="`on_host_maintenance`" pulumi-lang-yaml="`onHostMaintenance`" pulumi-lang-java="`onHostMaintenance`">`on_host_maintenance`</span> option set to TERMINATE.
  final Input<List<InstanceGuestAccelerator>>? guestAccelerators;

  /// A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid.
  /// Valid format is a series of labels 1-63 characters long matching the regular expression `a-z`, concatenated with periods.
  /// The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created.
  final Input<String>? hostname;

  /// Configuration for data encryption on the instance with encryption keys. Structure is documented below.
  final Input<InstanceInstanceEncryptionKey>? instanceEncryptionKey;

  /// Action to be taken when a customer's encryption key is revoked. Supports `STOP` and `NONE`, with `NONE` being the default.
  final Input<String>? keyRevocationActionType;

  /// A map of key/value label pairs to assign to the instance.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The machine type to create.
  ///
  /// **Note:** If you want to update this value (resize the VM) after initial creation, you must set <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// [Custom machine types](https://cloud.google.com/dataproc/docs/concepts/compute/custom-machine-types) can be formatted as `custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB`, e.g. `custom-6-20480` for 6 vCPU and 20GB of RAM.
  /// Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use
  /// `lifecycle.ignore_changes` on <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span> in these cases.
  ///
  /// There is a limit of 6.5 GB per CPU unless you add [extended memory](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#extendedmemory). You must do this explicitly by adding the suffix `-ext`, e.g. `custom-2-15360-ext` for 2 vCPU and 15 GB of memory.
  final Input<String> machineType;

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
  final Input<Map<String, String>>? metadata;

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
  final Input<String>? metadataStartupScript;

  /// Specifies a minimum CPU platform for the VM instance. Applicable values are the friendly names of CPU platforms, such as
  /// `Intel Haswell` or `Intel Skylake`. See the complete list [here](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform).
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final Input<String>? minCpuPlatform;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final Input<String>? name;

  /// Networks to attach to the instance. This can
  /// be specified multiple times. Structure is documented below.
  ///
  /// - - -
  final Input<List<InstanceNetworkInterface>> networkInterfaces;

  /// (Optional, Beta
  /// Configures network performance settings for the instance. Structure is
  /// documented below. **Note**: <span pulumi-lang-nodejs="`machineType`" pulumi-lang-dotnet="`MachineType`" pulumi-lang-go="`machineType`" pulumi-lang-python="`machine_type`" pulumi-lang-yaml="`machineType`" pulumi-lang-java="`machineType`">`machine_type`</span> must be a [supported type](https://cloud.google.com/compute/docs/networking/configure-vm-with-high-bandwidth-configuration),
  /// the <span pulumi-lang-nodejs="`image`" pulumi-lang-dotnet="`Image`" pulumi-lang-go="`image`" pulumi-lang-python="`image`" pulumi-lang-yaml="`image`" pulumi-lang-java="`image`">`image`</span> used must include the [`GVNIC`](https://cloud.google.com/compute/docs/networking/using-gvnic#create-instance-gvnic-image)
  /// in `guest-os-features`, and `network_interface.0.nic-type` must be `GVNIC`
  /// in order for this setting to take effect.
  final Input<InstanceNetworkPerformanceConfig>? networkPerformanceConfig;

  /// Additional instance parameters.
  /// .
  final Input<InstanceParams>? params;

  /// Beta key/value pair represents partner metadata assigned to instance where key represent a defined namespace and value is a json string represent the entries associted with the namespace.
  final Input<Map<String, String>>? partnerMetadata;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Specifies the reservations that this instance can consume from.
  /// Structure is documented below.
  final Input<InstanceReservationAffinity>? reservationAffinity;

  /// - A list of<span pulumi-lang-nodejs=" selfLinks " pulumi-lang-dotnet=" SelfLinks " pulumi-lang-go=" selfLinks " pulumi-lang-python=" self_links " pulumi-lang-yaml=" selfLinks " pulumi-lang-java=" selfLinks "> self_links </span>of resource policies to attach to the instance. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final Input<String>? resourcePolicies;

  /// The scheduling strategy to use. More details about
  /// this configuration option are detailed below.
  final Input<InstanceScheduling>? scheduling;

  /// Scratch disks to attach to the instance. This can be
  /// specified multiple times for multiple scratch disks. Structure is documented below.
  final Input<List<InstanceScratchDisk>>? scratchDisks;

  /// Service account to attach to the instance.
  /// Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final Input<InstanceServiceAccount>? serviceAccount;

  /// Enable [Shielded VM](https://cloud.google.com/security/shielded-cloud/shielded-vm) on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Structure is documented below.
  /// **Note**: <span pulumi-lang-nodejs="`shieldedInstanceConfig`" pulumi-lang-dotnet="`ShieldedInstanceConfig`" pulumi-lang-go="`shieldedInstanceConfig`" pulumi-lang-python="`shielded_instance_config`" pulumi-lang-yaml="`shieldedInstanceConfig`" pulumi-lang-java="`shieldedInstanceConfig`">`shielded_instance_config`</span> can only be used with boot images with shielded vm support. See the complete list [here](https://cloud.google.com/compute/docs/images#shielded-images).
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final Input<InstanceShieldedInstanceConfig>? shieldedInstanceConfig;

  /// A list of network tags to attach to the instance.
  final Input<List<String>>? tags;

  /// The zone that the machine should be created in. If it is not provided, the provider zone is used.
  final Input<String>? zone;

  InstanceArgs4({
    this.advancedMachineFeatures,
    this.allowStoppingForUpdate,
    this.attachedDisks,
    required this.bootDisk,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.desiredStatus,
    this.enableDisplay,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    required this.machineType,
    this.metadata,
    this.metadataStartupScript,
    this.minCpuPlatform,
    this.name,
    required this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.partnerMetadata,
    this.project,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.scratchDisks,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.tags,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = Input.mapOptionalInputValue<
              InstanceAdvancedMachineFeatures, Map<String, dynamic>>(
          advancedMachineFeaturesValue, (value) => value.toMap());
    }
    final allowStoppingForUpdateValue = allowStoppingForUpdate;
    if (allowStoppingForUpdateValue != null) {
      map['allowStoppingForUpdate'] = allowStoppingForUpdateValue;
    }
    final attachedDisksValue = attachedDisks;
    if (attachedDisksValue != null) {
      map['attachedDisks'] = Input.mapOptionalInputValue<
              List<InstanceAttachedDisk>, List<Map<String, dynamic>>>(
          attachedDisksValue,
          (value) =>
              Input.encodeList<InstanceAttachedDisk, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['bootDisk'] =
        Input.mapInputValue<InstanceBootDisk, Map<String, dynamic>>(
            bootDisk, (value) => value.toMap());
    final canIpForwardValue = canIpForward;
    if (canIpForwardValue != null) {
      map['canIpForward'] = canIpForwardValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] = Input.mapOptionalInputValue<
              InstanceConfidentialInstanceConfig, Map<String, dynamic>>(
          confidentialInstanceConfigValue, (value) => value.toMap());
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final desiredStatusValue = desiredStatus;
    if (desiredStatusValue != null) {
      map['desiredStatus'] = desiredStatusValue;
    }
    final enableDisplayValue = enableDisplay;
    if (enableDisplayValue != null) {
      map['enableDisplay'] = enableDisplayValue;
    }
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = Input.mapOptionalInputValue<
              List<InstanceGuestAccelerator>, List<Map<String, dynamic>>>(
          guestAcceleratorsValue,
          (value) =>
              Input.encodeList<InstanceGuestAccelerator, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final instanceEncryptionKeyValue = instanceEncryptionKey;
    if (instanceEncryptionKeyValue != null) {
      map['instanceEncryptionKey'] = Input.mapOptionalInputValue<
              InstanceInstanceEncryptionKey, Map<String, dynamic>>(
          instanceEncryptionKeyValue, (value) => value.toMap());
    }
    final keyRevocationActionTypeValue = keyRevocationActionType;
    if (keyRevocationActionTypeValue != null) {
      map['keyRevocationActionType'] = keyRevocationActionTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['machineType'] = machineType;
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue;
    }
    final metadataStartupScriptValue = metadataStartupScript;
    if (metadataStartupScriptValue != null) {
      map['metadataStartupScript'] = metadataStartupScriptValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkInterfaces'] = Input.mapInputValue<
            List<InstanceNetworkInterface>, List<Map<String, dynamic>>>(
        networkInterfaces,
        (value) =>
            Input.encodeList<InstanceNetworkInterface, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final networkPerformanceConfigValue = networkPerformanceConfig;
    if (networkPerformanceConfigValue != null) {
      map['networkPerformanceConfig'] = Input.mapOptionalInputValue<
              InstanceNetworkPerformanceConfig, Map<String, dynamic>>(
          networkPerformanceConfigValue, (value) => value.toMap());
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<InstanceParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final partnerMetadataValue = partnerMetadata;
    if (partnerMetadataValue != null) {
      map['partnerMetadata'] = partnerMetadataValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reservationAffinityValue = reservationAffinity;
    if (reservationAffinityValue != null) {
      map['reservationAffinity'] = Input.mapOptionalInputValue<
              InstanceReservationAffinity, Map<String, dynamic>>(
          reservationAffinityValue, (value) => value.toMap());
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] =
          Input.mapOptionalInputValue<InstanceScheduling, Map<String, dynamic>>(
              schedulingValue, (value) => value.toMap());
    }
    final scratchDisksValue = scratchDisks;
    if (scratchDisksValue != null) {
      map['scratchDisks'] = Input.mapOptionalInputValue<
              List<InstanceScratchDisk>, List<Map<String, dynamic>>>(
          scratchDisksValue,
          (value) =>
              Input.encodeList<InstanceScratchDisk, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = Input.mapOptionalInputValue<
          InstanceServiceAccount,
          Map<String, dynamic>>(serviceAccountValue, (value) => value.toMap());
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = Input.mapOptionalInputValue<
              InstanceShieldedInstanceConfig, Map<String, dynamic>>(
          shieldedInstanceConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceArgs4.fromMap(Map<String, dynamic> map) {
    return InstanceArgs4(
      advancedMachineFeatures:
          Input.asOptionalInput<InstanceAdvancedMachineFeatures>(
              map['advancedMachineFeatures']),
      allowStoppingForUpdate:
          Input.asOptionalInput<bool>(map['allowStoppingForUpdate']),
      attachedDisks: Input.asOptionalInput<List<InstanceAttachedDisk>>(
          map['attachedDisks']),
      bootDisk: Input.asInput<InstanceBootDisk>(map['bootDisk']),
      canIpForward: Input.asOptionalInput<bool>(map['canIpForward']),
      confidentialInstanceConfig:
          Input.asOptionalInput<InstanceConfidentialInstanceConfig>(
              map['confidentialInstanceConfig']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      description: Input.asOptionalInput<String>(map['description']),
      desiredStatus: Input.asOptionalInput<String>(map['desiredStatus']),
      enableDisplay: Input.asOptionalInput<bool>(map['enableDisplay']),
      guestAccelerators: Input.asOptionalInput<List<InstanceGuestAccelerator>>(
          map['guestAccelerators']),
      hostname: Input.asOptionalInput<String>(map['hostname']),
      instanceEncryptionKey:
          Input.asOptionalInput<InstanceInstanceEncryptionKey>(
              map['instanceEncryptionKey']),
      keyRevocationActionType:
          Input.asOptionalInput<String>(map['keyRevocationActionType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: Input.asInput<String>(map['machineType']),
      metadata: Input.asOptionalInput<Map<String, String>>(map['metadata']),
      metadataStartupScript:
          Input.asOptionalInput<String>(map['metadataStartupScript']),
      minCpuPlatform: Input.asOptionalInput<String>(map['minCpuPlatform']),
      name: Input.asOptionalInput<String>(map['name']),
      networkInterfaces: Input.asInput<List<InstanceNetworkInterface>>(
          map['networkInterfaces']),
      networkPerformanceConfig:
          Input.asOptionalInput<InstanceNetworkPerformanceConfig>(
              map['networkPerformanceConfig']),
      params: Input.asOptionalInput<InstanceParams>(map['params']),
      partnerMetadata:
          Input.asOptionalInput<Map<String, String>>(map['partnerMetadata']),
      project: Input.asOptionalInput<String>(map['project']),
      reservationAffinity: Input.asOptionalInput<InstanceReservationAffinity>(
          map['reservationAffinity']),
      resourcePolicies: Input.asOptionalInput<String>(map['resourcePolicies']),
      scheduling: Input.asOptionalInput<InstanceScheduling>(map['scheduling']),
      scratchDisks:
          Input.asOptionalInput<List<InstanceScratchDisk>>(map['scratchDisks']),
      serviceAccount:
          Input.asOptionalInput<InstanceServiceAccount>(map['serviceAccount']),
      shieldedInstanceConfig:
          Input.asOptionalInput<InstanceShieldedInstanceConfig>(
              map['shieldedInstanceConfig']),
      tags: Input.asOptionalInput<List<String>>(map['tags']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
