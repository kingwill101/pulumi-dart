// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iac_template_details.dart';

/// Properties of a IacTemplate.
class IacTemplateProperties {
  /// the sample instance name of the template
  final pulumi.Input<String>? instanceName;
  /// the source stage of the template
  final pulumi.Input<String>? instanceStage;
  /// Determines the authorization status of requests.
  final pulumi.Input<String>? quickStartTemplateType;
  /// the source store of the template
  final pulumi.Input<String>? sourceResourceId;
  final pulumi.Input<List<IacTemplateDetails>>? templateDetails;
  /// Template Name
  final pulumi.Input<String>? templateName;

  /// Creates a new [IacTemplateProperties].
  /// [instanceName] the sample instance name of the template
  /// [instanceStage] the source stage of the template
  /// [quickStartTemplateType] Determines the authorization status of requests.
  /// [sourceResourceId] the source store of the template
  /// [templateDetails] Optional.
  /// [templateName] Template Name
  const IacTemplateProperties({
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
      'templateDetails': ?pulumi.Input.mapOptionalInputValue<List<IacTemplateDetails>, List<Map<String, dynamic>>>(templateDetails, (value) => pulumi.Input.encodeList<IacTemplateDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateName': ?templateName,
    };
  }

  factory IacTemplateProperties.fromMap(Map<String, dynamic> map) {
    return IacTemplateProperties(
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceStage: (() { final guardedValue = map['instanceStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quickStartTemplateType: (() { final guardedValue = map['quickStartTemplateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateDetails: (() { final guardedValue = map['templateDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IacTemplateDetails>(guardedValue, (value) => IacTemplateDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

