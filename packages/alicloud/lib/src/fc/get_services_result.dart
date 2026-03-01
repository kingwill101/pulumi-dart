// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_services_service.dart';

/// Result data returned by getServices.
class GetServicesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of FC services ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of FC services names.
  final List<String> names;
  final String? outputFile;
  /// A list of FC services. Each element contains the following attributes:
  final List<GetServicesService> services;

  /// Creates a new [GetServicesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of FC services ids.
  /// [nameRegex] Optional.
  /// [names] A list of FC services names.
  /// [outputFile] Optional.
  /// [services] A list of FC services. Each element contains the following attributes:
  GetServicesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'services': pulumi.Input.encodeList<GetServicesService, Map<String, dynamic>>(services, (value) => value.toMap()),
    };
  }

  factory GetServicesResult.fromMap(Map<String, dynamic> map) {
    return GetServicesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      services: pulumi.Input.decodeList<GetServicesService>(map['services'], (value) => GetServicesService.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

