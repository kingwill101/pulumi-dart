// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_network_function_arm_template_application.dart';

/// Azure virtual network function template.
class AzureCoreNetworkFunctionTemplate {
  /// Network function applications.
  final pulumi.Input<List<AzureCoreNetworkFunctionArmTemplateApplication>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNetworkFunctionTemplate].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureCoreNetworkFunctionTemplate({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureCoreNetworkFunctionArmTemplateApplication>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureCoreNetworkFunctionArmTemplateApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureCoreNetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionTemplate(
      networkFunctionApplications: map['networkFunctionApplications'] == null ? null : (pulumi.Input.decodeList<AzureCoreNetworkFunctionArmTemplateApplication>(map['networkFunctionApplications'], (value) => AzureCoreNetworkFunctionArmTemplateApplication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

