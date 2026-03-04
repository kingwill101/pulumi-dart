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
    required this.path,
    this.recursive,
    this.region,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'recursive': ?recursive,
      'region': ?region,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetParametersByPathArgs.fromMap(Map<String, dynamic> map) {
    return GetParametersByPathArgs(
      path: pulumi.Input.fromValue(map['path'] as String),
      recursive: (() {
        final guardedValue = map['recursive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      withDecryption: (() {
        final guardedValue = map['withDecryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
