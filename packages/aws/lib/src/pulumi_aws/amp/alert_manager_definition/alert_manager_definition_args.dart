// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AlertManagerDefinition.
class AlertManagerDefinitionArgs {
  /// the alert manager definition that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-alert-manager.html).
  final pulumi.Input<String> definition;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the prometheus workspace the alert manager definition should be linked to
  final pulumi.Input<String> workspaceId;

  AlertManagerDefinitionArgs({
    required this.definition,
    this.region,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['definition'] = definition;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory AlertManagerDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return AlertManagerDefinitionArgs(
      definition: pulumi.Input.asInput<String>(map['definition']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
