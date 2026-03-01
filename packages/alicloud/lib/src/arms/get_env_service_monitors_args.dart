// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_env_service_monitors_get_env_service_monitors_args_doc}
/// Arguments for getEnvServiceMonitors.
/// {@endtemplate}
/// {@macro pulumi_arms_get_env_service_monitors_get_env_service_monitors_args_doc}
class GetEnvServiceMonitorsArgs {
  /// The environment ID.
  final pulumi.Input<String> environmentId;
  /// A list of ARMS Env Service Monitor IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by ARMS Env Service Monitor name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnvServiceMonitorsArgs].
  /// [environmentId] The environment ID.
  /// [ids] A list of ARMS Env Service Monitor IDs.
  /// [nameRegex] A regex string to filter results by ARMS Env Service Monitor name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnvServiceMonitorsArgs({
    required String environmentId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnvServiceMonitorsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvServiceMonitorsArgs(
      environmentId: map['environmentId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

