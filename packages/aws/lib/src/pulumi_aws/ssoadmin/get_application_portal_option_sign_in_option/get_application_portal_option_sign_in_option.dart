// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationPortalOptionSignInOption {
  final String applicationUrl;
  final String origin;

  GetApplicationPortalOptionSignInOption({
    required this.applicationUrl,
    required this.origin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationUrl'] = applicationUrl;
    map['origin'] = origin;
    return map;
  }

  factory GetApplicationPortalOptionSignInOption.fromMap(
      Map<String, dynamic> map) {
    return GetApplicationPortalOptionSignInOption(
      applicationUrl: map['applicationUrl'] as String,
      origin: map['origin'] as String,
    );
  }
}
