// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_endpoint_profile_status_error_response.dart';

/// Defines the asset endpoint profile status properties.
class AssetEndpointProfileStatusResponse {
  /// Array object to transfer and persist errors that originate from the Edge.
  final pulumi.Input<List<AssetEndpointProfileStatusErrorResponse>> errors;

  /// Creates a new [AssetEndpointProfileStatusResponse].
  /// [errors] Array object to transfer and persist errors that originate from the Edge.
  AssetEndpointProfileStatusResponse({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': pulumi.Input.mapInputValue<List<AssetEndpointProfileStatusErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AssetEndpointProfileStatusErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetEndpointProfileStatusResponse.fromMap(Map<String, dynamic> map) {
    return AssetEndpointProfileStatusResponse(
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<AssetEndpointProfileStatusErrorResponse>(map['errors']!, (value) => AssetEndpointProfileStatusErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

