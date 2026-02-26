// ignore_for_file: unused_element, unnecessary_cast

/// Represents an arg name->value pair. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
class BareMetalApiServerArgument {
  /// The argument name as it appears on the API Server command line, make sure to remove the leading dashes.
  final String argument;

  /// The value of the arg as it will be passed to the API Server command line.
  final String value;

  BareMetalApiServerArgument({
    required this.argument,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['argument'] = argument;
    map['value'] = value;
    return map;
  }

  factory BareMetalApiServerArgument.fromMap(Map<String, dynamic> map) {
    return BareMetalApiServerArgument(
      argument: map['argument'] as String,
      value: map['value'] as String,
    );
  }
}
