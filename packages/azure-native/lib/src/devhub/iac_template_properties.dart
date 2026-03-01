// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_details.dart';

/// Properties of a IacTemplate.
class IacTemplateProperties {
  /// the sample instance name of the template
  final String? instanceName;
  /// the source stage of the template
  final String? instanceStage;
  /// Determines the authorization status of requests.
  final String? quickStartTemplateType;
  /// the source store of the template
  final String? sourceResourceId;
  final List<IacTemplateDetails>? templateDetails;
  /// Template Name
  final String? templateName;

  /// Creates a new [IacTemplateProperties].
  /// [instanceName] the sample instance name of the template
  /// [instanceStage] the source stage of the template
  /// [quickStartTemplateType] Determines the authorization status of requests.
  /// [sourceResourceId] the source store of the template
  /// [templateDetails] Optional.
  /// [templateName] Template Name
  IacTemplateProperties({
    this.instanceName,
    this.instanceStage,
    this.quickStartTemplateType,
    this.sourceResourceId,
    this.templateDetails,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'instanceStage': ?instanceStage,
      'quickStartTemplateType': ?quickStartTemplateType,
      'sourceResourceId': ?sourceResourceId,
      'templateDetails': ?templateDetails == null ? null : pulumi.Input.encodeList<IacTemplateDetails, Map<String, dynamic>>(templateDetails!, (value) => value.toMap()),
      'templateName': ?templateName,
    };
  }

  factory IacTemplateProperties.fromMap(Map<String, dynamic> map) {
    return IacTemplateProperties(
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      instanceStage: map['instanceStage'] == null ? null : map['instanceStage'] as String,
      quickStartTemplateType: map['quickStartTemplateType'] == null ? null : map['quickStartTemplateType'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      templateDetails: map['templateDetails'] == null ? null : pulumi.Input.decodeList<IacTemplateDetails>(map['templateDetails'], (value) => IacTemplateDetails.fromMap((value as Map).cast<String, dynamic>())),
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
    );
  }
}

