// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_express_connect_router_region.dart';

/// Input properties used for looking up and filtering RouterExpressConnectRouter resources.
class RouterExpressConnectRouterState {
  /// ASN representing resources.
  final pulumi.Input<int>? alibabaSideAsn;
  /// Represents the creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Represents the description of the leased line gateway.
  final pulumi.Input<String>? description;
  /// Name of the Gateway representing the leased line.
  final pulumi.Input<String>? ecrName;
  /// List of regions representing leased line gateways. See `regions` below.
  final pulumi.Input<List<RouterExpressConnectRouterRegion>>? regions;
  /// The ID of the resource group to which the ECR instance belongs.
  /// - A string consisting of letters, numbers, hyphens (-), and underscores (_), and the string length can be 0 to 64 characters.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouterExpressConnectRouterState].
  /// [alibabaSideAsn] ASN representing resources.
  /// [createTime] Represents the creation time of the resource.
  /// [description] Represents the description of the leased line gateway.
  /// [ecrName] Name of the Gateway representing the leased line.
  /// [regions] List of regions representing leased line gateways. See `regions` below.
  /// [resourceGroupId] The ID of the resource group to which the ECR instance belongs.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  RouterExpressConnectRouterState({
    pulumi.Output<int>? alibabaSideAsn,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ecrName,
    pulumi.Output<List<RouterExpressConnectRouterRegion>>? regions,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      alibabaSideAsn = pulumi.Input.asOptionalInput<int>(alibabaSideAsn),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ecrName = pulumi.Input.asOptionalInput<String>(ecrName),
      regions = pulumi.Input.asOptionalInput<List<RouterExpressConnectRouterRegion>>(regions),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alibabaSideAsn': ?alibabaSideAsn,
      'createTime': ?createTime,
      'description': ?description,
      'ecrName': ?ecrName,
      'regions': ?pulumi.Input.mapOptionalInputValue<List<RouterExpressConnectRouterRegion>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<RouterExpressConnectRouterRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory RouterExpressConnectRouterState.fromMap(Map<String, dynamic> map) {
    return RouterExpressConnectRouterState(
      alibabaSideAsn: map['alibabaSideAsn'] == null ? null : pulumi.Output.create<int>(map['alibabaSideAsn'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ecrName: map['ecrName'] == null ? null : pulumi.Output.create<String>(map['ecrName'] as String),
      regions: map['regions'] == null ? null : pulumi.Output.create<List<RouterExpressConnectRouterRegion>>(pulumi.Input.decodeList<RouterExpressConnectRouterRegion>(map['regions'], (value) => RouterExpressConnectRouterRegion.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

