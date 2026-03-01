// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_transfer_accept_transfer_accept_args_doc}
/// The set of arguments for TransferAccept.
/// {@endtemplate}
/// {@macro pulumi_dns_transfer_accept_transfer_accept_args_doc}
class TransferAcceptArgs {
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack accept returned success.
  final pulumi.Input<bool>? disableStatusCheck;
  /// The transfer key.
  final pulumi.Input<String> key;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone zone transfer accept.
  final pulumi.Input<String>? region;
  /// Map of additional options. Changing this creates a
  /// new transfer accept.
  final pulumi.Input<Map<String, String>>? valueSpecs;
  /// The ID of the zone transfer request.
  final pulumi.Input<String> zoneTransferRequestId;

  /// Creates a new [TransferAcceptArgs].
  /// [disableStatusCheck] Disable wait for zone to reach ACTIVE
  /// [key] The transfer key.
  /// [region] The region in which to obtain the V2 DNS client.
  /// [valueSpecs] Map of additional options. Changing this creates a
  /// [zoneTransferRequestId] The ID of the zone transfer request.
  TransferAcceptArgs({
    bool? disableStatusCheck,
    required String key,
    String? region,
    Map<String, String>? valueSpecs,
    required String zoneTransferRequestId,
  }) :
      disableStatusCheck = pulumi.Input.asOptionalInput<bool>(disableStatusCheck),
      key = pulumi.Input.asInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs),
      zoneTransferRequestId = pulumi.Input.asInput<String>(zoneTransferRequestId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStatusCheck': ?disableStatusCheck,
      'key': key,
      'region': ?region,
      'valueSpecs': ?valueSpecs,
      'zoneTransferRequestId': zoneTransferRequestId,
    };
  }

  factory TransferAcceptArgs.fromMap(Map<String, dynamic> map) {
    return TransferAcceptArgs(
      disableStatusCheck: map['disableStatusCheck'] == null ? null : map['disableStatusCheck'] as bool,
      key: map['key'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      valueSpecs: map['valueSpecs'] == null ? null : (map['valueSpecs'] as Map).cast<String, String>(),
      zoneTransferRequestId: map['zoneTransferRequestId'] as String,
    );
  }
}

