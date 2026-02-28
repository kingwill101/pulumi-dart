// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromMachineImageServiceAccount {
  /// The service account e-mail address.
  final String? email;

  /// A list of service scopes.
  final List<String> scopes;

  /// Creates a new [InstanceFromMachineImageServiceAccount].
  /// [email] The service account e-mail address.
  /// [scopes] A list of service scopes.
  InstanceFromMachineImageServiceAccount({
    this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    map['scopes'] = scopes;
    return map;
  }

  factory InstanceFromMachineImageServiceAccount.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromMachineImageServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
