// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpSetsSet {
  /// The ID of an acceleration region.
  final pulumi.Input<String> accelerateRegionId;

  /// The bandwidth allocated to the acceleration region.
  final pulumi.Input<int> bandwidth;

  /// The ID of the Ip Set.
  final pulumi.Input<String> id;

  /// The list of accelerated IP addresses in the acceleration region.
  final pulumi.Input<List<String>> ipAddressLists;

  /// Accelerated area ID.
  final pulumi.Input<String> ipSetId;

  /// The IP protocol used by the GA instance.
  final pulumi.Input<String> ipVersion;

  /// The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  final pulumi.Input<String> status;

  /// Creates a new [GetIpSetsSet].
  /// [accelerateRegionId] The ID of an acceleration region.
  /// [bandwidth] The bandwidth allocated to the acceleration region.
  /// [id] The ID of the Ip Set.
  /// [ipAddressLists] The list of accelerated IP addresses in the acceleration region.
  /// [ipSetId] Accelerated area ID.
  /// [ipVersion] The IP protocol used by the GA instance.
  /// [status] The status of the acceleration region. Valid values: `active`, `deleting`, `init`, `updating`.
  GetIpSetsSet({
    required this.accelerateRegionId,
    required this.bandwidth,
    required this.id,
    required this.ipAddressLists,
    required this.ipSetId,
    required this.ipVersion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerateRegionId': accelerateRegionId,
      'bandwidth': bandwidth,
      'id': id,
      'ipAddressLists': ipAddressLists,
      'ipSetId': ipSetId,
      'ipVersion': ipVersion,
      'status': status,
    };
  }

  factory GetIpSetsSet.fromMap(Map<String, dynamic> map) {
    return GetIpSetsSet(
      accelerateRegionId: pulumi.Input.fromValue(
        map['accelerateRegionId'] as String,
      ),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipAddressLists: pulumi.Input.fromValue(
        (map['ipAddressLists'] as List).cast<String>(),
      ),
      ipSetId: pulumi.Input.fromValue(map['ipSetId'] as String),
      ipVersion: pulumi.Input.fromValue(map['ipVersion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
