// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure virtual network function template.
class AzureCoreNetworkFunctionTemplateResponse {
  /// Network function applications.
  final pulumi.Input<List<dynamic>?>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNetworkFunctionTemplateResponse].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  const AzureCoreNetworkFunctionTemplateResponse({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?networkFunctionApplications,
      'nfviType': nfviType,
    };
  }

  factory AzureCoreNetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionTemplateResponse(
      networkFunctionApplications: (() { final guardedValue = map['networkFunctionApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}
