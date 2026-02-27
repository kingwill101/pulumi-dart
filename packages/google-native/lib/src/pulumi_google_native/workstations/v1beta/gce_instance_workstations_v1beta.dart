// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_workstations_v1beta.dart';
import 'gce_confidential_instance_config_workstations_v1beta.dart';
import 'gce_shielded_instance_config_workstations_v1beta.dart';

/// A runtime using a Compute Engine instance.
class GceInstanceWorkstationsV1beta {
  /// Optional. A list of the type and count of accelerator cards attached to the instance.
  final List<AcceleratorWorkstationsV1beta>? accelerators;

  /// Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `30` GB. Defaults to `50` GB.
  final int? bootDiskSizeGb;

  /// Optional. A set of Compute Engine Confidential VM instance options.
  final GceConfidentialInstanceConfigWorkstationsV1beta?
      confidentialInstanceConfig;

  /// Optional. When set to true, disables public IP addresses for VMs. If you disable public IP addresses, you must set up Private Google Access or Cloud NAT on your network. If you use Private Google Access and you use `private.googleapis.com` or `restricted.googleapis.com` for Container Registry and Artifact Registry, make sure that you set up DNS records for domains `*.gcr.io` and `*.pkg.dev`. Defaults to false (VMs have public IP addresses).
  final bool? disablePublicIpAddresses;

  /// Optional. Whether to enable nested virtualization on Cloud Workstations VMs created under this workstation configuration. Nested virtualization lets you run virtual machine (VM) instances inside your workstation. Before enabling nested virtualization, consider the following important considerations. Cloud Workstations instances are subject to the [same restrictions as Compute Engine instances](https://cloud.google.com/compute/docs/instances/nested-virtualization/overview#restrictions): * **Organization policy**: projects, folders, or organizations may be restricted from creating nested VMs if the **Disable VM nested virtualization** constraint is enforced in the organization policy. For more information, see the Compute Engine section, [Checking whether nested virtualization is allowed](https://cloud.google.com/compute/docs/instances/nested-virtualization/managing-constraint#checking_whether_nested_virtualization_is_allowed). * **Performance**: nested VMs might experience a 10% or greater decrease in performance for workloads that are CPU-bound and possibly greater than a 10% decrease for workloads that are input/output bound. * **Machine Type**: nested virtualization can only be enabled on workstation configurations that specify a machine_type in the N1 or N2 machine series. * **GPUs**: nested virtualization may not be enabled on workstation configurations with accelerators. * **Operating System**: Because [Container-Optimized OS](https://cloud.google.com/compute/docs/images/os-details#container-optimized_os_cos) does not support nested virtualization, when nested virtualization is enabled, the underlying Compute Engine VM instances boot from an [Ubuntu LTS](https://cloud.google.com/compute/docs/images/os-details#ubuntu_lts) image.
  final bool? enableNestedVirtualization;

  /// Optional. The type of machine to use for VM instances—for example, `"e2-standard-4"`. For more information about machine types that Cloud Workstations supports, see the list of [available machine types](https://cloud.google.com/workstations/docs/available-machine-types).
  final String? machineType;

  /// Optional. The number of VMs that the system should keep idle so that new workstations can be started quickly for new users. Defaults to `0` in the API.
  final int? poolSize;

  /// Optional. The email address of the service account for Cloud Workstations VMs created with this configuration. When specified, be sure that the service account has `logginglogEntries.create` permission on the project so it can write logs out to Cloud Logging. If using a custom container image, the service account must have [Artifact Registry Reader](https://cloud.google.com/artifact-registry/docs/access-control#roles) permission to pull the specified image. If you as the administrator want to be able to `ssh` into the underlying VM, you need to set this value to a service account for which you have the `iam.serviceAccounts.actAs` permission. Conversely, if you don't want anyone to be able to `ssh` into the underlying VM, use a service account where no one has that permission. If not set, VMs run with a service account provided by the Cloud Workstations service, and the image must be publicly accessible.
  final String? serviceAccount;

  /// Optional. Scopes to grant to the service_account. Various scopes are automatically added based on feature usage. When specified, users of workstations under this configuration must have `iam.serviceAccounts.actAs` on the service account.
  final List<String>? serviceAccountScopes;

  /// Optional. A set of Compute Engine Shielded instance options.
  final GceShieldedInstanceConfigWorkstationsV1beta? shieldedInstanceConfig;

  /// Optional. Network tags to add to the Compute Engine VMs backing the workstations. This option applies [network tags](https://cloud.google.com/vpc/docs/add-remove-network-tags) to VMs created with this configuration. These network tags enable the creation of [firewall rules](https://cloud.google.com/workstations/docs/configure-firewall-rules).
  final List<String>? tags;

  GceInstanceWorkstationsV1beta({
    this.accelerators,
    this.bootDiskSizeGb,
    this.confidentialInstanceConfig,
    this.disablePublicIpAddresses,
    this.enableNestedVirtualization,
    this.machineType,
    this.poolSize,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = pulumi.Input.encodeList<
          AcceleratorWorkstationsV1beta,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final confidentialInstanceConfigValue = confidentialInstanceConfig;
    if (confidentialInstanceConfigValue != null) {
      map['confidentialInstanceConfig'] =
          confidentialInstanceConfigValue.toMap();
    }
    final disablePublicIpAddressesValue = disablePublicIpAddresses;
    if (disablePublicIpAddressesValue != null) {
      map['disablePublicIpAddresses'] = disablePublicIpAddressesValue;
    }
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final poolSizeValue = poolSize;
    if (poolSizeValue != null) {
      map['poolSize'] = poolSizeValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final serviceAccountScopesValue = serviceAccountScopes;
    if (serviceAccountScopesValue != null) {
      map['serviceAccountScopes'] = serviceAccountScopesValue;
    }
    final shieldedInstanceConfigValue = shieldedInstanceConfig;
    if (shieldedInstanceConfigValue != null) {
      map['shieldedInstanceConfig'] = shieldedInstanceConfigValue.toMap();
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GceInstanceWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return GceInstanceWorkstationsV1beta(
      accelerators: map['accelerators'] == null
          ? null
          : pulumi.Input.decodeList<AcceleratorWorkstationsV1beta>(
              map['accelerators'],
              (value) => AcceleratorWorkstationsV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null
          ? null
          : GceConfidentialInstanceConfigWorkstationsV1beta.fromMap(
              (map['confidentialInstanceConfig'] as Map)
                  .cast<String, dynamic>()),
      disablePublicIpAddresses: map['disablePublicIpAddresses'] == null
          ? null
          : map['disablePublicIpAddresses'] as bool,
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      poolSize: map['poolSize'] == null ? null : map['poolSize'] as int,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceAccountScopes: map['serviceAccountScopes'] == null
          ? null
          : (map['serviceAccountScopes'] as List).cast<String>(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null
          ? null
          : GceShieldedInstanceConfigWorkstationsV1beta.fromMap(
              (map['shieldedInstanceConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
