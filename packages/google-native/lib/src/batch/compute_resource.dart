// ignore_for_file: unused_element, unnecessary_cast

/// Compute resource requirements. ComputeResource defines the amount of resources required for each task. Make sure your tasks have enough resources to successfully run. If you also define the types of resources for a job to use with the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure both fields are compatible with each other.
class ComputeResource {
  /// Extra boot disk size in MiB for each task.
  final String? bootDiskMib;

  /// The milliCPU count. `cpuMilli` defines the amount of CPU resources per task in milliCPU units. For example, `1000` corresponds to 1 vCPU per task. If undefined, the default value is `2000`. If you also define the VM's machine type using the `machineType` in [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy) field or inside the `instanceTemplate` in the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure the CPU resources for both fields are compatible with each other and with how many tasks you want to allow to run on the same VM at the same time. For example, if you specify the `n2-standard-2` machine type, which has 2 vCPUs each, you are recommended to set `cpuMilli` no more than `2000`, or you are recommended to run two tasks on the same VM if you set `cpuMilli` to `1000` or less.
  final String? cpuMilli;

  /// Memory in MiB. `memoryMib` defines the amount of memory per task in MiB units. If undefined, the default value is `2000`. If you also define the VM's machine type using the `machineType` in [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy) field or inside the `instanceTemplate` in the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure the memory resources for both fields are compatible with each other and with how many tasks you want to allow to run on the same VM at the same time. For example, if you specify the `n2-standard-2` machine type, which has 8 GiB each, you are recommended to set `memoryMib` to no more than `8192`, or you are recommended to run two tasks on the same VM if you set `memoryMib` to `4096` or less.
  final String? memoryMib;

  /// Creates a new [ComputeResource].
  /// [bootDiskMib] Extra boot disk size in MiB for each task.
  /// [cpuMilli] The milliCPU count. `cpuMilli` defines the amount of CPU resources per task in milliCPU units. For example, `1000` corresponds to 1 vCPU per task. If undefined, the default value is `2000`. If you also define the VM's machine type using the `machineType` in [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy) field or inside the `instanceTemplate` in the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure the CPU resources for both fields are compatible with each other and with how many tasks you want to allow to run on the same VM at the same time. For example, if you specify the `n2-standard-2` machine type, which has 2 vCPUs each, you are recommended to set `cpuMilli` no more than `2000`, or you are recommended to run two tasks on the same VM if you set `cpuMilli` to `1000` or less.
  /// [memoryMib] Memory in MiB. `memoryMib` defines the amount of memory per task in MiB units. If undefined, the default value is `2000`. If you also define the VM's machine type using the `machineType` in [InstancePolicy](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicy) field or inside the `instanceTemplate` in the [InstancePolicyOrTemplate](https://cloud.google.com/batch/docs/reference/rest/v1/projects.locations.jobs#instancepolicyortemplate) field, make sure the memory resources for both fields are compatible with each other and with how many tasks you want to allow to run on the same VM at the same time. For example, if you specify the `n2-standard-2` machine type, which has 8 GiB each, you are recommended to set `memoryMib` to no more than `8192`, or you are recommended to run two tasks on the same VM if you set `memoryMib` to `4096` or less.
  ComputeResource({
    this.bootDiskMib,
    this.cpuMilli,
    this.memoryMib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bootDiskMibValue = bootDiskMib;
    if (bootDiskMibValue != null) {
      map['bootDiskMib'] = bootDiskMibValue;
    }
    final cpuMilliValue = cpuMilli;
    if (cpuMilliValue != null) {
      map['cpuMilli'] = cpuMilliValue;
    }
    final memoryMibValue = memoryMib;
    if (memoryMibValue != null) {
      map['memoryMib'] = memoryMibValue;
    }
    return map;
  }

  factory ComputeResource.fromMap(Map<String, dynamic> map) {
    return ComputeResource(
      bootDiskMib:
          map['bootDiskMib'] == null ? null : map['bootDiskMib'] as String,
      cpuMilli: map['cpuMilli'] == null ? null : map['cpuMilli'] as String,
      memoryMib: map['memoryMib'] == null ? null : map['memoryMib'] as String,
    );
  }
}
