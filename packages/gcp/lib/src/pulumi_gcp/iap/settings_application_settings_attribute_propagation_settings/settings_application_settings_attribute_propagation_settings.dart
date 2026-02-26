// ignore_for_file: unused_element, unnecessary_cast

class SettingsApplicationSettingsAttributePropagationSettings {
  /// Whether the provided attribute propagation settings should be evaluated on user requests.
  /// If set to true, attributes returned from the expression will be propagated in the set output credentials.
  final bool? enable;

  /// Raw string CEL expression. Must return a list of attributes. A maximum of 45 attributes can
  /// be selected. Expressions can select different attribute types from attributes:
  /// attributes.saml_attributes, attributes.iap_attributes.
  final String? expression;

  /// Which output credentials attributes selected by the CEL expression should be propagated in.
  /// All attributes will be fully duplicated in each selected output credential.
  /// Possible values are:
  /// * `HEADER`: Propagate attributes in the headers with "x-goog-iap-attr-" prefix.
  /// * `JWT`: Propagate attributes in the JWT of the form:
  /// <span pulumi-lang-nodejs=""additionalClaims"" pulumi-lang-dotnet=""AdditionalClaims"" pulumi-lang-go=""additionalClaims"" pulumi-lang-python=""additional_claims"" pulumi-lang-yaml=""additionalClaims"" pulumi-lang-java=""additionalClaims"">"additional_claims"</span>: { <span pulumi-lang-nodejs=""myAttribute"" pulumi-lang-dotnet=""MyAttribute"" pulumi-lang-go=""myAttribute"" pulumi-lang-python=""my_attribute"" pulumi-lang-yaml=""myAttribute"" pulumi-lang-java=""myAttribute"">"my_attribute"</span>: ["value1", "value2"] }
  /// * `RCTOKEN`: Propagate attributes in the RCToken of the form: "<span pulumi-lang-nodejs="
  /// additionalClaims"" pulumi-lang-dotnet="
  /// AdditionalClaims"" pulumi-lang-go="
  /// additionalClaims"" pulumi-lang-python="
  /// additional_claims"" pulumi-lang-yaml="
  /// additionalClaims"" pulumi-lang-java="
  /// additionalClaims"">
  /// additional_claims"</span>: { <span pulumi-lang-nodejs=""myAttribute"" pulumi-lang-dotnet=""MyAttribute"" pulumi-lang-go=""myAttribute"" pulumi-lang-python=""my_attribute"" pulumi-lang-yaml=""myAttribute"" pulumi-lang-java=""myAttribute"">"my_attribute"</span>: ["value1", "value2"] }
  /// Each value may be one of: `HEADER`, `JWT`, `RCTOKEN`.
  final List<String>? outputCredentials;

  SettingsApplicationSettingsAttributePropagationSettings({
    this.enable,
    this.expression,
    this.outputCredentials,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final expressionValue = expression;
    if (expressionValue != null) {
      map['expression'] = expressionValue;
    }
    final outputCredentialsValue = outputCredentials;
    if (outputCredentialsValue != null) {
      map['outputCredentials'] = outputCredentialsValue;
    }
    return map;
  }

  factory SettingsApplicationSettingsAttributePropagationSettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsApplicationSettingsAttributePropagationSettings(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      expression:
          map['expression'] == null ? null : map['expression'] as String,
      outputCredentials: map['outputCredentials'] == null
          ? null
          : (map['outputCredentials'] as List).cast<String>(),
    );
  }
}
