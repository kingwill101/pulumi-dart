// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_primary_ip_get_primary_ip_args_doc}
/// Arguments for getPrimaryIp.
/// {@endtemplate}
/// {@macro pulumi_index_get_primary_ip_get_primary_ip_args_doc}
class GetPrimaryIpArgs {
  /// (int) ID of the assigned resource.
  final pulumi.Input<int>? assigneeId;
  /// ID of the Primary IP.
  final pulumi.Input<int>? id;
  /// IP address of the Primary IP.
  final pulumi.Input<String>? ipAddress;
  /// Name of the Primary IP.
  final pulumi.Input<String>? name;
  /// [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetPrimaryIpArgs].
  /// [assigneeId] (int) ID of the assigned resource.
  /// [id] ID of the Primary IP.
  /// [ipAddress] IP address of the Primary IP.
  /// [name] Name of the Primary IP.
  /// [withSelector] [Label selector](https://docs.hetzner.cloud/reference/cloud#label-selector)
  GetPrimaryIpArgs({
    int? assigneeId,
    int? id,
    String? ipAddress,
    String? name,
    String? withSelector,
  }) :
      assigneeId = pulumi.Input.asOptionalInput<int>(assigneeId),
      id = pulumi.Input.asOptionalInput<int>(id),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': ?assigneeId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpArgs.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpArgs(
      assigneeId: map['assigneeId'] == null ? null : map['assigneeId'] as int,
      id: map['id'] == null ? null : map['id'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

