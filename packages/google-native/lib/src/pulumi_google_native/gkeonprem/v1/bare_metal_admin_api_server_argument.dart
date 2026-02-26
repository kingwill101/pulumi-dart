// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminApiServerArgument represents an arg name->value pair. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
class BareMetalAdminApiServerArgument {
  /// The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  final String argument;

  /// The value of the arg as it will be passed to the API Server command line.
  final String value;

  BareMetalAdminApiServerArgument({
    required this.argument,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['argument'] = argument;
    map['value'] = value;
    return map;
  }

  factory BareMetalAdminApiServerArgument.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminApiServerArgument(
      argument: map['argument'] as String,
      value: map['value'] as String,
    );
  }
}
