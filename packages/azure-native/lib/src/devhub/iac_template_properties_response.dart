// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_details_response.dart';

/// Properties of a IacTemplate.
class IacTemplatePropertiesResponse {
  /// the sample instance name of the template
  final String? instanceName;
  /// the source stage of the template
  final String? instanceStage;
  /// Determines the authorization status of requests.
  final String? quickStartTemplateType;
  /// the source store of the template
  final String? sourceResourceId;
  final List<IacTemplateDetailsResponse>? templateDetails;
  /// Template Name
  final String? templateName;

  /// Creates a new [IacTemplatePropertiesResponse].
  /// [instanceName] the sample instance name of the template
  /// [instanceStage] the source stage of the template
  /// [quickStartTemplateType] Determines the authorization status of requests.
  /// [sourceResourceId] the source store of the template
  /// [templateDetails] Optional.
  /// [templateName] Template Name
  IacTemplatePropertiesResponse({
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
      'templateDetails': ?templateDetails == null ? null : pulumi.Input.encodeList<IacTemplateDetailsResponse, Map<String, dynamic>>(templateDetails!, (value) => value.toMap()),
      'templateName': ?templateName,
    };
  }

  factory IacTemplatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IacTemplatePropertiesResponse(
      instanceName: map['instanceName'] == null ? null : map['instanceName'] as String,
      instanceStage: map['instanceStage'] == null ? null : map['instanceStage'] as String,
      quickStartTemplateType: map['quickStartTemplateType'] == null ? null : map['quickStartTemplateType'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      templateDetails: map['templateDetails'] == null ? null : pulumi.Input.decodeList<IacTemplateDetailsResponse>(map['templateDetails'], (value) => IacTemplateDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      templateName: map['templateName'] == null ? null : map['templateName'] as String,
    );
  }
}

