// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateServiceAccount {
  /// The service account e-mail address. If not given, the
  /// default Google Compute Engine service account is used.
  final String email;

  /// A list of service scopes. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  final List<String> scopes;

  GetRegionInstanceTemplateServiceAccount({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory GetRegionInstanceTemplateServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceTemplateServiceAccount(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
