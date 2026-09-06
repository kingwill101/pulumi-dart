// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure virtual network function template.
class AzureCoreNetworkFunctionTemplate {
  /// Network function applications.
  final pulumi.Input<List<dynamic>?>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureCore'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureCoreNetworkFunctionTemplate].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  const AzureCoreNetworkFunctionTemplate({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?networkFunctionApplications,
      'nfviType': nfviType,
    };
  }

  factory AzureCoreNetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return AzureCoreNetworkFunctionTemplate(
      networkFunctionApplications: (() { final guardedValue = map['networkFunctionApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}
