// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_guard_operation_detail.dart';

class ResourceGuardProxyBase {
  final String? description;
  final String? lastUpdatedTime;
  final List<ResourceGuardOperationDetail>? resourceGuardOperationDetails;
  final String resourceGuardResourceId;

  /// Creates a new [ResourceGuardProxyBase].
  /// [description] Optional.
  /// [lastUpdatedTime] Optional.
  /// [resourceGuardOperationDetails] Optional.
  /// [resourceGuardResourceId] Required.
  ResourceGuardProxyBase({
    this.description,
    this.lastUpdatedTime,
    this.resourceGuardOperationDetails,
    required this.resourceGuardResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'lastUpdatedTime': ?lastUpdatedTime,
      'resourceGuardOperationDetails': ?resourceGuardOperationDetails == null ? null : pulumi.Input.encodeList<ResourceGuardOperationDetail, Map<String, dynamic>>(resourceGuardOperationDetails!, (value) => value.toMap()),
      'resourceGuardResourceId': resourceGuardResourceId,
    };
  }

  factory ResourceGuardProxyBase.fromMap(Map<String, dynamic> map) {
    return ResourceGuardProxyBase(
      description: map['description'] == null ? null : map['description'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : map['lastUpdatedTime'] as String,
      resourceGuardOperationDetails: map['resourceGuardOperationDetails'] == null ? null : pulumi.Input.decodeList<ResourceGuardOperationDetail>(map['resourceGuardOperationDetails'], (value) => ResourceGuardOperationDetail.fromMap((value as Map).cast<String, dynamic>())),
      resourceGuardResourceId: map['resourceGuardResourceId'] as String,
    );
  }
}

