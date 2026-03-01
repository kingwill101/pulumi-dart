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
    required pulumi.Output<int> frontendPort,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? outputFile,
  }) :
      frontendPort = pulumi.Input.asInput<int>(frontendPort),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      frontendPort: pulumi.Output.create<int>(map['frontendPort'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

