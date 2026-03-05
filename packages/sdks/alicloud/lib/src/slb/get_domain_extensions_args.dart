// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_domain_extensions_get_domain_extensions_args_doc}
/// Arguments for getDomainExtensions.
/// {@endtemplate}
/// {@macro pulumi_slb_get_domain_extensions_get_domain_extensions_args_doc}
class GetDomainExtensionsArgs {
  /// The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  final pulumi.Input<int> frontendPort;
  /// IDs of the SLB domain extensions.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the SLB instance.
  final pulumi.Input<String> loadBalancerId;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDomainExtensionsArgs].
  /// [frontendPort] The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  /// [ids] IDs of the SLB domain extensions.
  /// [loadBalancerId] The ID of the SLB instance.
  /// [outputFile] Optional.
  GetDomainExtensionsArgs({
    required this.frontendPort,
    this.ids,
    required this.loadBalancerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendPort': frontendPort,
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetDomainExtensionsArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainExtensionsArgs(
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

