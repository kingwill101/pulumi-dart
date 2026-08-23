// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_delegated_services_delegated_service.dart';

/// Result data returned by getDelegatedServices.
class GetDelegatedServicesResult {
  final String accountId;
  /// Services for which the account is a delegated administrator, which have the following attributes:
  final List<GetDelegatedServicesDelegatedService> delegatedServices;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetDelegatedServicesResult].
  /// [accountId] Required.
  /// [delegatedServices] Services for which the account is a delegated administrator, which have the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetDelegatedServicesResult({
    required this.accountId,
    required this.delegatedServices,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'delegatedServices': pulumi.Input.encodeList<GetDelegatedServicesDelegatedService, Map<String, dynamic>>(delegatedServices, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetDelegatedServicesResult.fromMap(Map<String, dynamic> map) {
    return GetDelegatedServicesResult(
      accountId: map['accountId'] as String,
      delegatedServices: pulumi.Input.decodeList<GetDelegatedServicesDelegatedService>(map['delegatedServices']!, (value) => GetDelegatedServicesDelegatedService.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}
