// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_get_application_scaling_rules_get_application_scaling_rules_args_doc}
/// Arguments for getApplicationScalingRules.
/// {@endtemplate}
/// {@macro pulumi_sae_get_application_scaling_rules_get_application_scaling_rules_args_doc}
class GetApplicationScalingRulesArgs {
  /// The ID of the Application.
  final pulumi.Input<String> appId;
  /// A list of Application Scaling Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetApplicationScalingRulesArgs].
  /// [appId] The ID of the Application.
  /// [ids] A list of Application Scaling Rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetApplicationScalingRulesArgs({
    required String appId,
    List<String>? ids,
    String? outputFile,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetApplicationScalingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationScalingRulesArgs(
      appId: map['appId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

