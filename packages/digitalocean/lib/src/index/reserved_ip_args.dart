// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_reserved_ip_reserved_ip_args_doc}
/// The set of arguments for ReservedIp.
/// {@endtemplate}
/// {@macro pulumi_index_reserved_ip_reserved_ip_args_doc}
class ReservedIpArgs {
  /// The ID of Droplet that the reserved IP will be assigned to.
  final pulumi.Input<int>? dropletId;
  /// The IP Address of the resource
  final pulumi.Input<String>? ipAddress;
  /// The region that the reserved IP is reserved to.
  final pulumi.Input<String> region;

  /// Creates a new [ReservedIpArgs].
  /// [dropletId] The ID of Droplet that the reserved IP will be assigned to.
  /// [ipAddress] The IP Address of the resource
  /// [region] The region that the reserved IP is reserved to.
  ReservedIpArgs({
    int? dropletId,
    String? ipAddress,
    required String region,
  }) :
      dropletId = pulumi.Input.asOptionalInput<int>(dropletId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletId': ?dropletId,
      'ipAddress': ?ipAddress,
      'region': region,
    };
  }

  factory ReservedIpArgs.fromMap(Map<String, dynamic> map) {
    return ReservedIpArgs(
      dropletId: map['dropletId'] == null ? null : map['dropletId'] as int,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      region: map['region'] as String,
    );
  }
}

