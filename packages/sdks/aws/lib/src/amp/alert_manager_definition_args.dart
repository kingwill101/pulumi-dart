// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amp_alert_manager_definition_alert_manager_definition_args_doc}
/// The set of arguments for AlertManagerDefinition.
/// {@endtemplate}
/// {@macro pulumi_amp_alert_manager_definition_alert_manager_definition_args_doc}
class AlertManagerDefinitionArgs {
  /// the alert manager definition that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-alert-manager.html).
  final pulumi.Input<String> definition;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the prometheus workspace the alert manager definition should be linked to
  final pulumi.Input<String> workspaceId;

  /// Creates a new [AlertManagerDefinitionArgs].
  /// [definition] the alert manager definition that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-alert-manager.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workspaceId] ID of the prometheus workspace the alert manager definition should be linked to
  AlertManagerDefinitionArgs({
    required this.definition,
    this.region,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'region': ?region,
      'workspaceId': workspaceId,
    };
  }

  factory AlertManagerDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return AlertManagerDefinitionArgs(
      definition: (map['definition'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

