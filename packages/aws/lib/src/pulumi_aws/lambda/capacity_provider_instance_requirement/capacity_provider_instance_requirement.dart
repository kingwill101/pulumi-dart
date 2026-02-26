// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderInstanceRequirement {
  /// List of allowed instance types (e.g., `["m5.xlarge"]`).
  final List<String> allowedInstanceTypes;

  /// List of CPU architectures. Valid values are `[<span pulumi-lang-nodejs=""x8664"" pulumi-lang-dotnet=""X8664"" pulumi-lang-go=""x8664"" pulumi-lang-python=""x86_64"" pulumi-lang-yaml=""x8664"" pulumi-lang-java=""x8664"">"x86_64"</span>]` and `["arm64"]`.
  final List<String> architectures;

  /// List of excluded instance types. You can specify only one of <span pulumi-lang-nodejs="`allowedInstanceTypes`" pulumi-lang-dotnet="`AllowedInstanceTypes`" pulumi-lang-go="`allowedInstanceTypes`" pulumi-lang-python="`allowed_instance_types`" pulumi-lang-yaml="`allowedInstanceTypes`" pulumi-lang-java="`allowedInstanceTypes`">`allowed_instance_types`</span> or <span pulumi-lang-nodejs="`excludedInstanceTypes`" pulumi-lang-dotnet="`ExcludedInstanceTypes`" pulumi-lang-go="`excludedInstanceTypes`" pulumi-lang-python="`excluded_instance_types`" pulumi-lang-yaml="`excludedInstanceTypes`" pulumi-lang-java="`excludedInstanceTypes`">`excluded_instance_types`</span>.
  final List<String> excludedInstanceTypes;

  CapacityProviderInstanceRequirement({
    required this.allowedInstanceTypes,
    required this.architectures,
    required this.excludedInstanceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedInstanceTypes'] = allowedInstanceTypes;
    map['architectures'] = architectures;
    map['excludedInstanceTypes'] = excludedInstanceTypes;
    return map;
  }

  factory CapacityProviderInstanceRequirement.fromMap(
      Map<String, dynamic> map) {
    return CapacityProviderInstanceRequirement(
      allowedInstanceTypes:
          (map['allowedInstanceTypes'] as List).cast<String>(),
      architectures: (map['architectures'] as List).cast<String>(),
      excludedInstanceTypes:
          (map['excludedInstanceTypes'] as List).cast<String>(),
    );
  }
}
