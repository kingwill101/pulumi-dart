// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterControlPlaneApiServerArg {
  /// The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  final String argument;

  /// The value of the arg as it will be passed to the API Server command line.
  final String value;

  /// Creates a new [BareMetalClusterControlPlaneApiServerArg].
  /// [argument] The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  /// [value] The value of the arg as it will be passed to the API Server command line.
  BareMetalClusterControlPlaneApiServerArg({
    required this.argument,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'argument': argument, 'value': value};
  }

  factory BareMetalClusterControlPlaneApiServerArg.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalClusterControlPlaneApiServerArg(
      argument: map['argument'] as String,
      value: map['value'] as String,
    );
  }
}
