// ignore_for_file: unused_element, unnecessary_cast

import 'instance_policy_response.dart';

/// InstancePolicyOrTemplate lets you define the type of resources to use for this job either with an InstancePolicy or an instance template. If undefined, Batch picks the type of VM to use and doesn't include optional VM resources such as GPUs and extra disks.
class InstancePolicyOrTemplateResponse {
  /// Set this field true if users want Batch to help fetch drivers from a third party location and install them for GPUs specified in policy.accelerators or instance_template on their behalf. Default is false. For Container-Optimized Image cases, Batch will install the accelerator driver following milestones of https://cloud.google.com/container-optimized-os/docs/release-notes. For non Container-Optimized Image cases, following https://github.com/GoogleCloudPlatform/compute-gpu-installation/blob/main/linux/install_gpu_driver.py.
  final bool installGpuDrivers;

  /// Name of an instance template used to create VMs. Named the field as 'instance_template' instead of 'template' to avoid c++ keyword conflict.
  final String instanceTemplate;

  /// InstancePolicy.
  final InstancePolicyResponse policy;

  InstancePolicyOrTemplateResponse({
    required this.installGpuDrivers,
    required this.instanceTemplate,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['installGpuDrivers'] = installGpuDrivers;
    map['instanceTemplate'] = instanceTemplate;
    map['policy'] = policy.toMap();
    return map;
  }

  factory InstancePolicyOrTemplateResponse.fromMap(Map<String, dynamic> map) {
    return InstancePolicyOrTemplateResponse(
      installGpuDrivers: map['installGpuDrivers'] as bool,
      instanceTemplate: map['instanceTemplate'] as String,
      policy: InstancePolicyResponse.fromMap(
          (map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
