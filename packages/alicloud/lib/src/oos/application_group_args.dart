// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_application_group_application_group_args_doc}
/// The set of arguments for ApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_oos_application_group_application_group_args_doc}
class ApplicationGroupArgs {
  /// The name of the Application group.
  final pulumi.Input<String> applicationGroupName;
  /// The name of the Application.
  final pulumi.Input<String> applicationName;
  /// The region ID of the deployment.
  final pulumi.Input<String> deployRegionId;
  /// Application group description information.
  final pulumi.Input<String>? description;
  /// The tag key must be passed in at the same time as the tag value (import_tag_value) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is app-{ApplicationName} (application name).
  final pulumi.Input<String>? importTagKey;
  /// The tag value must be passed in at the same time as the tag key (import_tag_key) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is application group name.
  /// .
  final pulumi.Input<String>? importTagValue;

  /// Creates a new [ApplicationGroupArgs].
  /// [applicationGroupName] The name of the Application group.
  /// [applicationName] The name of the Application.
  /// [deployRegionId] The region ID of the deployment.
  /// [description] Application group description information.
  /// [importTagKey] The tag key must be passed in at the same time as the tag value (import_tag_value) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is app-{ApplicationName} (application name).
  /// [importTagValue] The tag value must be passed in at the same time as the tag key (import_tag_key) or none, not just one. If both `import_tag_key` and `import_tag_value` are left empty, the default is application group name.
  ApplicationGroupArgs({
    required String applicationGroupName,
    required String applicationName,
    required String deployRegionId,
    String? description,
    String? importTagKey,
    String? importTagValue,
  }) :
      applicationGroupName = pulumi.Input.asInput<String>(applicationGroupName),
      applicationName = pulumi.Input.asInput<String>(applicationName),
      deployRegionId = pulumi.Input.asInput<String>(deployRegionId),
      description = pulumi.Input.asOptionalInput<String>(description),
      importTagKey = pulumi.Input.asOptionalInput<String>(importTagKey),
      importTagValue = pulumi.Input.asOptionalInput<String>(importTagValue);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'applicationName': applicationName,
      'deployRegionId': deployRegionId,
      'description': ?description,
      'importTagKey': ?importTagKey,
      'importTagValue': ?importTagValue,
    };
  }

  factory ApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupArgs(
      applicationGroupName: map['applicationGroupName'] as String,
      applicationName: map['applicationName'] as String,
      deployRegionId: map['deployRegionId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      importTagKey: map['importTagKey'] == null ? null : map['importTagKey'] as String,
      importTagValue: map['importTagValue'] == null ? null : map['importTagValue'] as String,
    );
  }
}

