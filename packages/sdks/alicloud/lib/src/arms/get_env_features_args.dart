// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_env_features_get_env_features_args_doc}
/// Arguments for getEnvFeatures.
/// {@endtemplate}
/// {@macro pulumi_arms_get_env_features_get_env_features_args_doc}
class GetEnvFeaturesArgs {
  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;
  /// A list of ARMS Env Feature IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by ARMS Env Feature name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnvFeaturesArgs].
  /// [environmentId] The ID of the environment instance.
  /// [ids] A list of ARMS Env Feature IDs.
  /// [nameRegex] A regex string to filter results by ARMS Env Feature name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnvFeaturesArgs({
    required this.environmentId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvFeaturesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvFeaturesArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

