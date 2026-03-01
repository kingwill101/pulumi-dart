// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_request_policy_range_patch_resource_k8s_io_v1beta2.dart';

/// CapacityRequestPolicy defines how requests consume device capacity.
///
/// Must not set more than one ValidRequestValues.
class CapacityRequestPolicyPatchResourceK8sIoV1beta2 {
  /// Default specifies how much of this capacity is consumed by a request that does not contain an entry for it in DeviceRequest's Capacity.
  final String? default_;
  /// ValidRange defines an acceptable quantity value range in consuming requests.
  ///
  /// If this field is set, Default must be defined and it must fall within the defined ValidRange.
  ///
  /// If the requested amount does not fall within the defined range, the request violates the policy, and this device cannot be allocated.
  ///
  /// If the request doesn't contain this capacity entry, Default value is used.
  final CapacityRequestPolicyRangePatchResourceK8sIoV1beta2? validRange;
  /// ValidValues defines a set of acceptable quantity values in consuming requests.
  ///
  /// Must not contain more than 10 entries. Must be sorted in ascending order.
  ///
  /// If this field is set, Default must be defined and it must be included in ValidValues list.
  ///
  /// If the requested amount does not match any valid value but smaller than some valid values, the scheduler calculates the smallest valid value that is greater than or equal to the request. That is: min(ceil(requestedValue) ∈ validValues), where requestedValue ≤ max(validValues).
  ///
  /// If the requested amount exceeds all valid values, the request violates the policy, and this device cannot be allocated.
  final List<String>? validValues;

  /// Creates a new [CapacityRequestPolicyPatchResourceK8sIoV1beta2].
  /// [default_] Default specifies how much of this capacity is consumed by a request that does not contain an entry for it in DeviceRequest's Capacity.
  /// [validRange] ValidRange defines an acceptable quantity value range in consuming requests.
  /// [validValues] ValidValues defines a set of acceptable quantity values in consuming requests.
  CapacityRequestPolicyPatchResourceK8sIoV1beta2({
    this.default_,
    this.validRange,
    this.validValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'validRange': ?validRange == null ? null : validRange!.toMap(),
      'validValues': ?validValues,
    };
  }

  factory CapacityRequestPolicyPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return CapacityRequestPolicyPatchResourceK8sIoV1beta2(
      default_: map['default'] == null ? null : map['default'] as String,
      validRange: map['validRange'] == null ? null : CapacityRequestPolicyRangePatchResourceK8sIoV1beta2.fromMap((map['validRange'] as Map).cast<String, dynamic>()),
      validValues: map['validValues'] == null ? null : (map['validValues'] as List).cast<String>(),
    );
  }
}

