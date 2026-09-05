// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_services_delegated_service.dart';

/// Result data returned by getDelegatedServices.
class GetDelegatedServicesResult {
  final String? accountId;
  /// Services for which the account is a delegated administrator, which have the following attributes:
  final List<GetDelegatedServicesDelegatedService>? delegatedServices;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetDelegatedServicesResult].
  /// [accountId] Optional.
  /// [delegatedServices] Services for which the account is a delegated administrator, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetDelegatedServicesResult({
    this.accountId,
    this.delegatedServices,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'delegatedServices': ?(() { final guardedValue = delegatedServices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDelegatedServicesDelegatedService, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
    };
  }

  factory GetDelegatedServicesResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedServicesResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      delegatedServices: (() { final guardedValue = map['delegatedServices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDelegatedServicesDelegatedService>(guardedValue, (value) => GetDelegatedServicesDelegatedService.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
