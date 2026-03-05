// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_operator_nexus_network_function_arm_template_application_response.dart';

/// Azure Operator Distributed Services network function template.
class AzureOperatorNexusNetworkFunctionTemplateResponse {
  /// Network function applications.
  final pulumi.Input<List<AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureOperatorNexus'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureOperatorNexusNetworkFunctionTemplateResponse].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureOperatorNexusNetworkFunctionTemplateResponse({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureOperatorNexusNetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return AzureOperatorNexusNetworkFunctionTemplateResponse(
      networkFunctionApplications: (() { final guardedValue = map['networkFunctionApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse>(guardedValue, (value) => AzureOperatorNexusNetworkFunctionArmTemplateApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}

