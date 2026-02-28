// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_parameters_by_path_get_parameters_by_path_args_doc}
/// Arguments for getParametersByPath.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_parameters_by_path_get_parameters_by_path_args_doc}
class GetParametersByPathArgs {
  /// The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy is the parameter name except the last part of the parameter. The last part of the parameter name can't be in the path. A parameter name hierarchy can have a maximum of 15 levels. **Note:** If the parameter name (e.g., `/my-app/my-param`) is specified, the data source will not retrieve any value as designed, unless there are other parameters that happen to use the former path in their hierarchy (e.g., `/my-app/my-param/my-actual-param`).
  final pulumi.Input<String> path;

  /// Whether to retrieve all parameters within the hirerachy. Defaults to `false`.
  final pulumi.Input<bool>? recursive;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to retrieve all parameters in the hierarchy, particularly those of `SecureString` type, with their value decrypted. Defaults to `true`.
  final pulumi.Input<bool>? withDecryption;

  /// Creates a new [GetParametersByPathArgs].
  /// [path] The hierarchy for the parameter. Hierarchies start with a forward slash (/). The hierarchy is the parameter name except the last part of the parameter. The last part of the parameter name can't be in the path. A parameter name hierarchy can have a maximum of 15 levels. **Note:** If the parameter name (e.g., `/my-app/my-param`) is specified, the data source will not retrieve any value as designed, unless there are other parameters that happen to use the former path in their hierarchy (e.g., `/my-app/my-param/my-actual-param`).
  /// [recursive] Whether to retrieve all parameters within the hirerachy. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [withDecryption] Whether to retrieve all parameters in the hierarchy, particularly those of `SecureString` type, with their value decrypted. Defaults to `true`.
  GetParametersByPathArgs({
    required String path,
    bool? recursive,
    String? region,
    bool? withDecryption,
  })  : path = pulumi.Input.asInput<String>(path),
        recursive = pulumi.Input.asOptionalInput<bool>(recursive),
        region = pulumi.Input.asOptionalInput<String>(region),
        withDecryption = pulumi.Input.asOptionalInput<bool>(withDecryption);

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
      path: map['path'] as String,
      recursive: map['recursive'] == null ? null : map['recursive'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      withDecryption:
          map['withDecryption'] == null ? null : map['withDecryption'] as bool,
    );
  }
}
