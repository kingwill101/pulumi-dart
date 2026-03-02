// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_network_function_arm_template_application_response.dart';

/// Azure virtual network function template.
class AzureCoreNetworkFunctionTemplateResponse {
  /// Network function applications.
  final pulumi.Input<List<AzureCoreNetworkFunctionArmTemplateApplicationResponse>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNetworkFunctionTemplateResponse].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureCoreNetworkFunctionTemplateResponse({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureCoreNetworkFunctionArmTemplateApplicationResponse>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureCoreNetworkFunctionArmTemplateApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureCoreNetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionTemplateResponse(
      networkFunctionApplications: map['networkFunctionApplications'] == null ? null : (pulumi.Input.decodeList<AzureCoreNetworkFunctionArmTemplateApplicationResponse>(map['networkFunctionApplications'], (value) => AzureCoreNetworkFunctionArmTemplateApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

