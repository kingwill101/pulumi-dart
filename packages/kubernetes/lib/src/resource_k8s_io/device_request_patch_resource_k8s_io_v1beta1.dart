// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_requirements_patch_resource_k8s_io_v1beta1.dart';
import 'device_selector_patch_resource_k8s_io_v1beta1.dart';
import 'device_sub_request_patch_resource_k8s_io_v1beta1.dart';
import 'device_toleration_patch_resource_k8s_io_v1beta1.dart';

/// DeviceRequest is a request for devices required for a claim. This is typically a request for a single resource like a device, but can also ask for several identical devices.
class DeviceRequestPatchResourceK8sIoV1beta1 {
  /// AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  ///
  /// This field can only be set when deviceClassName is set and no subrequests are specified in the firstAvailable list.
  ///
  /// This is an alpha field and requires enabling the DRAAdminAccess feature gate. Admin access is disabled if this field is unset or set to false, otherwise it is enabled.
  final bool? adminAccess;
  /// AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  ///
  /// - ExactCount: This request is for a specific number of devices.
  /// This is the default. The exact number is provided in the
  /// count field.
  ///
  /// - All: This request is for all of the matching devices in a pool.
  /// At least one device must exist on the node for the allocation to succeed.
  /// Allocation will fail if some devices are already allocated,
  /// unless adminAccess is requested.
  ///
  /// If AllocationMode is not specified, the default mode is ExactCount. If the mode is ExactCount and count is not specified, the default count is one. Any other requests must specify this field.
  ///
  /// This field can only be set when deviceClassName is set and no subrequests are specified in the firstAvailable list.
  ///
  /// More modes may get added in the future. Clients must refuse to handle requests with unknown modes.
  final String? allocationMode;
  /// Capacity define resource requirements against each capacity.
  ///
  /// If this field is unset and the device supports multiple allocations, the default value will be applied to each capacity according to requestPolicy. For the capacity that has no requestPolicy, default is the full capacity value.
  ///
  /// Applies to each device allocation. If Count > 1, the request fails if there aren't enough devices that meet the requirements. If AllocationMode is set to All, the request fails if there are devices that otherwise match the request, and have this capacity, with a value >= the requested amount, but which cannot be allocated to this request.
  final CapacityRequirementsPatchResourceK8sIoV1beta1? capacity;
  /// Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  ///
  /// This field can only be set when deviceClassName is set and no subrequests are specified in the firstAvailable list.
  final int? count;
  /// DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  ///
  /// A class is required if no subrequests are specified in the firstAvailable list and no class can be set if subrequests are specified in the firstAvailable list. Which classes are available depends on the cluster.
  ///
  /// Administrators may use this to restrict which devices may get requested by only installing classes with selectors for permitted devices. If users are free to request anything without restrictions, then administrators can create an empty DeviceClass for users to reference.
  final String? deviceClassName;
  /// FirstAvailable contains subrequests, of which exactly one will be satisfied by the scheduler to satisfy this request. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one cannot be used.
  ///
  /// This field may only be set in the entries of DeviceClaim.Requests.
  ///
  /// DRA does not yet implement scoring, so the scheduler will select the first set of devices that satisfies all the requests in the claim. And if the requirements can be satisfied on more than one node, other scheduling features will determine which node is chosen. This means that the set of devices allocated to a claim might not be the optimal set available to the cluster. Scoring will be implemented later.
  final List<DeviceSubRequestPatchResourceK8sIoV1beta1>? firstAvailable;
  /// Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  ///
  /// Must be a DNS label and unique among all DeviceRequests in a ResourceClaim.
  final String? name;
  /// Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  ///
  /// This field can only be set when deviceClassName is set and no subrequests are specified in the firstAvailable list.
  final List<DeviceSelectorPatchResourceK8sIoV1beta1>? selectors;
  /// If specified, the request's tolerations.
  ///
  /// Tolerations for NoSchedule are required to allocate a device which has a taint with that effect. The same applies to NoExecute.
  ///
  /// In addition, should any of the allocated devices get tainted with NoExecute after allocation and that effect is not tolerated, then all pods consuming the ResourceClaim get deleted to evict them. The scheduler will not let new pods reserve the claim while it has these tainted devices. Once all pods are evicted, the claim will get deallocated.
  ///
  /// The maximum number of tolerations is 16.
  ///
  /// This field can only be set when deviceClassName is set and no subrequests are specified in the firstAvailable list.
  ///
  /// This is an alpha field and requires enabling the DRADeviceTaints feature gate.
  final List<DeviceTolerationPatchResourceK8sIoV1beta1>? tolerations;

  /// Creates a new [DeviceRequestPatchResourceK8sIoV1beta1].
  /// [adminAccess] AdminAccess indicates that this is a claim for administrative access to the device(s). Claims with AdminAccess are expected to be used for monitoring or other management services for a device.  They ignore all ordinary claims to the device with respect to access modes and any resource allocations.
  /// [allocationMode] AllocationMode and its related fields define how devices are allocated to satisfy this request. Supported values are:
  /// [capacity] Capacity define resource requirements against each capacity.
  /// [count] Count is used only when the count mode is "ExactCount". Must be greater than zero. If AllocationMode is ExactCount and this field is not specified, the default is one.
  /// [deviceClassName] DeviceClassName references a specific DeviceClass, which can define additional configuration and selectors to be inherited by this request.
  /// [firstAvailable] FirstAvailable contains subrequests, of which exactly one will be satisfied by the scheduler to satisfy this request. It tries to satisfy them in the order in which they are listed here. So if there are two entries in the list, the scheduler will only check the second one if it determines that the first one cannot be used.
  /// [name] Name can be used to reference this request in a pod.spec.containers[].resources.claims entry and in a constraint of the claim.
  /// [selectors] Selectors define criteria which must be satisfied by a specific device in order for that device to be considered for this request. All selectors must be satisfied for a device to be considered.
  /// [tolerations] If specified, the request's tolerations.
  DeviceRequestPatchResourceK8sIoV1beta1({
    this.adminAccess,
    this.allocationMode,
    this.capacity,
    this.count,
    this.deviceClassName,
    this.firstAvailable,
    this.name,
    this.selectors,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccess': ?adminAccess,
      'allocationMode': ?allocationMode,
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'count': ?count,
      'deviceClassName': ?deviceClassName,
      'firstAvailable': ?firstAvailable == null ? null : pulumi.Input.encodeList<DeviceSubRequestPatchResourceK8sIoV1beta1, Map<String, dynamic>>(firstAvailable!, (value) => value.toMap()),
      'name': ?name,
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<DeviceSelectorPatchResourceK8sIoV1beta1, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
      'tolerations': ?tolerations == null ? null : pulumi.Input.encodeList<DeviceTolerationPatchResourceK8sIoV1beta1, Map<String, dynamic>>(tolerations!, (value) => value.toMap()),
    };
  }

  factory DeviceRequestPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceRequestPatchResourceK8sIoV1beta1(
      adminAccess: map['adminAccess'] == null ? null : map['adminAccess'] as bool,
      allocationMode: map['allocationMode'] == null ? null : map['allocationMode'] as String,
      capacity: map['capacity'] == null ? null : CapacityRequirementsPatchResourceK8sIoV1beta1.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as int,
      deviceClassName: map['deviceClassName'] == null ? null : map['deviceClassName'] as String,
      firstAvailable: map['firstAvailable'] == null ? null : pulumi.Input.decodeList<DeviceSubRequestPatchResourceK8sIoV1beta1>(map['firstAvailable'], (value) => DeviceSubRequestPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<DeviceSelectorPatchResourceK8sIoV1beta1>(map['selectors'], (value) => DeviceSelectorPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      tolerations: map['tolerations'] == null ? null : pulumi.Input.decodeList<DeviceTolerationPatchResourceK8sIoV1beta1>(map['tolerations'], (value) => DeviceTolerationPatchResourceK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

