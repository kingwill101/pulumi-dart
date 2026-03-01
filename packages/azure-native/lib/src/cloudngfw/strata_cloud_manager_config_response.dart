// ignore_for_file: unused_element, unnecessary_cast


/// This field is only present if Strata Cloud Manager is managing the policy for this firewall
class StrataCloudManagerConfigResponse {
  /// Strata Cloud Manager name which is intended to manage the policy for this firewall.
  final String cloudManagerName;

  /// Creates a new [StrataCloudManagerConfigResponse].
  /// [cloudManagerName] Strata Cloud Manager name which is intended to manage the policy for this firewall.
  StrataCloudManagerConfigResponse({
    required this.cloudManagerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudManagerName': cloudManagerName,
    };
  }

  factory StrataCloudManagerConfigResponse.fromMap(Map<String, dynamic> map) {
    return StrataCloudManagerConfigResponse(
      cloudManagerName: map['cloudManagerName'] as String,
    );
  }
}

