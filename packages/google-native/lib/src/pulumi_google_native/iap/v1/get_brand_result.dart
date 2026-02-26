// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBrand.
class GetBrandResult {
  /// Application name displayed on OAuth consent screen.
  final String applicationTitle;

  /// Identifier of the brand. NOTE: GCP project number achieves the same brand identification purpose as only one brand per project can be created.
  final String name;

  /// Whether the brand is only intended for usage inside the G Suite organization only.
  final bool orgInternalOnly;

  /// Support email displayed on the OAuth consent screen.
  final String supportEmail;

  GetBrandResult({
    required this.applicationTitle,
    required this.name,
    required this.orgInternalOnly,
    required this.supportEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationTitle'] = applicationTitle;
    map['name'] = name;
    map['orgInternalOnly'] = orgInternalOnly;
    map['supportEmail'] = supportEmail;
    return map;
  }

  factory GetBrandResult.fromMap(Map<String, dynamic> map) {
    return GetBrandResult(
      applicationTitle: map['applicationTitle'] as String,
      name: map['name'] as String,
      orgInternalOnly: map['orgInternalOnly'] as bool,
      supportEmail: map['supportEmail'] as String,
    );
  }
}
