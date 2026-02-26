// ignore_for_file: unused_element, unnecessary_cast

class InstanceServiceAccount {
  /// The service account e-mail address.
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final String? email;

  /// A list of service scopes. Both OAuth2 URLs and gcloud
  /// short names are supported. To allow full access to all Cloud APIs, use the
  /// `cloud-platform` scope. See a complete list of scopes [here](https://cloud.google.com/sdk/gcloud/reference/alpha/compute/instances/set-scopes#--scopes).
  /// **Note**: <span pulumi-lang-nodejs="`allowStoppingForUpdate`" pulumi-lang-dotnet="`AllowStoppingForUpdate`" pulumi-lang-go="`allowStoppingForUpdate`" pulumi-lang-python="`allow_stopping_for_update`" pulumi-lang-yaml="`allowStoppingForUpdate`" pulumi-lang-java="`allowStoppingForUpdate`">`allow_stopping_for_update`</span> must be set to true or your instance must have a <span pulumi-lang-nodejs="`desiredStatus`" pulumi-lang-dotnet="`DesiredStatus`" pulumi-lang-go="`desiredStatus`" pulumi-lang-python="`desired_status`" pulumi-lang-yaml="`desiredStatus`" pulumi-lang-java="`desiredStatus`">`desired_status`</span> of `TERMINATED` in order to update this field.
  final List<String> scopes;

  InstanceServiceAccount({
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

  factory InstanceServiceAccount.fromMap(Map<String, dynamic> map) {
    return InstanceServiceAccount(
      email: map['email'] == null ? null : map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
