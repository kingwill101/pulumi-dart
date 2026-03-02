// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomActionTypeSettings {
  /// The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system.
  final pulumi.Input<String>? entityUrlTemplate;
  /// The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system.
  final pulumi.Input<String>? executionUrlTemplate;
  /// The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.
  final pulumi.Input<String>? revisionUrlTemplate;
  /// The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service.
  final pulumi.Input<String>? thirdPartyConfigurationUrl;

  /// Creates a new [CustomActionTypeSettings].
  /// [entityUrlTemplate] The URL returned to the AWS CodePipeline console that provides a deep link to the resources of the external system.
  /// [executionUrlTemplate] The URL returned to the AWS CodePipeline console that contains a link to the top-level landing page for the external system.
  /// [revisionUrlTemplate] The URL returned to the AWS CodePipeline console that contains a link to the page where customers can update or change the configuration of the external action.
  /// [thirdPartyConfigurationUrl] The URL of a sign-up page where users can sign up for an external service and perform initial configuration of the action provided by that service.
  CustomActionTypeSettings({
    this.entityUrlTemplate,
    this.executionUrlTemplate,
    this.revisionUrlTemplate,
    this.thirdPartyConfigurationUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityUrlTemplate': ?entityUrlTemplate,
      'executionUrlTemplate': ?executionUrlTemplate,
      'revisionUrlTemplate': ?revisionUrlTemplate,
      'thirdPartyConfigurationUrl': ?thirdPartyConfigurationUrl,
    };
  }

  factory CustomActionTypeSettings.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeSettings(
      entityUrlTemplate: map['entityUrlTemplate'] == null ? null : (map['entityUrlTemplate'] as String).input(),
      executionUrlTemplate: map['executionUrlTemplate'] == null ? null : (map['executionUrlTemplate'] as String).input(),
      revisionUrlTemplate: map['revisionUrlTemplate'] == null ? null : (map['revisionUrlTemplate'] as String).input(),
      thirdPartyConfigurationUrl: map['thirdPartyConfigurationUrl'] == null ? null : (map['thirdPartyConfigurationUrl'] as String).input(),
    );
  }
}

