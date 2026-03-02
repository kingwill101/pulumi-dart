// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operator_nexus_network_function_arm_template_application.dart';

/// Azure Operator Distributed Services network function template.
class AzureOperatorNexusNetworkFunctionTemplate {
  /// Network function applications.
  final pulumi.Input<List<AzureOperatorNexusNetworkFunctionArmTemplateApplication>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureOperatorNexus'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureOperatorNexusNetworkFunctionTemplate].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureOperatorNexusNetworkFunctionTemplate({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureOperatorNexusNetworkFunctionArmTemplateApplication>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureOperatorNexusNetworkFunctionArmTemplateApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureOperatorNexusNetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusNetworkFunctionTemplate(
      networkFunctionApplications: map['networkFunctionApplications'] == null ? null : (pulumi.Input.decodeList<AzureOperatorNexusNetworkFunctionArmTemplateApplication>(map['networkFunctionApplications']!, (value) => AzureOperatorNexusNetworkFunctionArmTemplateApplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

