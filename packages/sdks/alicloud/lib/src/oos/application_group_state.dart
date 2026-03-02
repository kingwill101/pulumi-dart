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
    this.applicationGroupName,
    this.applicationName,
    this.deployRegionId,
    this.description,
    this.importTagKey,
    this.importTagValue,
  });

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
      applicationGroupName: map['applicationGroupName'] == null ? null : (map['applicationGroupName'] as String).input(),
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      deployRegionId: map['deployRegionId'] == null ? null : (map['deployRegionId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      importTagKey: map['importTagKey'] == null ? null : (map['importTagKey'] as String).input(),
      importTagValue: map['importTagValue'] == null ? null : (map['importTagValue'] as String).input(),
    );
  }
}

