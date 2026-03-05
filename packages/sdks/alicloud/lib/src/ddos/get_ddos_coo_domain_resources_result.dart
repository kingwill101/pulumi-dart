// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_coo_domain_resources_resource.dart';

/// Result data returned by getDdosCooDomainResources.
class GetDdosCooDomainResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// A list ID of instance that you want to associate.
  final List<String>? instanceIds;
  final String? outputFile;
  final String? queryDomainPattern;
  /// A list of Ddoscoo Domain Resources. Each element contains the following attributes:
  final List<GetDdosCooDomainResourcesResource> resources;

  /// Creates a new [GetDdosCooDomainResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceIds] A list ID of instance that you want to associate.
  /// [outputFile] Optional.
  /// [queryDomainPattern] Optional.
  /// [resources] A list of Ddoscoo Domain Resources. Each element contains the following attributes:
  GetDdosCooDomainResourcesResult({
    required this.id,
    required this.ids,
    this.instanceIds,
    this.outputFile,
    this.queryDomainPattern,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceIds': ?instanceIds,
      'outputFile': ?outputFile,
      'queryDomainPattern': ?queryDomainPattern,
      'resources': pulumi.Input.encodeList<GetDdosCooDomainResourcesResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory GetDdosCooDomainResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetDdosCooDomainResourcesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceIds: (() { final guardedValue = map['instanceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryDomainPattern: (() { final guardedValue = map['queryDomainPattern']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: pulumi.Input.decodeList<GetDdosCooDomainResourcesResource>(map['resources']!, (value) => GetDdosCooDomainResourcesResource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

