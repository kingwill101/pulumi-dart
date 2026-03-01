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
    required pulumi.Output<String> definition,
    pulumi.Output<String>? region,
    required pulumi.Output<String> workspaceId,
  }) :
      definition = pulumi.Input.asInput<String>(definition),
      region = pulumi.Input.asOptionalInput<String>(region),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'region': ?region,
      'workspaceId': workspaceId,
    };
  }

  factory AlertManagerDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return AlertManagerDefinitionArgs(
      definition: pulumi.Output.create<String>(map['definition'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

