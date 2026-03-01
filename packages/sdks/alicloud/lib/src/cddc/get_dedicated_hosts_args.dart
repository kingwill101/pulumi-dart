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
    pulumi.Output<String>? allocationStatus,
    required pulumi.Output<String> dedicatedHostGroupId,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? hostType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? orderId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneId,
  }) :
      allocationStatus = pulumi.Input.asOptionalInput<String>(allocationStatus),
      dedicatedHostGroupId = pulumi.Input.asInput<String>(dedicatedHostGroupId),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      hostType = pulumi.Input.asOptionalInput<String>(hostType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      orderId = pulumi.Input.asOptionalInput<String>(orderId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      allocationStatus: map['allocationStatus'] == null ? null : pulumi.Output.create<String>(map['allocationStatus'] as String),
      dedicatedHostGroupId: pulumi.Output.create<String>(map['dedicatedHostGroupId'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      hostType: map['hostType'] == null ? null : pulumi.Output.create<String>(map['hostType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      orderId: map['orderId'] == null ? null : pulumi.Output.create<String>(map['orderId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

