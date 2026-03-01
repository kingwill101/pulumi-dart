// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'driver_allocation_result_patch.dart';

/// StructuredResourceHandle is the in-tree representation of the allocation result.
class StructuredResourceHandlePatch {
  /// NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  final String? nodeName;
  /// Results lists all allocated driver resources.
  final List<DriverAllocationResultPatch>? results;
  /// VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  final dynamic vendorClaimParameters;
  /// VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  final dynamic vendorClassParameters;

  /// Creates a new [StructuredResourceHandlePatch].
  /// [nodeName] NodeName is the name of the node providing the necessary resources if the resources are local to a node.
  /// [results] Results lists all allocated driver resources.
  /// [vendorClaimParameters] VendorClaimParameters are the per-claim configuration parameters from the resource claim parameters at the time that the claim was allocated.
  /// [vendorClassParameters] VendorClassParameters are the per-claim configuration parameters from the resource class at the time that the claim was allocated.
  StructuredResourceHandlePatch({
    this.nodeName,
    this.results,
    this.vendorClaimParameters,
    this.vendorClassParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeName': ?nodeName,
      'results': ?results == null ? null : pulumi.Input.encodeList<DriverAllocationResultPatch, Map<String, dynamic>>(results!, (value) => value.toMap()),
      'vendorClaimParameters': ?vendorClaimParameters,
      'vendorClassParameters': ?vendorClassParameters,
    };
  }

  factory StructuredResourceHandlePatch.fromMap(Map<String, dynamic> map) {
    return StructuredResourceHandlePatch(
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      results: map['results'] == null ? null : pulumi.Input.decodeList<DriverAllocationResultPatch>(map['results'], (value) => DriverAllocationResultPatch.fromMap((value as Map).cast<String, dynamic>())),
      vendorClaimParameters: map['vendorClaimParameters'] == null ? null : map['vendorClaimParameters'],
      vendorClassParameters: map['vendorClassParameters'] == null ? null : map['vendorClassParameters'],
    );
  }
}

