// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_get_dedicated_hosts_get_dedicated_hosts_args_doc}
/// Arguments for getDedicatedHosts.
/// {@endtemplate}
/// {@macro pulumi_cddc_get_dedicated_hosts_get_dedicated_hosts_args_doc}
class GetDedicatedHostsArgs {
  /// Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  final pulumi.Input<String>? allocationStatus;

  /// The ID of the dedicated cluster.
  final pulumi.Input<String> dedicatedHostGroupId;

  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;

  /// The storage type of the host. Valid values: `dhg_local_ssd` or `dhg_cloud_ssd`. `dhg_local_ssd`: specifies that the host uses local SSDs. `dhg_cloud_ssd`: specifies that the host uses enhanced SSDs (ESSDs).
  final pulumi.Input<String>? hostType;

  /// A list of Dedicated Host IDs.
  final pulumi.Input<List<String>>? ids;

  /// The ID of the order.
  final pulumi.Input<String>? orderId;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The state of the host. Valid values:
  /// * `0:` The host is being created.
  final pulumi.Input<String>? status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetDedicatedHostsArgs].
  /// [allocationStatus] Specifies whether instances can be created on the host. Valid values: `Allocatable` or `Suspended`. `Allocatable`: Instances can be created on the host. `Suspended`: Instances cannot be created on the host.
  /// [dedicatedHostGroupId] The ID of the dedicated cluster.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [hostType] The storage type of the host. Valid values: `dhg_local_ssd` or `dhg_cloud_ssd`. `dhg_local_ssd`: specifies that the host uses local SSDs. `dhg_cloud_ssd`: specifies that the host uses enhanced SSDs (ESSDs).
  /// [ids] A list of Dedicated Host IDs.
  /// [orderId] The ID of the order.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The state of the host. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The ID of the zone.
  GetDedicatedHostsArgs({
    this.allocationStatus,
    required this.dedicatedHostGroupId,
    this.enableDetails,
    this.hostType,
    this.ids,
    this.orderId,
    this.outputFile,
    this.status,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': ?allocationStatus,
      'dedicatedHostGroupId': dedicatedHostGroupId,
      'enableDetails': ?enableDetails,
      'hostType': ?hostType,
      'ids': ?ids,
      'orderId': ?orderId,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetDedicatedHostsArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsArgs(
      allocationStatus: (() {
        final guardedValue = map['allocationStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dedicatedHostGroupId: pulumi.Input.fromValue(
        map['dedicatedHostGroupId'] as String,
      ),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostType: (() {
        final guardedValue = map['hostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      orderId: (() {
        final guardedValue = map['orderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
