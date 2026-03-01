// ignore_for_file: unused_element, unnecessary_cast

import 'named_resources_allocation_result.dart';

/// DriverAllocationResult contains vendor parameters and the allocation result for one request.
class DriverAllocationResult {
  /// NamedResources describes the allocation result when using the named resources model.
  final NamedResourcesAllocationResult? namedResources;
  /// VendorRequestParameters are the per-request configuration parameters from the time that the claim was allocated.
  final dynamic vendorRequestParameters;

  /// Creates a new [DriverAllocationResult].
  /// [namedResources] NamedResources describes the allocation result when using the named resources model.
  /// [vendorRequestParameters] VendorRequestParameters are the per-request configuration parameters from the time that the claim was allocated.
  DriverAllocationResult({
    this.namedResources,
    this.vendorRequestParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedResources': ?namedResources == null ? null : namedResources!.toMap(),
      'vendorRequestParameters': ?vendorRequestParameters,
    };
  }

  factory DriverAllocationResult.fromMap(Map<String, dynamic> map) {
    return DriverAllocationResult(
      namedResources: map['namedResources'] == null ? null : NamedResourcesAllocationResult.fromMap((map['namedResources'] as Map).cast<String, dynamic>()),
      vendorRequestParameters: map['vendorRequestParameters'] == null ? null : map['vendorRequestParameters'],
    );
  }
}

