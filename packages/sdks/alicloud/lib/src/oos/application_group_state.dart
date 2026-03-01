// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationGroup resources.
class ApplicationGroupState {
  /// The name of the Application group.
  final pulumi.Input<String>? applicationGroupName;
  /// The name of the Application.
  final pulumi.Input<String>? applicationName;
  /// The region ID of the deployment.
  final pulumi.Input<String>? deployRegionId;
  /// Application group description information.
  final pulumi.Input<String>? description;
  /// The tag key must be passed in at the same time as the tag value (import_tag_value) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is app-{ApplicationName} (application name).
  final pulumi.Input<String>? importTagKey;
  /// The tag value must be passed in at the same time as the tag key (import_tag_key) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is application group name.
  /// .
  final pulumi.Input<String>? importTagValue;

  /// Creates a new [ApplicationGroupState].
  /// [applicationGroupName] The name of the Application group.
  /// [applicationName] The name of the Application.
  /// [deployRegionId] The region ID of the deployment.
  /// [description] Application group description information.
  /// [importTagKey] The tag key must be passed in at the same time as the tag value (import_tag_value) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is app-{ApplicationName} (application name).
  /// [importTagValue] The tag value must be passed in at the same time as the tag key (import_tag_key) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is application group name.
  ApplicationGroupState({
    pulumi.Output<String>? applicationGroupName,
    pulumi.Output<String>? applicationName,
    pulumi.Output<String>? deployRegionId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? importTagKey,
    pulumi.Output<String>? importTagValue,
  }) :
      applicationGroupName = pulumi.Input.asOptionalInput<String>(applicationGroupName),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      deployRegionId = pulumi.Input.asOptionalInput<String>(deployRegionId),
      description = pulumi.Input.asOptionalInput<String>(description),
      importTagKey = pulumi.Input.asOptionalInput<String>(importTagKey),
      importTagValue = pulumi.Input.asOptionalInput<String>(importTagValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': ?applicationGroupName,
      'applicationName': ?applicationName,
      'deployRegionId': ?deployRegionId,
      'description': ?description,
      'importTagKey': ?importTagKey,
      'importTagValue': ?importTagValue,
    };
  }

  factory ApplicationGroupState.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupState(
      applicationGroupName: map['applicationGroupName'] == null ? null : pulumi.Output.create<String>(map['applicationGroupName'] as String),
      applicationName: map['applicationName'] == null ? null : pulumi.Output.create<String>(map['applicationName'] as String),
      deployRegionId: map['deployRegionId'] == null ? null : pulumi.Output.create<String>(map['deployRegionId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      importTagKey: map['importTagKey'] == null ? null : pulumi.Output.create<String>(map['importTagKey'] as String),
      importTagValue: map['importTagValue'] == null ? null : pulumi.Output.create<String>(map['importTagValue'] as String),
    );
  }
}

