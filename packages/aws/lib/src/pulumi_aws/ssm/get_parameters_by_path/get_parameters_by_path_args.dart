// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParametersByPath.
class GetParametersByPathArgs {
  /// The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy is the parameter name except the last part of the parameter. The last part of the parameter name can't be in the path. A parameter name hierarchy can have a maximum of 15 levels. **Note:** If the parameter name (e.g., `/my-app/my-param`) is specified, the data source will not retrieve any value as designed, unless there are other parameters that happen to use the former path in their hierarchy (e.g., `/my-app/my-param/my-actual-param`).
  final pulumi.Input<String> path;

  /// Whether to retrieve all parameters within the hirerachy. Defaults to `false`.
  final pulumi.Input<bool>? recursive;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to retrieve all parameters in the hierarchy, particularly those of `SecureString` type, with their value decrypted. Defaults to `true`.
  final pulumi.Input<bool>? withDecryption;

  GetParametersByPathArgs({
    required this.path,
    this.recursive,
    this.region,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    final recursiveValue = recursive;
    if (recursiveValue != null) {
      map['recursive'] = recursiveValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final withDecryptionValue = withDecryption;
    if (withDecryptionValue != null) {
      map['withDecryption'] = withDecryptionValue;
    }
    return map;
  }

  factory GetParametersByPathArgs.fromMap(Map<String, dynamic> map) {
    return GetParametersByPathArgs(
      path: pulumi.Input.asInput<String>(map['path']),
      recursive: pulumi.Input.asOptionalInput<bool>(map['recursive']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      withDecryption: pulumi.Input.asOptionalInput<bool>(map['withDecryption']),
    );
  }
}
