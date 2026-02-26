// ignore_for_file: unused_element, unnecessary_cast

/// Carries information about a Google Cloud service account.
class ServiceAccountResponse {
  /// Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  final String email;

  /// List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  final List<String> scopes;

  ServiceAccountResponse({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
