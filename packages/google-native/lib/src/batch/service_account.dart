// ignore_for_file: unused_element, unnecessary_cast

/// Carries information about a Google Cloud service account.
class ServiceAccount {
  /// Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  final String? email;

  /// List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  final List<String>? scopes;

  /// Creates a new [ServiceAccount].
  /// [email] Email address of the service account. If not specified, the default Compute Engine service account for the project will be used. If instance template is being used, the service account has to be specified in the instance template and it has to match the email field here.
  /// [scopes] List of scopes to be enabled for this service account on the VM, in addition to the cloud-platform API scope that will be added by default.
  ServiceAccount({this.email, this.scopes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': ?email, 'scopes': ?scopes};
  }

  factory ServiceAccount.fromMap(Map<String, dynamic> map) {
    return ServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes: map['scopes'] == null
          ? null
          : (map['scopes'] as List).cast<String>(),
    );
  }
}
