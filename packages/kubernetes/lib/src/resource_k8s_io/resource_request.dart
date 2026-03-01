// ignore_for_file: unused_element, unnecessary_cast

import 'named_resources_request.dart';

/// ResourceRequest is a request for resources from one particular driver.
class ResourceRequest {
  /// NamedResources describes a request for resources with the named resources model.
  final NamedResourcesRequest? namedResources;
  /// VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  final dynamic vendorParameters;

  /// Creates a new [ResourceRequest].
  /// [namedResources] NamedResources describes a request for resources with the named resources model.
  /// [vendorParameters] VendorParameters are arbitrary setup parameters for the requested resource. They are ignored while allocating a claim.
  ResourceRequest({
    this.namedResources,
    this.vendorParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namedResources': ?namedResources == null ? null : namedResources!.toMap(),
      'vendorParameters': ?vendorParameters,
    };
  }

  factory ResourceRequest.fromMap(Map<String, dynamic> map) {
    return ResourceRequest(
      namedResources: map['namedResources'] == null ? null : NamedResourcesRequest.fromMap((map['namedResources'] as Map).cast<String, dynamic>()),
      vendorParameters: map['vendorParameters'] == null ? null : map['vendorParameters'],
    );
  }
}

