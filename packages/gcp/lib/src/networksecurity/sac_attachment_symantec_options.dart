// ignore_for_file: unused_element, unnecessary_cast

class SacAttachmentSymantecOptions {
  /// Name to be used when creating a location on the customer's behalf in Symantec's Location API. Not to be confused with Google Cloud locations.
  final String? symantecLocationName;

  /// Symantec data center identifier that this attachment will connect to.
  final String? symantecSite;

  /// Creates a new [SacAttachmentSymantecOptions].
  /// [symantecLocationName] Name to be used when creating a location on the customer's behalf in Symantec's Location API. Not to be confused with Google Cloud locations.
  /// [symantecSite] Symantec data center identifier that this attachment will connect to.
  SacAttachmentSymantecOptions({
    this.symantecLocationName,
    this.symantecSite,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final symantecLocationNameValue = symantecLocationName;
    if (symantecLocationNameValue != null) {
      map['symantecLocationName'] = symantecLocationNameValue;
    }
    final symantecSiteValue = symantecSite;
    if (symantecSiteValue != null) {
      map['symantecSite'] = symantecSiteValue;
    }
    return map;
  }

  factory SacAttachmentSymantecOptions.fromMap(Map<String, dynamic> map) {
    return SacAttachmentSymantecOptions(
      symantecLocationName: map['symantecLocationName'] == null
          ? null
          : map['symantecLocationName'] as String,
      symantecSite:
          map['symantecSite'] == null ? null : map['symantecSite'] as String,
    );
  }
}
