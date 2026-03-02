// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVulWhitelistsWhitelist {
  /// The ID of the Vul Whitelist.
  final pulumi.Input<String> id;
  /// Reason for adding whitelist.
  final pulumi.Input<String> reason;
  /// Set the effective range of the whitelist.
  final pulumi.Input<String> targetInfo;
  /// The ID of the Vul Whitelist.
  final pulumi.Input<String> vulWhitelistId;
  /// Information about the vulnerability to be added to the whitelist.
  final pulumi.Input<String> whitelist;

  /// Creates a new [GetVulWhitelistsWhitelist].
  /// [id] The ID of the Vul Whitelist.
  /// [reason] Reason for adding whitelist.
  /// [targetInfo] Set the effective range of the whitelist.
  /// [vulWhitelistId] The ID of the Vul Whitelist.
  /// [whitelist] Information about the vulnerability to be added to the whitelist.
  GetVulWhitelistsWhitelist({
    required this.id,
    required this.reason,
    required this.targetInfo,
    required this.vulWhitelistId,
    required this.whitelist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'reason': reason,
      'targetInfo': targetInfo,
      'vulWhitelistId': vulWhitelistId,
      'whitelist': whitelist,
    };
  }

  factory GetVulWhitelistsWhitelist.fromMap(Map<String, dynamic> map) {
    return GetVulWhitelistsWhitelist(
      id: (map['id'] as String).input(),
      reason: (map['reason'] as String).input(),
      targetInfo: (map['targetInfo'] as String).input(),
      vulWhitelistId: (map['vulWhitelistId'] as String).input(),
      whitelist: (map['whitelist'] as String).input(),
    );
  }
}

