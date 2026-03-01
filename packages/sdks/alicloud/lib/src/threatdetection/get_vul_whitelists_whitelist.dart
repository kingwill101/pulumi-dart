// ignore_for_file: unused_element, unnecessary_cast


class GetVulWhitelistsWhitelist {
  /// The ID of the Vul Whitelist.
  final String id;
  /// Reason for adding whitelist.
  final String reason;
  /// Set the effective range of the whitelist.
  final String targetInfo;
  /// The ID of the Vul Whitelist.
  final String vulWhitelistId;
  /// Information about the vulnerability to be added to the whitelist.
  final String whitelist;

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
      id: map['id'] as String,
      reason: map['reason'] as String,
      targetInfo: map['targetInfo'] as String,
      vulWhitelistId: map['vulWhitelistId'] as String,
      whitelist: map['whitelist'] as String,
    );
  }
}

