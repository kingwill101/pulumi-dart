// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterControlPlaneApiServerArg {
  /// The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  final String argument;

  /// The value of the arg as it will be passed to the API Server command line.
  final String value;

  /// Creates a new [BareMetalAdminClusterControlPlaneApiServerArg].
  /// [argument] The argument name as it appears on the API Server command line please make sure to remove the leading dashes.
  /// [value] The value of the arg as it will be passed to the API Server command line.
  BareMetalAdminClusterControlPlaneApiServerArg({
    required this.argument,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['argument'] = argument;
    map['value'] = value;
    return map;
  }

  factory BareMetalAdminClusterControlPlaneApiServerArg.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterControlPlaneApiServerArg(
      argument: map['argument'] as String,
      value: map['value'] as String,
    );
  }
}
