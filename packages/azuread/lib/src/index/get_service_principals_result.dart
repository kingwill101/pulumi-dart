// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_principals_service_principal.dart';

/// Result data returned by getServicePrincipals.
class GetServicePrincipalsResult {
  /// The client ID of the application associated with this service principal.
  final List<String> clientIds;
  /// A list of display names of the applications associated with the service principals.
  final List<String> displayNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? ignoreMissing;
  /// The object IDs of the service principals.
  final List<String> objectIds;
  final bool? returnAll;
  /// A list of service principals. Each `service_principal` object provides the attributes documented below.
  final List<GetServicePrincipalsServicePrincipal> servicePrincipals;

  /// Creates a new [GetServicePrincipalsResult].
  /// [clientIds] The client ID of the application associated with this service principal.
  /// [displayNames] A list of display names of the applications associated with the service principals.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreMissing] Optional.
  /// [objectIds] The object IDs of the service principals.
  /// [returnAll] Optional.
  /// [servicePrincipals] A list of service principals. Each `service_principal` object provides the attributes documented below.
  GetServicePrincipalsResult({
    required this.clientIds,
    required this.displayNames,
    required this.id,
    this.ignoreMissing,
    required this.objectIds,
    this.returnAll,
    required this.servicePrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': clientIds,
      'displayNames': displayNames,
      'id': id,
      'ignoreMissing': ?ignoreMissing,
      'objectIds': objectIds,
      'returnAll': ?returnAll,
      'servicePrincipals': pulumi.Input.encodeList<GetServicePrincipalsServicePrincipal, Map<String, dynamic>>(servicePrincipals, (value) => value.toMap()),
    };
  }

  factory GetServicePrincipalsResult.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalsResult(
      clientIds: (map['clientIds'] as List).cast<String>(),
      displayNames: (map['displayNames'] as List).cast<String>(),
      id: map['id'] as String,
      ignoreMissing: map['ignoreMissing'] == null ? null : map['ignoreMissing'] as bool,
      objectIds: (map['objectIds'] as List).cast<String>(),
      returnAll: map['returnAll'] == null ? null : map['returnAll'] as bool,
      servicePrincipals: pulumi.Input.decodeList<GetServicePrincipalsServicePrincipal>(map['servicePrincipals'], (value) => GetServicePrincipalsServicePrincipal.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

