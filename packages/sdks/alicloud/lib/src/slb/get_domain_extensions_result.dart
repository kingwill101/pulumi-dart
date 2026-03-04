// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_extensions_extension.dart';

/// Result data returned by getDomainExtensions.
class GetDomainExtensionsResult {
  /// A list of SLB domain extension. Each element contains the following attributes:
  final List<GetDomainExtensionsExtension> extensions;
  final int frontendPort;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String loadBalancerId;
  final String? outputFile;

  /// Creates a new [GetDomainExtensionsResult].
  /// [extensions] A list of SLB domain extension. Each element contains the following attributes:
  /// [frontendPort] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [loadBalancerId] Required.
  /// [outputFile] Optional.
  GetDomainExtensionsResult({
    required this.extensions,
    required this.frontendPort,
    required this.id,
    required this.ids,
    required this.loadBalancerId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions':
          pulumi.Input.encodeList<
            GetDomainExtensionsExtension,
            Map<String, dynamic>
          >(extensions, (value) => value.toMap()),
      'frontendPort': frontendPort,
      'id': id,
      'ids': ids,
      'loadBalancerId': loadBalancerId,
      'outputFile': ?outputFile,
    };
  }

  factory GetDomainExtensionsResult.fromMap(Map<String, dynamic> map) {
    return GetDomainExtensionsResult(
      extensions: pulumi.Input.decodeList<GetDomainExtensionsExtension>(
        map['extensions']!,
        (value) => GetDomainExtensionsExtension.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      frontendPort: map['frontendPort'] as int,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      loadBalancerId: map['loadBalancerId'] as String,
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
