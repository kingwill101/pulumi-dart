// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_operation_detail_response.dart';

/// ResourceGuardProxyBase object, used in ResourceGuardProxyBaseResource
class ResourceGuardProxyBaseResponse {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? lastUpdatedTime;
  final pulumi.Input<List<ResourceGuardOperationDetailResponse>>? resourceGuardOperationDetails;
  final pulumi.Input<String>? resourceGuardResourceId;

  /// Creates a new [ResourceGuardProxyBaseResponse].
  /// [description] Optional.
  /// [lastUpdatedTime] Optional.
  /// [resourceGuardOperationDetails] Optional.
  /// [resourceGuardResourceId] Optional.
  const ResourceGuardProxyBaseResponse({
    this.description,
    this.lastUpdatedTime,
    this.resourceGuardOperationDetails,
    this.resourceGuardResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'lastUpdatedTime': ?lastUpdatedTime,
      'resourceGuardOperationDetails': ?pulumi.Input.mapOptionalInputValue<List<ResourceGuardOperationDetailResponse>, List<Map<String, dynamic>>>(resourceGuardOperationDetails, (value) => pulumi.Input.encodeList<ResourceGuardOperationDetailResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGuardResourceId': ?resourceGuardResourceId,
    };
  }

  factory ResourceGuardProxyBaseResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyBaseResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuardOperationDetails: (() { final guardedValue = map['resourceGuardOperationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceGuardOperationDetailResponse>(guardedValue, (value) => ResourceGuardOperationDetailResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGuardResourceId: (() { final guardedValue = map['resourceGuardResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
